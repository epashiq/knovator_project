// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resume_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResumeModel _$ResumeModelFromJson(Map<String, dynamic> json) {
  return _ResumeModel.fromJson(json);
}

/// @nodoc
mixin _$ResumeModel {
  List<ResumeContent> get content => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResumeModelCopyWith<ResumeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeModelCopyWith<$Res> {
  factory $ResumeModelCopyWith(
          ResumeModel value, $Res Function(ResumeModel) then) =
      _$ResumeModelCopyWithImpl<$Res, ResumeModel>;
  @useResult
  $Res call({List<ResumeContent> content, String name});
}

/// @nodoc
class _$ResumeModelCopyWithImpl<$Res, $Val extends ResumeModel>
    implements $ResumeModelCopyWith<$Res> {
  _$ResumeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ResumeContent>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResumeModelImplCopyWith<$Res>
    implements $ResumeModelCopyWith<$Res> {
  factory _$$ResumeModelImplCopyWith(
          _$ResumeModelImpl value, $Res Function(_$ResumeModelImpl) then) =
      __$$ResumeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ResumeContent> content, String name});
}

/// @nodoc
class __$$ResumeModelImplCopyWithImpl<$Res>
    extends _$ResumeModelCopyWithImpl<$Res, _$ResumeModelImpl>
    implements _$$ResumeModelImplCopyWith<$Res> {
  __$$ResumeModelImplCopyWithImpl(
      _$ResumeModelImpl _value, $Res Function(_$ResumeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? name = null,
  }) {
    return _then(_$ResumeModelImpl(
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ResumeContent>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResumeModelImpl implements _ResumeModel {
  _$ResumeModelImpl(
      {required final List<ResumeContent> content, required this.name})
      : _content = content;

  factory _$ResumeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResumeModelImplFromJson(json);

  final List<ResumeContent> _content;
  @override
  List<ResumeContent> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  final String name;

  @override
  String toString() {
    return 'ResumeModel(content: $content, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResumeModelImpl &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_content), name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResumeModelImplCopyWith<_$ResumeModelImpl> get copyWith =>
      __$$ResumeModelImplCopyWithImpl<_$ResumeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResumeModelImplToJson(
      this,
    );
  }
}

abstract class _ResumeModel implements ResumeModel {
  factory _ResumeModel(
      {required final List<ResumeContent> content,
      required final String name}) = _$ResumeModelImpl;

  factory _ResumeModel.fromJson(Map<String, dynamic> json) =
      _$ResumeModelImpl.fromJson;

  @override
  List<ResumeContent> get content;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ResumeModelImplCopyWith<_$ResumeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
