import 'package:flutter/material.dart';
import 'package:flutter_audio_book_ui/const/colors.dart';
import 'package:flutter_audio_book_ui/const/dimens.dart';
import 'package:flutter_audio_book_ui/gen/assets.gen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: avatarBtn(),
        actions: [
          notificationBtn(() {}),
        ],
      ),
    );
  }

  Widget avatarBtn() {
    return Padding(
      padding: const EdgeInsets.all(Dimens.size5),
      child: Container(
        height: Dimens.size48,
        width: Dimens.size48,
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Assets.images.avatarMock.image(fit: BoxFit.cover),
      ),
    );
  }

  Widget notificationBtn(Function()? onPress) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: MaterialButton(
        onPressed: onPress,
        padding: const EdgeInsets.all(5),
        color: const Color(0xFF191815),
        shape: const CircleBorder(eccentricity: 0),
        child: const Icon(
          Icons.notifications_none_rounded,
          color: Color(0xFFF1EEE3),
        ),
      ),
    );
  }
}
