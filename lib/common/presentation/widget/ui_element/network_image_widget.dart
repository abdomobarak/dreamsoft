import 'package:flutter/material.dart';
import 'package:dream_soft/common/presentation/widget/ui_element/shimmer_widget.dart';

class CachedImageWidget extends StatelessWidget {
  final String imageUrl;
  final BoxFit? fit;
  final String? errorImage;
  final Widget? errorWidget;

  const CachedImageWidget({
    Key? key,
    required this.imageUrl,
    this.fit,
    this.errorWidget,
    this.errorImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      fit: fit,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return const ShimmerWidget();
      },
      errorBuilder: (context, url, error) => errorWidget ?? Image.asset(errorImage ?? '', fit: fit),
    );
  }
}
