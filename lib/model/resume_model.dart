import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:knovator_project/model/resume_content_model.dart';

part 'resume_model.freezed.dart';
part 'resume_model.g.dart';

@freezed
class ResumeModel with _$ResumeModel {
  factory ResumeModel({
    required List<ResumeContent> content,
    required String name,
  }) = _ResumeModel;

  factory ResumeModel.fromJson(Map<String, Object?> json) =>
      _$ResumeModelFromJson(json);
}
