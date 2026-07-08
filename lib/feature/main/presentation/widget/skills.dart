import 'package:curriculum_vitae/core/enums/app_enums.dart';
import 'package:curriculum_vitae/core/utils/constants.dart';
import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  final String title;
  final String imagePath;
  final Color shadow;
  final VoidCallback onTap;
  final bool isSelect;
  final SkillsType type;

  const Skills({
    super.key,
    required this.title,
    required this.imagePath,
    required this.shadow,
    required this.onTap,
    required this.isSelect,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap,
      borderRadius: AppSizes.circle10,
      child: Container(
        decoration: isSelect
            ? BoxDecoration(
                borderRadius: AppSizes.circle10,
                color: AppColors.skillBackground,
              )
            : null,
        height: 110,
        width: 110,
        child: Column(
          spacing: 16,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: isSelect
                  ? BoxDecoration(
                      boxShadow: [BoxShadow(color: shadow, blurRadius: 20)],
                    )
                  : null,
              child: Image.asset(height: 50, width: 50, imagePath),
            ),
            Text(title, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
