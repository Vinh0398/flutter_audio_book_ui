import 'package:flutter/material.dart';
import 'package:flutter_audio_book_ui/const/colors.dart';
import 'package:flutter_audio_book_ui/const/dimens.dart';
import 'package:flutter_audio_book_ui/gen/assets.gen.dart';

class BookPlayBar extends StatefulWidget {
  final Function()? libraryOnPress;
  final Function()? backwardOnPress;
  final Function()? playOnPress;
  final Function()? forWardOnPress;
  final Function()? repeatOnPress;

  const BookPlayBar({
    Key? key,
    this.libraryOnPress,
    this.backwardOnPress,
    this.playOnPress,
    this.forWardOnPress,
    this.repeatOnPress,
  }) : super(key: key);

  @override
  State<BookPlayBar> createState() => _BookPlayBarState();
}

class _BookPlayBarState extends State<BookPlayBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: Dimens.size16,
        right: Dimens.size16,
        top: Dimens.size50,
        bottom: Dimens.size22,
      ),
      child: SizedBox(
        height: Dimens.size160,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _isolation(),
            _playBar(
              widget.libraryOnPress,
              widget.backwardOnPress,
              widget.playOnPress,
              widget.forWardOnPress,
              widget.repeatOnPress,
            ),
          ],
        ),
      ),
    );
  }

  Widget _isolation() {
    return SizedBox(
      height: Dimens.size52,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            '00:00',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: Dimens.size12,
              color: AppColors.disableTextColor,
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.transparent
            ),
            child: Image.asset(
              Assets.images.isolation.path,
              fit: BoxFit.cover,
              color: AppColors.backgroundColor,
            ),
          ),
          const Text(
            '1:00:00',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: Dimens.size12,
              color: AppColors.textColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _playBar(
    Function()? libraryOnPress,
    Function()? backWardOnPress,
    Function()? playOnPress,
    Function()? forwardOnPress,
    Function()? repeatOnPress,
  ) {
    return Padding(
      padding: const EdgeInsets.only(
        top: Dimens.size25,
      ),
      child: Container(
        height: Dimens.size80,
        decoration: BoxDecoration(
          color: AppColors.backgroundSplash,
          borderRadius: BorderRadius.circular(Dimens.size100),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildPlayBarIcon(
              libraryOnPress,
              const Icon(
                Icons.library_music_outlined,
                size: Dimens.size25,
                color: AppColors.titleColor,
              ),
            ),
            _buildPlayBarIcon(
              backWardOnPress,
              const Icon(
                Icons.replay_10_rounded,
                size: Dimens.size25,
                color: AppColors.titleColor,
              ),
            ),
            _playBtn(playOnPress),
            _buildPlayBarIcon(
              forwardOnPress,
              const Icon(
                Icons.forward_10_rounded,
                size: Dimens.size25,
                color: AppColors.titleColor,
              ),
            ),
            _buildPlayBarIcon(
              repeatOnPress,
              const Icon(
                Icons.repeat_one_rounded,
                size: Dimens.size25,
                color: AppColors.titleColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlayBarIcon(Function()? onPress, Icon icon) {
    return IconButton(
      onPressed: onPress,
      icon: icon,
    );
  }

  Widget _playBtn(Function()? onPress) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: Dimens.size52,
        height: Dimens.size52,
        decoration: const BoxDecoration(
          color: AppColors.access,
          shape: BoxShape.circle,
        ),
        child: const Center(
          child: Icon(
            Icons.play_arrow_rounded,
            size: Dimens.size25,
            color: AppColors.titleColor,
          ),
        ),
      ),
    );
  }
}
