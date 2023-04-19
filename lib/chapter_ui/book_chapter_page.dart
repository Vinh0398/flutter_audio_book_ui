import 'package:flutter/material.dart';
import 'package:flutter_audio_book_ui/app_bar_ui/app_bar.dart';
import 'package:flutter_audio_book_ui/chapter_ui/widget/book_play_chapter_bar.dart';
import 'package:flutter_audio_book_ui/chapter_ui/widget/show_chapter_widget.dart';
import 'package:flutter_audio_book_ui/const/colors.dart';
import 'package:flutter_audio_book_ui/const/dimens.dart';

class BookChapterPage extends StatefulWidget {
  const BookChapterPage({Key? key}) : super(key: key);

  @override
  State<BookChapterPage> createState() => _BookChapterPageState();
}

class _BookChapterPageState extends State<BookChapterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          _buildShowChapterColumn(),
          const Positioned(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: BookChapterPlayBar(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildShowChapterColumn() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: Dimens.size20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: CustomAppbar(
              leftFunctionChild: _backBtn(),
              leftFunctionBackgroundColor: AppColors.backgroundSplash,
              title: '1 Chapter - Loomings',
              rightFunctionChild: _moreBtn(),
              rightFunctionBackgroundColor: AppColors.backgroundSplash,
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: Dimens.size24,
              ),
              child: ShowChapterWidget(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _backBtn() {
    return const Icon(
      Icons.arrow_back_rounded,
      color: AppColors.titleColor,
      size: Dimens.size25,
    );
  }

  Widget _moreBtn() {
    return const Icon(
      Icons.more_horiz_outlined,
      size: Dimens.size25,
      color: AppColors.titleColor,
    );
  }
}
