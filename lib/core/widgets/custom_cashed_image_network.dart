import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_loading_widgets.dart';

import 'no_image_assets.dart';

class CachedImage extends StatelessWidget {
  final String networkImageUrl;
  final double height;
  final double width;

  const CachedImage({
    super.key,
    required this.networkImageUrl,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: networkImageUrl,
      imageBuilder: (context, imageProvider) => Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.fill,
            filterQuality: FilterQuality.high,
          ),
        ),
      ),
      placeholder: (context, url) => Center(
        child: SizedBox(
          height: height,
          width: width,
          child: const CustomLoadingWidget(),
        ),
      ),
      errorWidget: (context, url, error) =>
          const NoImageAsset(width: 80, height: 120),
    );
  }
}