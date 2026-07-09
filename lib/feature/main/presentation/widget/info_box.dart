import 'package:curriculum_vitae/core/utils/constants.dart';
import 'package:curriculum_vitae/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class InfoBox extends StatelessWidget {
  const InfoBox({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final crossStart = CrossAxisAlignment.start;
    final textTheme = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: AppSizes.sym3016,
      child: Column(
        crossAxisAlignment: crossStart,
        spacing: 20,
        children: [
          Row(
            spacing: 10,
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(10),
                child: Image.asset(
                  height: 70,
                  width: 70,
                  AppAddress.profileImage,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: crossStart,
                  children: [
                    Text(localizations.name, style: textTheme),
                    Row(
                      children: [
                        Text(localizations.job, style: textTheme),
                        Spacer(),
                        Icon(Icons.favorite_border_sharp),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on,color: AppColors.textTheme,),
                        Text(localizations.location, style: textTheme),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Text(localizations.summary, style: textTheme),
        ],
      ),
    );
  }
}
