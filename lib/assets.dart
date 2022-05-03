import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

abstract class Assets {
  static final close = SvgPicture.asset('assets/icons/close.svg');
  static final allCollections =
      Image.asset('assets/images/all_collections.jpg');
  static final stickers = Image.asset('assets/images/stickers.jpg');
  static final fonts = Image.asset('assets/images/fonts.jpg');
  static final features = Image.asset('assets/images/features.jpg');
}
