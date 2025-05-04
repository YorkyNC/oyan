import 'dart:io';

import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/features/profile/presentation/custrom_filled_button.dart';
import 'package:path_provider/path_provider.dart';

class ChooseAPhotoPage extends StatefulWidget {
  const ChooseAPhotoPage({Key? key}) : super(key: key);

  @override
  State<ChooseAPhotoPage> createState() => _AvatarSelectionScreenState();
}

class _AvatarSelectionScreenState extends State<ChooseAPhotoPage> {
  int selectedAvatarIndex = 0;
  List<String> avatars = List.generate(15, (index) => 'assets/avatars/avatar_${index + 1}.png');

  String? savedImagePath;

  @override
  void initState() {
    super.initState();
    loadSavedAvatar();
  }

  Future<void> loadSavedAvatar() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final savedAvatar = File('${directory.path}/selected_avatar.png');

      if (await savedAvatar.exists()) {
        setState(() {
          savedImagePath = savedAvatar.path;
        });
      }
    } catch (e) {
      debugPrint('Error loading saved avatar: $e');
    }
  }

  Future<void> saveSelectedAvatar() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final selectedAvatarAsset = avatars[selectedAvatarIndex];

      final ByteData data = await rootBundle.load(selectedAvatarAsset);
      final List<int> bytes = data.buffer.asUint8List();

      final File file = File('${directory.path}/selected_avatar.png');
      await file.writeAsBytes(bytes);

      setState(() {
        savedImagePath = file.path;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Avatar saved successfully!')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error saving avatar: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(context.loc.chooseAPhoto),
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: false,
        titleTextStyle: GoogleFonts.openSans(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text(
                'Choose a photo',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 120,
                height: 120,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFF0F2FA),
                ),
                child: savedImagePath != null
                    ? ClipOval(child: Image.file(File(savedImagePath!)))
                    : ClipOval(
                        child: Image.asset(
                          avatars[selectedAvatarIndex],
                          errorBuilder: (context, error, stackTrace) =>
                              const Icon(Icons.person, size: 60, color: Colors.grey),
                        ),
                      ),
              ),
              const SizedBox(height: 30),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: avatars.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedAvatarIndex = index;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: selectedAvatarIndex == index ? Border.all(color: Colors.blue, width: 2) : null,
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            avatars[index],
                            errorBuilder: (context, error, stackTrace) =>
                                const Icon(Icons.person, size: 30, color: Colors.grey),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              CustromFilledButton(
                text: context.loc.save,
                onPressed: () async {
                  await saveSelectedAvatar();
                  if (context.mounted) {
                    context.pop(savedImagePath);
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
