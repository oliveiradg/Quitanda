// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:quitanda/src/config/custom_colors.dart';

class QuantityWidget extends StatelessWidget {
  final int value;
  final String suffixText;
  final Function(int quantity) result;

  const QuantityWidget({
    Key? key,
    required this.value,
    required this.suffixText,
    required this.result,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            spreadRadius: 1,
            blurRadius: 2,
          )
        ],
      ),
      child: Row(
        children: [
          _QuantityButton(
            icon: Icons.remove,
            color: Colors.grey,
            onPressed: () {
              if (value == 1) return;

              int resultCount = value - 1;

              result(resultCount);
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: Text(
              '$value$suffixText',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _QuantityButton(
            icon: Icons.add,
            color: CustomColors.customSwatchColor,
            onPressed: () {
              int resultCount = value + 1;

              result(resultCount);
            },
          ),
        ],
      ),
    );
  }
}

class _QuantityButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final VoidCallback onPressed;

  const _QuantityButton({
    Key? key,
    required this.color,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        onTap: onPressed,
        child: Ink(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 16.0,
          ),
        ),
      ),
    );
  }
}
