import 'package:flutter/material.dart';
import 'package:paywall_challenge/core_styles.dart';

class CarouselItem extends StatelessWidget {
  const CarouselItem({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final Image image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: CoreStyles.softBlack,
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16)),
                child: image),
            const SizedBox(height: 8),
            Text(title,
                style: Theme.of(context)
                    .textTheme
                    .caption
                    ?.copyWith(color: Colors.white)),
            const SizedBox(height: 8),
          ],
        ));
  }
}
