import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class OnOrderActions extends StatelessWidget {
  const OnOrderActions({super.key});

  @override
  Widget build(BuildContext context) {
    return buildOnOrderActions();
  }

  Align buildOnOrderActions() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: IntrinsicHeight(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: buildOnOrderActionsDecoration(),
          child: buildOrderActions(),
        ),
      ),
    );
  }

  Column buildOrderActions() {
    return Column(
      children: [
        buildOrderActionButton(
          label: 'Sell',
          buttonColor: Color(0xFF6ede8a),
          labelColor: AppColors.blue1000,
        ),
        const SizedBox(
          height: 10,
        ),
        buildSuspendAndPrintActions(),
        const SizedBox(
          height: 10,
        ),
        buildOpenBoxAndDiscountActions(),
        const SizedBox(
          height: 10,
        ),
        buildOrderActionButton(
          label: 'Cancel Order',
          buttonColor: Colors.redAccent,
          labelColor: Colors.white,
        ),
      ],
    );
  }

  Row buildOpenBoxAndDiscountActions() {
    return Row(
      children: [
        buildOrderActionButton(
          label: 'Open Box',
          buttonColor: AppColors.blue700,
          labelColor: Colors.white,
        ),
        SizedBox(
          width: 10,
        ),
        buildOrderActionButton(
          label: '% Discount',
          buttonColor: Color(0xFFff7f51),
          labelColor: AppColors.blue1000,
        ),
      ],
    );
  }

  Row buildSuspendAndPrintActions() {
    return Row(
      children: [
        buildOrderActionButton(
          label: 'Sell and Print',
          buttonColor: AppColors.blue700,
          labelColor: Colors.white,
        ),
        const SizedBox(
          width: 10,
        ),
        buildOrderActionButton(
          label: 'Suspend Bill',
          buttonColor: AppColors.blue700,
          labelColor: Colors.white,
        ),
      ],
    );
  }

  BoxDecoration buildOnOrderActionsDecoration() {
    return BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Color(0xFFced4da).withOpacity(0.3),
          blurRadius: 8,
          offset: Offset(0, -2),
        ),
        BoxShadow(
          color: Colors.transparent,
          // blurRadius: 8,
          offset: Offset(-1, 0),
        ),
      ],
    );
  }

  Expanded buildOrderActionButton({
    required String label,
    required Color buttonColor,
    required Color labelColor,
  }) {
    return Expanded(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: buttonColor,
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: labelColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
