import 'package:ecommerce_app/common/widgets/custom_shapes/containers/primary_heaader_container.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // Header
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //
                  //App bar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),
                  // Search Bar
                  TSearchContainer(
                    text: 'Search in Store',
                  ),
                  //Catogories
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
