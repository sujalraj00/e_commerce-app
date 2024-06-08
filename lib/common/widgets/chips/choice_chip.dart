import 'package:e_commerce/common/widgets/custom_shapes/containers/circular_containers.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class TChoiceChip extends StatelessWidget {
   TChoiceChip({
    super.key, required this.text, required this.selected,  this.onSelected
  });

  final String text;
  final bool selected;
  final void Function(bool) ? onSelected;


  @override
  Widget build(BuildContext context) {
    final isColor = THelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: THelperFunctions.getColor(text) != null ? const SizedBox() :   Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle:  TextStyle(color: selected ? Colors.white :   null),
        avatar:  isColor
          ?      TCircularContainer(width: 50,height: 50, backgroundColor: THelperFunctions.getColor(text)!)
          : null,
        shape:isColor ?const CircleBorder() : null,
        labelPadding:  isColor ? const EdgeInsets.all(0) : null,
        backgroundColor:  isColor ? THelperFunctions.getColor(text)! : null,
        padding: isColor ? const EdgeInsets.all(0) : null ,
      ),
    );
  }
}