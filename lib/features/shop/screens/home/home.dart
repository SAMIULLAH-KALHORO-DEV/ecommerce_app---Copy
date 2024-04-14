import 'package:ecommerce_app/common/widgets/custom_shapes/containers/circuler_container.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
          
           ClipPath(
            clipper: TCustomCurvedEdges(),
             child: Container(
              color: TColors.primary,
              padding: const EdgeInsets.all(0),
              child: const SizedBox(
                height: 300,
                child: Stack(
                  children: [
                    Positioned(
                        top: -150, right: -250, child: TCirculerContainer()),
                    Positioned(
                        top: 100, right: -250, child: TCirculerContainer()),
                  ],
                ),
              ),
                       ),
           ),
        
      ]),
    );
  }
}
