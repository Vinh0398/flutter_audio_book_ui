import 'package:flutter/material.dart';
import 'package:flutter_audio_book_ui/const/colors.dart';
import 'package:flutter_audio_book_ui/const/dimens.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimens.size172,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.transparent,
            AppColors.gradientColor,
          ],
          begin: Alignment.center,
          end: Alignment.bottomCenter,
        ),
      ),
      child: _buildBottomBar(),
    );
  }

  Widget _buildBottomBar() {
    return Padding(
      padding: const EdgeInsets.only(
        top: Dimens.size64,
        bottom: Dimens.size22,
      ),
      child: Container(
        height: Dimens.size80,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.backgroundSplash,
          borderRadius: BorderRadius.circular(100),
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: Dimens.size9,
          vertical: Dimens.size8,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildIconBottomBar(
              const Icon(
                Icons.dashboard_rounded,
                size: Dimens.size25,
                color: AppColors.access,
              ),
            ),
            _buildIconBottomBar(
              const Icon(
                Icons.search_outlined,
                size: Dimens.size25,
                color: AppColors.titleColor,
              ),
            ),
            _buildIconBottomBar(
              const Icon(
                Icons.bookmark_border_rounded,
                size: Dimens.size25,
                color: AppColors.titleColor,
              ),
            ),
            _buildIconBottomBar(
              const Icon(
                Icons.person_outline_rounded,
                size: Dimens.size25,
                color: AppColors.titleColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconBottomBar(Icon bottomIcon) {
    return Padding(
      padding: const EdgeInsets.only(right: Dimens.size14),
      child: SizedBox(
        height: Dimens.size50,
        width: Dimens.size64,
        child: Center(
          child: bottomIcon,
        ),
      ),
    );
  }
}
