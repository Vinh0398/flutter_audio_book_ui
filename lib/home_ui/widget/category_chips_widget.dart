import 'package:flutter/material.dart';
import 'package:flutter_audio_book_ui/const/colors.dart';
import 'package:flutter_audio_book_ui/const/dimens.dart';
import 'package:flutter_audio_book_ui/model/category_chips_entity.dart';

class CategoryChipsWidget extends StatefulWidget {
  final CategoryChips category;
  final Function(bool)? onPress;

  const CategoryChipsWidget({
    Key? key,
    required this.category,
    this.onPress,
  }) : super(key: key);

  @override
  State<CategoryChipsWidget> createState() => _CategoryChipsWidgetState();
}

class _CategoryChipsWidgetState extends State<CategoryChipsWidget> {
  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      clipBehavior: Clip.hardEdge,
      label: Text(
        widget.category.categoryName,
        textAlign: TextAlign.center,
      ),
      labelPadding: const EdgeInsets.symmetric(
        vertical: Dimens.size14,
        horizontal: Dimens.size25,
      ),
      labelStyle: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: Dimens.size14,
        color: widget.category.isChipSelected
            ? AppColors.titleColor
            : AppColors.textColor,
      ),
      onSelected: widget.onPress,
      selected: widget.category.isChipSelected,
      selectedColor: AppColors.backgroundSplash,
      disabledColor: AppColors.chipsColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          Dimens.size100,
        ),
      ),
    );
  }
}
