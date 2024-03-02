
import 'dart:convert';
import 'dart:developer';

import 'package:knovator_project/model/resume_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'resume_provider.g.dart';

@riverpod
class Resume extends _$Resume {
  @override
  List<ResumeModel> build() {
    SharedPreferences.getInstance().then((prefs) {
      final keys = prefs.getKeys();
      final resumeList = <ResumeModel>[];

      for (final key in keys) {
        try {
          resumeList.add(
              ResumeModel.fromJson(jsonDecode(prefs.getString(key)!)));
        } catch (e) {
          log(e.toString());
        }
      }

      state = resumeList;
    });

    return [];
  }

   void addResume(ResumeModel resume) async {
    (await SharedPreferences.getInstance())
        .setString(resume.name, jsonEncode(resume.toJson()));
    state = [...state, resume];
  }

   void editResume(ResumeModel resume, int index) async {
    final sharedPrefs = await SharedPreferences.getInstance();

    sharedPrefs.remove(state[index].name);
    sharedPrefs.setString(resume.name, jsonEncode(resume.toJson()));

    final updatedResumeList = [...state];
    updatedResumeList[index] = resume;

    state = updatedResumeList;
  }
}