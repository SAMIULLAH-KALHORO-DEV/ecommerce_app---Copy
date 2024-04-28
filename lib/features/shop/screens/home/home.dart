import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/circuler_container.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/primary_heaader_container.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce_app/common/widgets/images/t_rounded_images.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_catogory.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // Header
          children: [
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //
                  //App bar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections / 3),
                  // Search Bar
                  TSearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),

                  // heading Catogories
                  TSectionHeading(
                    title: 'Popular Catogories',
                    showActionButton: false,
                    textColor: TColors.white,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems),

                  // Catogories
                  THomeCatogories()
                ],
              ),
            ),
            // body part
            Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        viewportFraction: 1,
                      ),
                      items: const [
                        TRoundedImage(imageUrl: TImages.promoBanner3),
                        TRoundedImage(imageUrl: TImages.promoBanner2),
                        TRoundedImage(imageUrl: TImages.promoBanner1),
                      ],
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    Row(
                      children: [
                        for (int i = 0; i < 3; i++)
                          TCirculerContainer(
                            height: 4,
                            width: 20,
                            margin: EdgeInsets.only(right: 10),
                            backgroundColor: Colors.green,
                          ),
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
