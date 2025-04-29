// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_daily_tasks_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetDailyTasks _$GetDailyTasksFromJson(Map<String, dynamic> json) {
  return _GetDailyTasks.fromJson(json);
}

/// @nodoc
mixin _$GetDailyTasks {
  int? get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<DailyTask>? get results => throw _privateConstructorUsedError;

  /// Serializes this GetDailyTasks to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetDailyTasks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetDailyTasksCopyWith<GetDailyTasks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDailyTasksCopyWith<$Res> {
  factory $GetDailyTasksCopyWith(
          GetDailyTasks value, $Res Function(GetDailyTasks) then) =
      _$GetDailyTasksCopyWithImpl<$Res, GetDailyTasks>;
  @useResult
  $Res call(
      {int? count, String? next, String? previous, List<DailyTask>? results});
}

/// @nodoc
class _$GetDailyTasksCopyWithImpl<$Res, $Val extends GetDailyTasks>
    implements $GetDailyTasksCopyWith<$Res> {
  _$GetDailyTasksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetDailyTasks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<DailyTask>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetDailyTasksImplCopyWith<$Res>
    implements $GetDailyTasksCopyWith<$Res> {
  factory _$$GetDailyTasksImplCopyWith(
          _$GetDailyTasksImpl value, $Res Function(_$GetDailyTasksImpl) then) =
      __$$GetDailyTasksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? count, String? next, String? previous, List<DailyTask>? results});
}

/// @nodoc
class __$$GetDailyTasksImplCopyWithImpl<$Res>
    extends _$GetDailyTasksCopyWithImpl<$Res, _$GetDailyTasksImpl>
    implements _$$GetDailyTasksImplCopyWith<$Res> {
  __$$GetDailyTasksImplCopyWithImpl(
      _$GetDailyTasksImpl _value, $Res Function(_$GetDailyTasksImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetDailyTasks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_$GetDailyTasksImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<DailyTask>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetDailyTasksImpl implements _GetDailyTasks {
  const _$GetDailyTasksImpl(
      {this.count, this.next, this.previous, final List<DailyTask>? results})
      : _results = results;

  factory _$GetDailyTasksImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetDailyTasksImplFromJson(json);

  @override
  final int? count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<DailyTask>? _results;
  @override
  List<DailyTask>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetDailyTasks(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDailyTasksImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  /// Create a copy of GetDailyTasks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDailyTasksImplCopyWith<_$GetDailyTasksImpl> get copyWith =>
      __$$GetDailyTasksImplCopyWithImpl<_$GetDailyTasksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetDailyTasksImplToJson(
      this,
    );
  }
}

abstract class _GetDailyTasks implements GetDailyTasks {
  const factory _GetDailyTasks(
      {final int? count,
      final String? next,
      final String? previous,
      final List<DailyTask>? results}) = _$GetDailyTasksImpl;

  factory _GetDailyTasks.fromJson(Map<String, dynamic> json) =
      _$GetDailyTasksImpl.fromJson;

  @override
  int? get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<DailyTask>? get results;

  /// Create a copy of GetDailyTasks
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDailyTasksImplCopyWith<_$GetDailyTasksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DailyTask _$DailyTaskFromJson(Map<String, dynamic> json) {
  return _DailyTask.fromJson(json);
}

/// @nodoc
mixin _$DailyTask {
  int? get id => throw _privateConstructorUsedError;
  String? get task => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'url_text')
  String? get urlText => throw _privateConstructorUsedError;
  bool? get completed => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this DailyTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyTaskCopyWith<DailyTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyTaskCopyWith<$Res> {
  factory $DailyTaskCopyWith(DailyTask value, $Res Function(DailyTask) then) =
      _$DailyTaskCopyWithImpl<$Res, DailyTask>;
  @useResult
  $Res call(
      {int? id,
      String? task,
      int? score,
      String? url,
      @JsonKey(name: 'url_text') String? urlText,
      bool? completed,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class _$DailyTaskCopyWithImpl<$Res, $Val extends DailyTask>
    implements $DailyTaskCopyWith<$Res> {
  _$DailyTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? task = freezed,
    Object? score = freezed,
    Object? url = freezed,
    Object? urlText = freezed,
    Object? completed = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      urlText: freezed == urlText
          ? _value.urlText
          : urlText // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyTaskImplCopyWith<$Res>
    implements $DailyTaskCopyWith<$Res> {
  factory _$$DailyTaskImplCopyWith(
          _$DailyTaskImpl value, $Res Function(_$DailyTaskImpl) then) =
      __$$DailyTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? task,
      int? score,
      String? url,
      @JsonKey(name: 'url_text') String? urlText,
      bool? completed,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class __$$DailyTaskImplCopyWithImpl<$Res>
    extends _$DailyTaskCopyWithImpl<$Res, _$DailyTaskImpl>
    implements _$$DailyTaskImplCopyWith<$Res> {
  __$$DailyTaskImplCopyWithImpl(
      _$DailyTaskImpl _value, $Res Function(_$DailyTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? task = freezed,
    Object? score = freezed,
    Object? url = freezed,
    Object? urlText = freezed,
    Object? completed = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$DailyTaskImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      urlText: freezed == urlText
          ? _value.urlText
          : urlText // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyTaskImpl implements _DailyTask {
  const _$DailyTaskImpl(
      {this.id,
      this.task,
      this.score,
      this.url,
      @JsonKey(name: 'url_text') this.urlText,
      this.completed,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$DailyTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyTaskImplFromJson(json);

  @override
  final int? id;
  @override
  final String? task;
  @override
  final int? score;
  @override
  final String? url;
  @override
  @JsonKey(name: 'url_text')
  final String? urlText;
  @override
  final bool? completed;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'DailyTask(id: $id, task: $task, score: $score, url: $url, urlText: $urlText, completed: $completed, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyTaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.urlText, urlText) || other.urlText == urlText) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, task, score, url, urlText, completed, createdAt);

  /// Create a copy of DailyTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyTaskImplCopyWith<_$DailyTaskImpl> get copyWith =>
      __$$DailyTaskImplCopyWithImpl<_$DailyTaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyTaskImplToJson(
      this,
    );
  }
}

abstract class _DailyTask implements DailyTask {
  const factory _DailyTask(
          {final int? id,
          final String? task,
          final int? score,
          final String? url,
          @JsonKey(name: 'url_text') final String? urlText,
          final bool? completed,
          @JsonKey(name: 'created_at') final DateTime? createdAt}) =
      _$DailyTaskImpl;

  factory _DailyTask.fromJson(Map<String, dynamic> json) =
      _$DailyTaskImpl.fromJson;

  @override
  int? get id;
  @override
  String? get task;
  @override
  int? get score;
  @override
  String? get url;
  @override
  @JsonKey(name: 'url_text')
  String? get urlText;
  @override
  bool? get completed;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;

  /// Create a copy of DailyTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyTaskImplCopyWith<_$DailyTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
