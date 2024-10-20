import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../index.dart';

///Use for Network Image
class CachedImageWidget extends StatelessWidget {
  final String url;
  final double? width;
  final double? height;
  final double? radius;
  final Widget? errorWidget;

  const CachedImageWidget({
    Key? key,
    required this.url,
    this.width,
    this.height,
    this.radius,
    this.errorWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      width: width,
      height: height,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(radius ?? 0),
        ),
      ),
      fit: BoxFit.cover,
      memCacheHeight: Config.memCacheHeight,
      memCacheWidth: Config.memCacheWidth,
      placeholder: (context, url) => const CupertinoActivityIndicator(),
      errorWidget: (context, url, error) =>
          errorWidget ?? const Icon(Icons.error),
    );
  }
}

CachedNetworkImageProvider cachedNetworkImageProvider(url) =>
    CachedNetworkImageProvider(
      url,
    );
