/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/authority_book.jpg
  AssetGenImage get authorityBook =>
      const AssetGenImage('assets/images/authority_book.jpg');

  /// File path: assets/images/avatar_mock.jpg
  AssetGenImage get avatarMock =>
      const AssetGenImage('assets/images/avatar_mock.jpg');

  /// File path: assets/images/book_background.png
  AssetGenImage get bookBackground =>
      const AssetGenImage('assets/images/book_background.png');

  /// File path: assets/images/earth_history.jpg
  AssetGenImage get earthHistory =>
      const AssetGenImage('assets/images/earth_history.jpg');

  /// File path: assets/images/isolation.jpg
  AssetGenImage get isolation =>
      const AssetGenImage('assets/images/isolation.jpg');

  /// File path: assets/images/it_book.jpg
  AssetGenImage get itBook => const AssetGenImage('assets/images/it_book.jpg');

  /// File path: assets/images/moby_dick.jpg
  AssetGenImage get mobyDick =>
      const AssetGenImage('assets/images/moby_dick.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
        authorityBook,
        avatarMock,
        bookBackground,
        earthHistory,
        isolation,
        itBook,
        mobyDick
      ];
}

class $AssetsSvgsGen {
  const $AssetsSvgsGen();

  /// File path: assets/svgs/Categories.svg
  String get categories => 'assets/svgs/Categories.svg';

  /// List of all assets
  List<String> get values => [categories];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgsGen svgs = $AssetsSvgsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
