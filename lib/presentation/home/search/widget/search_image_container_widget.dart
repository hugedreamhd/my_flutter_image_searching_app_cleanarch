import 'package:flutter/material.dart';
import 'package:my_flutter_image_searching_app_cleanarch/domain/model/photo_model.dart';
import 'package:my_flutter_image_searching_app_cleanarch/utils/simple_logger.dart';

class SearchImageContainerWidget extends StatelessWidget {
  final PhotoModel photo;

  const SearchImageContainerWidget({
    super.key,
    required this.photo,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // go datail page
        logger.info('tap');
      },
      onDoubleTap: () {
        // like
        logger.info('double tap');
      },
      onLongPress: () {
        logger.info('long press');
        // share

        // edit

        // download
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.0),
          image: DecorationImage(
            image: NetworkImage(photo.previewUrl),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 8.0,
              spreadRadius: 4.0,
              offset: const Offset(2, 2),
              color: Colors.grey.withOpacity(0.6),
            ),
          ],
        ),
      ),
    );
  }
}
