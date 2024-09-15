import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class MarketProductsGrid extends StatelessWidget {
  const MarketProductsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return buildMarketProductsGrid();
  }

  Flexible buildMarketProductsGrid() {
    return Flexible(
      flex: 3,
      child: GridView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20,
          bottom: 150,
        ),
        itemBuilder: (context, index) {
          return buildProductItem();
        },
        itemCount: 12,
        gridDelegate: buildGridSettings(),
      ),
    );
  }

  SliverGridDelegateWithFixedCrossAxisCount buildGridSettings() {
    return const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      childAspectRatio: 200 / 160,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
    );
  }

  Container buildProductItem() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: buildProductItemDecoration(),
      child: buildProductItemDataWidgets(),
    );
  }

  Column buildProductItemDataWidgets() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildProductImage(),
        SizedBox(
          height: 10,
        ),
        buildProductName(),
        Spacer(),
        buildProductPrice()
      ],
    );
  }

  BoxDecoration buildProductItemDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Color(0xFFced4da).withOpacity(0.3),
          blurRadius: 8,
        )
      ],
    );
  }

  Text buildProductPrice() {
    return const Text(
      '0.40JOD',
      style: TextStyle(
        fontSize: 16,
        color: AppColors.blue900,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Text buildProductName() {
    return Text(
      'Lays Chips',
      style: TextStyle(
        color: AppColors.blue1000,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Container buildProductImage() {
    return Container(
      height: 100,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage('assets/images/lays.jpg'),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
