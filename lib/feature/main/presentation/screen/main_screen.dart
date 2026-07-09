import 'package:curriculum_vitae/core/components/custom_app_bar.dart';
import 'package:curriculum_vitae/core/utils/constants.dart';
import 'package:curriculum_vitae/feature/main/presentation/widget/info_box.dart';
import 'package:curriculum_vitae/feature/main/presentation/widget/personal_information.dart';
import 'package:curriculum_vitae/feature/main/presentation/widget/skills_box.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      appBar: CustomAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InfoBox(),
          Divider(),
          SkillsBox(),
          Divider(),
          PersonalInformation(),
        ],
      ),
    );
  }
}
