import 'package:flutter/material.dart';
import 'package:flutter_audio_book_ui/app_bar_ui/app_bar.dart';
import 'package:flutter_audio_book_ui/const/colors.dart';
import 'package:flutter_audio_book_ui/const/dimens.dart';
import 'package:flutter_audio_book_ui/gen/assets.gen.dart';
import 'package:flutter_audio_book_ui/home_ui/widget/book_item_widget.dart';
import 'package:flutter_audio_book_ui/home_ui/widget/category_chips_widget.dart';
import 'package:flutter_audio_book_ui/home_ui/widget/custom_bottom_bar.dart';
import 'package:flutter_audio_book_ui/home_ui/widget/list_book_title_widget.dart';
import 'package:flutter_audio_book_ui/home_ui/widget/title_home_page.dart';
import 'package:flutter_audio_book_ui/model/book_entity.dart';
import 'package:flutter_audio_book_ui/model/category_chips_entity.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<BookEntity> _listBook = [
    BookEntity(
      bookId: 1,
      bookName: 'Moby Dick',
      bookImage: Assets.images.mobyDick.path,
      bookAuthor: 'Herman Meville',
    ),
    BookEntity(
      bookId: 2,
      bookName: 'Authornity',
      bookImage: Assets.images.authorityBook.path,
      bookAuthor: 'Jeff Vandermer',
    ),
    BookEntity(
      bookId: 3,
      bookName: 'IT',
      bookImage: Assets.images.itBook.path,
      bookAuthor: 'Stephen King',
    ),
    BookEntity(
      bookId: 4,
      bookName: 'Earth History',
      bookImage: Assets.images.earthHistory.path,
      bookAuthor: 'Steven M.Stanley',
    ),
  ];
  final List<CategoryChips> _categoryChips = [
    CategoryChips(
      categoryName: 'All',
      isChipSelected: true,
    ),
    CategoryChips(
      categoryName: 'Detective',
      isChipSelected: false,
    ),
    CategoryChips(
      categoryName: 'Horror',
      isChipSelected: false,
    ),
    CategoryChips(
      categoryName: 'Historical',
      isChipSelected: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildAppbar(),
                const HomePageTitle(),
                _buildCategoryChips(),
                _buildBodyPage(),
              ],
            ),
          ),
          const Positioned(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomBottomBar(),
            ),
          ),
        ],
      ),
    );
  }

  SafeArea _buildAppbar() {
    return SafeArea(
      child: CustomAppbar(
        leftFunctionChild: Assets.images.avatarMock.image(fit: BoxFit.cover),
        rightFunctionChild: const Icon(
          Icons.notifications_none_rounded,
          color: Color(0xFFF1EEE3),
        ),
        rightFunctionBackgroundColor: AppColors.backgroundSplash,
      ),
    );
  }

  Widget _buildListBook() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: _listBook.length,
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemBuilder: (context, index) {
        BookEntity data = _listBook[index];
        return Padding(
          padding: const EdgeInsets.only(right: Dimens.size16),
          child: BookItemWidget(bookData: data,),
        );
      },
    );
  }

  Widget showListBook() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ListBookTitleWidget(bookCategoryTitle: 'Drama'),
        SizedBox(
          height: Dimens.size294,
          child: _buildListBook(),
        ),
      ],
    );
  }

  Expanded _buildBodyPage() {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Dimens.size20,
            horizontal: Dimens.size16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              showListBook(),
              showListBook(),
              showListBook(),
              showListBook(),
              const SizedBox(height: Dimens.size142),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryChips() {
    return Padding(
      padding: const EdgeInsets.only(
        top: Dimens.size22,
        left: Dimens.size16,
        right: Dimens.size16,
      ),
      child: SizedBox(
        height: Dimens.size48,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _categoryChips.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            CategoryChips data = _categoryChips[index];
            return Padding(
              padding: const EdgeInsets.only(right: Dimens.size8),
              child: CategoryChipsWidget(
                category: data,
                onPress: (selected) => _buildOnSelectedChip(data.isChipSelected),
              ),
            );
          },
        ),
      ),
    );
  }

  _buildOnSelectedChip(bool isSelected) {
    setState(() {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        _categoryChips.map((chip) {
          final newChip = chip.isChipSelected;
          return chip.isChipSelected ? isSelected : newChip;
        });
      });
    });
  }

}
