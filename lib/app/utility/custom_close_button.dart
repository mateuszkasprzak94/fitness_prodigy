import 'package:flutter/material.dart';

class CustomCloseButton extends StatelessWidget {
  const CustomCloseButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.black.withOpacity(0.5),
              width: 4,
            ),
          ),
          child: Icon(
            Icons.close_rounded,
            color: Colors.black.withOpacity(0.5),
            size: 25,
          ),
        ),
      ),
    );
  }
}
