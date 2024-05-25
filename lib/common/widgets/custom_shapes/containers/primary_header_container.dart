import 'package:e_commerce/common/widgets/custom_shapes/containers/circular_containers.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key, required this.child
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidget(
        child:  SizedBox(
          height: 400,
          child: Container(
              color: TColors.primary,

              // -- if [size.isFinite' : is not true.in Stack] error occurred -> Readme.md file

                child: Stack(
                  children: [
                    // -- background custom shapes
                    Positioned(top: -150, right: -250,child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1),)),
                    Positioned(top: 100, right: -300,child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1),)),
                    child,
                  ],
                ),
              ),
        )
    );
  }
}


