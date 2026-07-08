import 'package:curriculum_vitae/core/components/utils/constants.dart';
import 'package:curriculum_vitae/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(AppLocalizations.of(context)!.profileTitle),
      titleSpacing: 20,
      actionsPadding: EdgeInsets.only(right: 20),
      backgroundColor: AppColors.darkAppBar,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.light_mode),
          splashRadius: 20,
        ),
      ],
    );
  }
}
