import 'package:final_flutter_project/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class BasicAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final Widget? action;
  final Color? backgroundColor;
  final bool hideBackButton;
  const BasicAppbar({super.key,
   this.title,
    this.action,
     this.backgroundColor, 
     this.hideBackButton = false
     }
     );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: title,
      actions: action != null ? [action!] : null,
      leading: hideBackButton ? null : IconButton(
        onPressed: () => Navigator.pop(context),
              icon: Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  color: AppColors.secondbackground,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                  size: 18,
                ),
              ),
        
      ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  
}
