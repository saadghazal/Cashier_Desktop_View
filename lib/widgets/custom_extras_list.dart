import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CustomExtrasList extends StatelessWidget {
  const CustomExtrasList({super.key});

  @override
  Widget build(BuildContext context) {
    return buildCustomExtrasOnOrderList(context);
  }

  Flexible buildCustomExtrasOnOrderList(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        width: double.maxFinite,
        height: MediaQuery.of(context).size.height / 2,
        decoration: buildListDecoration(),
        child: buildExtrasListView(),
      ),
    );
  }

  ListView buildExtrasListView() {
    return ListView.separated(
      itemBuilder: (context, index) {
        return buildExtraItem();
      },
      separatorBuilder: buildListSeparator,
      itemCount: 10,
    );
  }

  Widget buildListSeparator(context, _) {
    return Container(
      height: 1,
      decoration: const BoxDecoration(
        color: AppColors.blue500,
      ),
    );
  }

  Container buildExtraItem() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: buildExtraItemDataWidgets(),
    );
  }

  Row buildExtraItemDataWidgets() {
    return Row(
      children: [
        buildExtraImage(),
        const SizedBox(
          width: 10,
        ),
        buildExtraName(),
      ],
    );
  }

  Text buildExtraName() {
    return const Text(
      'Cheese',
      style: TextStyle(
        fontWeight: FontWeight.w600,
        color: AppColors.blue1000,
      ),
    );
  }

  Image buildExtraImage() {
    return Image.asset(
      'assets/images/cheese.png',
      height: 35,
      width: 35,
    );
  }

  BoxDecoration buildListDecoration() {
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
}
