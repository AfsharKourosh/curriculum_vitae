import 'package:curriculum_vitae/core/components/utils/constants.dart';
import 'package:curriculum_vitae/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class SkillsBox extends StatelessWidget {
  const SkillsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSizes.all30,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppLocalizations.of(context)!.skills),
          Wrap(
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.grey),
                height: 110,
                width: 110,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(),
                      child: Image.asset(height: 40, width: 40, AppAddress.ps),
                    ),
                    Text('photoshop'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
