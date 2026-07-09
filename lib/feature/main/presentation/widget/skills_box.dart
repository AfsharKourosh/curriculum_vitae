import 'package:curriculum_vitae/core/enums/app_enums.dart';
import 'package:curriculum_vitae/core/utils/constants.dart';
import 'package:curriculum_vitae/feature/main/presentation/widget/skills.dart';
import 'package:curriculum_vitae/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class SkillsBox extends StatefulWidget {
  const SkillsBox({super.key});

  @override
  State<SkillsBox> createState() => _SkillsBoxState();
}

class _SkillsBoxState extends State<SkillsBox> {
  SkillsType skill = SkillsType.photoshop;

  void updateSkillSelect(SkillsType skillsType) {
    setState(() {
      skill = skillsType;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSizes.sym3016,
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.skills,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              Skills(
                title: 'photoshop',
                imagePath: AppAddress.ps,
                isSelect: skill == SkillsType.photoshop,
                shadow: AppColors.blueShadow,
                onTap: () {
                  updateSkillSelect(SkillsType.photoshop);
                },
                type: SkillsType.photoshop,
              ),
              Skills(
                title: 'Adobe XD',
                imagePath: AppAddress.xd,
                isSelect: skill == SkillsType.xd,
                shadow: AppColors.pinkShadow,
                onTap: () {
                  updateSkillSelect(SkillsType.xd);
                },
                type: SkillsType.xd,
              ),
              Skills(
                title: 'Illustrator',
                imagePath: AppAddress.ai,
                isSelect: skill == SkillsType.illustrator,
                shadow: AppColors.orangeShadow,
                onTap: () {
                  updateSkillSelect(SkillsType.illustrator);
                },
                type: SkillsType.illustrator,
              ),
              Skills(
                title: 'After Effect',
                imagePath: AppAddress.ae,
                isSelect: skill == SkillsType.afterEffect,
                shadow: AppColors.purpleShadow,
                onTap: () {
                  updateSkillSelect(SkillsType.afterEffect);
                },
                type: SkillsType.afterEffect,
              ),
              Skills(
                title: 'Lightroom',
                imagePath: AppAddress.lr,
                isSelect: skill == SkillsType.lightRoom,
                shadow: AppColors.blueShadow,
                onTap: () {
                  updateSkillSelect(SkillsType.lightRoom);
                },
                type: SkillsType.lightRoom,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
