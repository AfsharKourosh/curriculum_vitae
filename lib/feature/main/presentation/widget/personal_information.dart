import 'package:curriculum_vitae/core/utils/constants.dart';
import 'package:curriculum_vitae/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    final localize = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: AppSizes.sym3016,
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(localize.personalInformation, style: textTheme),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: AppSizes.circle10),
              filled: true,
              fillColor: AppColors.skillBackground,
              hint: Text(localize.email, style: textTheme),
              prefixIcon: Icon(
                Icons.alternate_email,
                color: AppColors.textTheme,
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: AppSizes.circle10),
              filled: true,
              fillColor: AppColors.skillBackground,
              hint: Text(localize.password, style: textTheme),
              prefixIcon: Icon(Icons.lock, color: AppColors.textTheme),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(localize.save, style: textTheme),
          ),
        ],
      ),
    );
  }
}
