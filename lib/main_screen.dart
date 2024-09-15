import 'package:flutter/material.dart';
import 'package:motaz_cashier/theme/app_colors.dart';
import 'package:motaz_cashier/widgets/cashier_header.dart';
import 'package:motaz_cashier/widgets/custom_extras_list.dart';
import 'package:motaz_cashier/widgets/customer_details_section.dart';
import 'package:motaz_cashier/widgets/filters_list.dart';
import 'package:motaz_cashier/widgets/market_products_grid.dart';
import 'package:motaz_cashier/widgets/on_order_actions.dart';
import 'package:motaz_cashier/widgets/ordered_product_item.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return buildCashierScreen();
  }

  Scaffold buildCashierScreen() {
    return Scaffold(
      body: Row(
        children: [
          buildCashierProductsView(),
          buildOrderedProductsView(),
        ],
      ),
    );
  }

  Flexible buildOrderedProductsView() {
    return Flexible(
      child: Container(
        color: Colors.white,
        child: Stack(
          children: [
            buildOrderedItems(),
            OnOrderActions(),
          ],
        ),
      ),
    );
  }

  Padding buildOrderedItems() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 20,
      ),
      child: Column(
        children: [
          buildOrderedProductsText(),
          buildOrdersProductsTitleSeparator(),
          OrderedProductItem(),
        ],
      ),
    );
  }

  Text buildOrderedProductsText() {
    return const Text(
      'Order Products',
      style: TextStyle(
        fontSize: 22,
        color: Color(0xFF003554),
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Column buildOrdersProductsTitleSeparator() {
    return const Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Divider(
          color: Color(0xFFced4da),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Flexible buildCashierProductsView() {
    return Flexible(
      flex: 3,
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.backgroundColor,
        ),
        child: buildCashierProductsViewAndCustomerSection(),
      ),
    );
  }

  Stack buildCashierProductsViewAndCustomerSection() {
    return Stack(
      children: [
        buildCashierProductsViewContent(),
        CustomerDetailsSection(),
      ],
    );
  }

  Padding buildCashierProductsViewContent() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 16,
        right: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CashierHeader(),
          const SizedBox(
            height: 40,
          ),
          const FiltersList(),
          const SizedBox(
            height: 20,
          ),
          buildProductsAndExtrasLists()
        ],
      ),
    );
  }

  Expanded buildProductsAndExtrasLists() {
    return const Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MarketProductsGrid(),
          CustomExtrasList(),
        ],
      ),
    );
  }
}
