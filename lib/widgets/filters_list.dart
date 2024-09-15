import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class FiltersList extends StatelessWidget {
  const FiltersList({super.key});

  @override
  Widget build(BuildContext context) {
    return buildFiltersList();
  }

  SizedBox buildFiltersList() {
    return SizedBox(
      height: 30,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        separatorBuilder: buildFiltersSeparator,
        itemBuilder: buildFiltersListItems,
        itemCount: 12,
      ),
    );
  }

  Widget buildFiltersSeparator(context, _) {
    return const SizedBox(
      width: 10,
    );
  }

  Widget? buildFiltersListItems(context, index) {
    if (index == 0) {
      return buildSelectedFilterItem();
    }
    return buildUnselectedFilterItem();
  }

  Container buildUnselectedFilterItem() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      decoration: buildUnselectedFilterItemDecoration(),
      child: const Center(
        child: Text(
          'Not Selected',
          style: TextStyle(
            color: AppColors.blue1000,
          ),
        ),
      ),
    );
  }

  BoxDecoration buildUnselectedFilterItemDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(6),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Color(0xFFced4da).withOpacity(0.3),
          blurRadius: 8,
        )
      ],
    );
  }

  Container buildSelectedFilterItem() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      decoration: buildSelectedFilterItemDecoration(),
      child: const Center(
        child: Text(
          'Selected',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  BoxDecoration buildSelectedFilterItemDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(6),
      color: AppColors.blue800,
    );
  }
}
