import 'package:flutter/material.dart';
import 'package:flutter_audio_book_ui/app_bar_ui/app_bar.dart';
import 'package:flutter_audio_book_ui/book_detail_ui/widget/book_image_background_widget.dart';
import 'package:flutter_audio_book_ui/book_detail_ui/widget/book_information_widget.dart';
import 'package:flutter_audio_book_ui/book_detail_ui/widget/book_play_bar.dart';
import 'package:flutter_audio_book_ui/const/colors.dart';
import 'package:flutter_audio_book_ui/const/dimens.dart';
import 'package:flutter_audio_book_ui/model/book_entity.dart';
import 'package:flutter_audio_book_ui/route/routes.dart';
import 'package:go_router/go_router.dart';

class BookDetailPage extends StatefulWidget {
  final String? bookId;

  const BookDetailPage({
    Key? key,
    this.bookId,
  }) : super(key: key);

  @override
  State<BookDetailPage> createState() => _BookDetailPageState();
}

class _BookDetailPageState extends State<BookDetailPage> {
  late BookEntity bookDetail =
      listBook.firstWhere((element) => ('${element.bookId}' == widget.bookId));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildDetailAppbar(),
          _buildBookDetail(
            '${bookDetail.bookInformation.bookRate}',
            bookDetail.bookInformation.bookLanguage,
            bookDetail.bookInformation.bookTime,
            bookDetail.bookName,
            bookDetail.bookAuthor,
          ),
          BookPlayBar(
            playOnPress: () => _onPress(),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailAppbar() {
    return SafeArea(
      child: CustomAppbar(
        leftFunctionChild: _backBtn(),
        leftFunctionBackgroundColor: AppColors.backgroundSplash,
        title: 'Details',
        rightFunctionChild: _moreBtn(),
        rightFunctionBackgroundColor: AppColors.backgroundSplash,
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

  Widget _buildBookDetail(
    String ratePoint,
    String bookLanguage,
    String bookTime,
    String bookName,
    String bookAuthor,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: Dimens.size25,
            left: Dimens.size50,
            right: Dimens.size50,
          ),
          child: BookImageBackGround(
            bookImageUrl: bookDetail.bookImage,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: Dimens.size50,
          ),
          child: BookInformationWidget(
            ratePoint: ratePoint,
            bookLanguage: bookLanguage,
            bookTime: bookTime,
            bookName: bookName,
            bookAuthor: bookAuthor,
          ),
        )
      ],
    );
  }

  _onPress() {
    final path =
        "${GoRouter.of(context).location}/${RoutePath.bookChapterPath}";
    return context.go(path);
  }
}
