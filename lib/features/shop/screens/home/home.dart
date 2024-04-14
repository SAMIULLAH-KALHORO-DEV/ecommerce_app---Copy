import 'package:ecommerce_app/common/widgets/custom_shapes/containers/circuler_container.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/curved_edges/curved_edge_widget.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/curved_edges/curved_edges.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/primary_heaader_container.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
