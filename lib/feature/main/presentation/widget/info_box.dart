import 'package:curriculum_vitae/core/components/utils/constants.dart';
import 'package:curriculum_vitae/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class InfoBox extends StatelessWidget {
  const InfoBox({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final crossStart = CrossAxisAlignment.start;
    return Padding(
      padding: AppSizes.all30,
      child: Column(
        crossAxisAlignment: crossStart,
        spacing: 10,
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
                    Text(localizations.name),
                    Row(
                      children: [
                        Text(localizations.job),
                        Spacer(),
                        Icon(Icons.favorite_border_sharp),
                      ],
                    ),
                    Row(children: [Icon(Icons.location_on), Text(localizations.location)]),
                  ],
                ),
              ),
            ],
          ),
          Text(localizations.summary),
        ],
      ),
    );
  }
}
