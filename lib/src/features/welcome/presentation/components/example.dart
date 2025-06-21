import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:photo_manager/photo_manager.dart';

class MediaAsset {
  final String id;
  final String path;
  final DateTime createdAt;
  final MediaType type;
  final String? albumName;

  MediaAsset({
    required this.id,
    required this.path,
    required this.createdAt,
    required this.type,
    this.albumName,
  });
}

enum MediaType { image, video }

// Repository interface
abstract class MediaRepository {
  Future<List<MediaAsset>> getRecentMedia(int limit);
  Future<Map<String, int>> getAlbums();
  Future<List<MediaAsset>> getMediaFromAlbum(String albumName);
}

class MediaRepositoryImpl implements MediaRepository {
  @override
  Future<List<MediaAsset>> getRecentMedia(int limit) async {
    final permission = await PhotoManager.requestPermissionExtend();
    if (permission != PermissionState.authorized) {
      throw Exception('Permission denied');
    }

    final albums = await PhotoManager.getAssetPathList(
      type: RequestType.image,
    );

    if (albums.isEmpty) return [];

    final recentAlbum = albums.first;
    final assets = await recentAlbum.getAssetListRange(start: 0, end: limit);

    return assets
        .map((asset) => MediaAsset(
              id: asset.id,
              path: asset.id,
              createdAt: asset.createDateTime,
              type: asset.type == AssetType.image ? MediaType.image : MediaType.video,
              albumName: recentAlbum.name,
            ))
        .toList();
  }

  @override
  Future<Map<String, int>> getAlbums() async {
    final permission = await PhotoManager.requestPermissionExtend();
    if (permission != PermissionState.authorized) {
      throw Exception('Permission denied');
    }

    final albums = await PhotoManager.getAssetPathList(
      type: RequestType.image,
    );

    final result = <String, int>{};
    for (final album in albums) {
      result[album.name] = await album.assetCountAsync;
    }

    return result;
  }

  @override
  Future<List<MediaAsset>> getMediaFromAlbum(String albumName) async {
    final permission = await PhotoManager.requestPermissionExtend();
    if (permission != PermissionState.authorized) {
      throw Exception('Permission denied');
    }

    final albums = await PhotoManager.getAssetPathList(
      type: RequestType.image,
    );

    final album = albums.firstWhere(
      (element) => element.name == albumName,
      orElse: () => throw Exception('Album not found'),
    );

    final assets = await album.getAssetListRange(start: 0, end: 100);

    return assets
        .map((asset) => MediaAsset(
              id: asset.id,
              path: asset.id,
              createdAt: asset.createDateTime,
              type: asset.type == AssetType.image ? MediaType.image : MediaType.video,
              albumName: album.name,
            ))
        .toList();
  }
}

// BLoC Events
abstract class MediaPickerEvent {}

class LoadRecentMedia extends MediaPickerEvent {}

class LoadAlbums extends MediaPickerEvent {}

class SelectAlbum extends MediaPickerEvent {
  final String albumName;
  SelectAlbum(this.albumName);
}

// BLoC States
abstract class MediaPickerState {}

class MediaPickerInitial extends MediaPickerState {}

class MediaLoading extends MediaPickerState {}

class RecentMediaLoaded extends MediaPickerState {
  final List<MediaAsset> media;
  RecentMediaLoaded(this.media);
}

class AlbumsLoaded extends MediaPickerState {
  final Map<String, int> albums;
  AlbumsLoaded(this.albums);
}

class AlbumMediaLoaded extends MediaPickerState {
  final String albumName;
  final List<MediaAsset> media;
  AlbumMediaLoaded(this.albumName, this.media);
}

class MediaPickerError extends MediaPickerState {
  final String message;
  MediaPickerError(this.message);
}

// BLoC
class MediaPickerBloc extends Bloc<MediaPickerEvent, MediaPickerState> {
  final MediaRepository _repository;

  MediaPickerBloc(this._repository) : super(MediaPickerInitial()) {
    on<LoadRecentMedia>(_onLoadRecentMedia);
    on<LoadAlbums>(_onLoadAlbums);
    on<SelectAlbum>(_onSelectAlbum);
  }

  Future<void> _onLoadRecentMedia(
    LoadRecentMedia event,
    Emitter<MediaPickerState> emit,
  ) async {
    emit(MediaLoading());
    try {
      final media = await _repository.getRecentMedia(100);
      emit(RecentMediaLoaded(media));
    } catch (e) {
      emit(MediaPickerError(e.toString()));
    }
  }

  Future<void> _onLoadAlbums(
    LoadAlbums event,
    Emitter<MediaPickerState> emit,
  ) async {
    emit(MediaLoading());
    try {
      final albums = await _repository.getAlbums();
      emit(AlbumsLoaded(albums));
    } catch (e) {
      emit(MediaPickerError(e.toString()));
    }
  }

  Future<void> _onSelectAlbum(
    SelectAlbum event,
    Emitter<MediaPickerState> emit,
  ) async {
    emit(MediaLoading());
    try {
      final media = await _repository.getMediaFromAlbum(event.albumName);
      emit(AlbumMediaLoaded(event.albumName, media));
    } catch (e) {
      emit(MediaPickerError(e.toString()));
    }
  }
}

class MediaPickerScreen extends StatelessWidget {
  const MediaPickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MediaPickerBloc>()..add(LoadRecentMedia()),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.pop(context),
          ),
          title: BlocBuilder<MediaPickerBloc, MediaPickerState>(
            buildWhen: (previous, current) => current is RecentMediaLoaded || current is AlbumMediaLoaded,
            builder: (context, state) {
              String title = 'Недавние';
              if (state is AlbumMediaLoaded) {
                title = state.albumName;
              }
              return _buildAlbumDropdown(context, title);
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Handle selected media
              },
              child: const Text('Выбрать', style: TextStyle(color: Colors.green)),
            ),
          ],
        ),
        body: BlocBuilder<MediaPickerBloc, MediaPickerState>(
          builder: (context, state) {
            if (state is MediaLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is RecentMediaLoaded) {
              return _buildMediaGrid(context, state.media);
            } else if (state is AlbumMediaLoaded) {
              return _buildMediaGrid(context, state.media);
            } else if (state is AlbumsLoaded) {
              return _buildAlbumList(context, state.albums);
            } else if (state is MediaPickerError) {
              return Center(child: Text(state.message));
            }
            return const Center(child: Text('Select media'));
          },
        ),
      ),
    );
  }

  Widget _buildAlbumDropdown(BuildContext context, String currentAlbum) {
    return InkWell(
      onTap: () {
        context.read<MediaPickerBloc>().add(LoadAlbums());
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(currentAlbum),
          const Icon(Icons.arrow_drop_down),
        ],
      ),
    );
  }

  Widget _buildMediaGrid(BuildContext context, List<MediaAsset> media) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
      ),
      itemCount: media.length,
      itemBuilder: (context, index) {
        return AssetThumbnail(asset: media[index]);
      },
    );
  }

  Widget _buildAlbumList(BuildContext context, Map<String, int> albums) {
    return ListView.builder(
      itemCount: albums.length,
      itemBuilder: (context, index) {
        final albumName = albums.keys.elementAt(index);
        final count = albums[albumName] ?? 0;

        return ListTile(
          leading: FutureBuilder<List<MediaAsset>>(
            future: getIt<MediaRepository>().getMediaFromAlbum(albumName),
            builder: (context, snapshot) {
              if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                return SizedBox(
                  width: 48,
                  height: 48,
                  child: AssetThumbnail(asset: snapshot.data!.first),
                );
              }
              return Container(
                width: 48,
                height: 48,
                color: Colors.grey,
              );
            },
          ),
          title: Text(albumName),
          trailing: Text('$count'),
          onTap: () {
            context.read<MediaPickerBloc>().add(SelectAlbum(albumName));
          },
        );
      },
    );
  }
}

class AssetThumbnail extends StatelessWidget {
  final MediaAsset asset;

  const AssetThumbnail({super.key, required this.asset});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<AssetEntity?>(
      future: AssetEntity.fromId(asset.id),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done && snapshot.data != null) {
          final assetEntity = snapshot.data!;

          // Then use the assetEntity to get the thumbnail
          return FutureBuilder<Uint8List?>(
            future: assetEntity.thumbnailData,
            builder: (context, thumbnailSnapshot) {
              if (thumbnailSnapshot.connectionState == ConnectionState.done && thumbnailSnapshot.data != null) {
                return Image.memory(
                  thumbnailSnapshot.data!,
                  fit: BoxFit.cover,
                );
              }
              return Container(color: Colors.grey.shade300);
            },
          );
        }
        return Container(color: Colors.grey.shade200);
      },
    );
  }
}

void main() {
  setupDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Picker Demo')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const MediaPickerScreen()),
            );
          },
          child: const Text('Pick Images'),
        ),
      ),
    );
  }
}

// Using get_it for dependency injection
final getIt = GetIt.instance;

void setupDependencies() {
  // Repositories
  getIt.registerLazySingleton<MediaRepository>(
    () => MediaRepositoryImpl(),
  );

  // BLoCs
  getIt.registerFactory<MediaPickerBloc>(
    () => MediaPickerBloc(getIt<MediaRepository>()),
  );
}
