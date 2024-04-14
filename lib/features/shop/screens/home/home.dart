import 'package:ecommerce_app/common/widgets/custom_shapes/containers/primary_heaader_container.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // Header
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //
                  //App bar
                  const THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  // Search Bar
                  const TSearchContainer(
                    text: 'Search in Store',
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // heading Catogories
                  const TSectionHeading(
                    title: 'Popular Catogories',
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  // Catogories
                  SizedBox(
                    height: 80,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index) {
                          return Column(
                            children: [
                              // Circuler Icon
                              Container(
                                width: 56,
                                height: 56,
                                padding: EdgeInsets.all(TSizes.sm),
                                decoration: BoxDecoration(
                                    color: TColors.white,
                                    borderRadius: BorderRadius.circular(56)),
                                child: Center(
                                    child: Image(
                                  image: AssetImage(TImages.shoeIcon),
                                  fit: BoxFit.cover,
                                  color: TColors.dark,
                                )),
                              )
                            ],
                          );
                        }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
