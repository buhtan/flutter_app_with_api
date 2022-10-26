import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api_proje/constants.dart';

class Manager {
  Text myText(
    String value,
  ) {
    return Text(
      value,
      style: Constants.myNewFontWhite,
    );
  }

  Widget avatar(String url) {
    return ClipOval(
      child: CachedNetworkImage(
        imageUrl:url,
        placeholder: (context, url) => const CircularProgressIndicator(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
