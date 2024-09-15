import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class OrderedProductItem extends StatelessWidget {
  const OrderedProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return buildOrderedProductItem();
  }

  SizedBox buildOrderedProductItem() {
    return SizedBox(
      height: 80,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildProductImage(),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildProductNameAndPrice(),
                buildProductQuantityAndActions(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Align buildProductQuantityAndActions() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        children: [
          buildProductRemoveOrAddActionButton(icon: Icons.remove),
          const SizedBox(
            width: 5,
          ),
          buildOrderedProductQuantityText(),
          const SizedBox(
            width: 5,
          ),
          buildProductRemoveOrAddActionButton(icon: Icons.add)
        ],
      ),
    );
  }

  Text buildOrderedProductQuantityText() {
    return const Text(
      '5',
      style: TextStyle(
        color: Color(0xFF6c757d),
        fontSize: 14,
      ),
    );
  }

  InkWell buildProductRemoveOrAddActionButton({required IconData icon}) {
    return InkWell(
      onTap: () {},
      child: Icon(icon),
    );
  }

  Column buildProductNameAndPrice() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildOrderedProductName(),
        const Spacer(),
        buildOrderedProductPrice(),
      ],
    );
  }

  Text buildOrderedProductPrice() {
    return const Text(
      '2.00JOD',
      style: TextStyle(
        fontSize: 16,
        color: AppColors.blue500,
      ),
    );
  }

  Text buildOrderedProductName() {
    return const Text(
      'Lays',
      style: TextStyle(
        fontWeight: FontWeight.w600,
        color: AppColors.blue1000,
        fontSize: 16,
      ),
    );
  }

  Image buildProductImage() {
    return Image.asset(
      'assets/images/lays.jpg',
      height: 80,
    );
  }
}
