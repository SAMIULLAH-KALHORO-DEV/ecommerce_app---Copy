import 'package:ecommerce_app/common/widgets/custom_shapes/containers/circuler_container.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/curved_edges/curved_edge_widget.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';


class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: const SizedBox(
          height: 300,
          child: Stack(
            children: [
              Positioned(top: -150, right: -250, child: TCirculerContainer()),
              Positioned(top: 100, right: -250, child: TCirculerContainer()),
            ],
          ),
        ),
      ),
    );
  }
}
