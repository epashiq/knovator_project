
import 'package:freezed_annotation/freezed_annotation.dart';

part 'resume_content_model.freezed.dart';
part 'resume_content_model.g.dart';

@freezed
class ResumeContent with _$ResumeContent {
  factory ResumeContent({
    required String title,
    required String content,
  }) = _ResumeContent;

  factory ResumeContent.fromJson(Map<String, Object?> json) =>
      _$ResumeContentFromJson(json);
}