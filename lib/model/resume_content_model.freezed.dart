// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resume_content_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResumeContent _$ResumeContentFromJson(Map<String, dynamic> json) {
  return _ResumeContent.fromJson(json);
}

/// @nodoc
mixin _$ResumeContent {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResumeContentCopyWith<ResumeContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeContentCopyWith<$Res> {
  factory $ResumeContentCopyWith(
          ResumeContent value, $Res Function(ResumeContent) then) =
      _$ResumeContentCopyWithImpl<$Res, ResumeContent>;
  @useResult
  $Res call({String title, String content});
}

/// @nodoc
class _$ResumeContentCopyWithImpl<$Res, $Val extends ResumeContent>
    implements $ResumeContentCopyWith<$Res> {
  _$ResumeContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResumeContentImplCopyWith<$Res>
    implements $ResumeContentCopyWith<$Res> {
  factory _$$ResumeContentImplCopyWith(
          _$ResumeContentImpl value, $Res Function(_$ResumeContentImpl) then) =
      __$$ResumeContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String content});
}

/// @nodoc
class __$$ResumeContentImplCopyWithImpl<$Res>
    extends _$ResumeContentCopyWithImpl<$Res, _$ResumeContentImpl>
    implements _$$ResumeContentImplCopyWith<$Res> {
  __$$ResumeContentImplCopyWithImpl(
      _$ResumeContentImpl _value, $Res Function(_$ResumeContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_$ResumeContentImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResumeContentImpl implements _ResumeContent {
  _$ResumeContentImpl({required this.title, required this.content});

  factory _$ResumeContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResumeContentImplFromJson(json);

  @override
  final String title;
  @override
  final String content;

  @override
  String toString() {
    return 'ResumeContent(title: $title, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResumeContentImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResumeContentImplCopyWith<_$ResumeContentImpl> get copyWith =>
      __$$ResumeContentImplCopyWithImpl<_$ResumeContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResumeContentImplToJson(
      this,
    );
  }
}

abstract class _ResumeContent implements ResumeContent {
  factory _ResumeContent(
      {required final String title,
      required final String content}) = _$ResumeContentImpl;

  factory _ResumeContent.fromJson(Map<String, dynamic> json) =
      _$ResumeContentImpl.fromJson;

  @override
  String get title;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$ResumeContentImplCopyWith<_$ResumeContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
