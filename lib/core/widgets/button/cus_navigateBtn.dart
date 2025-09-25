

import 'package:flutter/material.dart';

import '../../theme/app_style.dart';
import '../../theme/colors.dart';

class NavigateBtn extends StatefulWidget {
  final Function onPressed;
  final String text;
  final bool? border;
  final Color? backgroundColor;

  const NavigateBtn({super.key,required this.onPressed, this.border,required this.text,this.backgroundColor});

  @override
  State<NavigateBtn> createState() => _NavigateBtnState();
}

class _NavigateBtnState extends State<NavigateBtn> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        alignment: Alignment.center,
          side: widget.border!=null?MaterialStateProperty.all(const BorderSide(
              color:AppColors.success400,
              width: 0.8,
              style: BorderStyle.solid)):null,
        padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
        backgroundColor: MaterialStateProperty.all(widget.backgroundColor??AppColors.success400),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
      ),
      child: Text(
        widget.text,
        style: AppStyle.text14RegularWhite,
      ),
      onPressed: () {
        FocusScope.of(context).requestFocus(FocusNode());
        widget.onPressed();
      },
    );
  }
}
