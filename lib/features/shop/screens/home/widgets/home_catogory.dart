import 'package:ecommerce_app/common/widgets/image_text_widget/vertical_image_text.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';


class THomeCatogories extends StatelessWidget {
  const THomeCatogories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return TVerticalImageText(
              image: TImages.shoeIcon,
              title: 'shoes',
              onTap: () {},
            );
          }),
    );
  }
}
