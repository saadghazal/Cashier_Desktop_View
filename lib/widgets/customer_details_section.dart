import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CustomerDetailsSection extends StatelessWidget {
  const CustomerDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return buildCustomerDetailsSection();
  }

  Align buildCustomerDetailsSection() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: IntrinsicHeight(
        child: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: buildCustomerDetailsDecoration(),
          child: buildCustomerDetailsFields(),
        ),
      ),
    );
  }

  Row buildCustomerDetailsFields() {
    return Row(
      children: [
        buildTextFieldAndItsTitle(
          title: 'Customer Name',
          textFieldPlaceHolder: 'Enter customer name',
        ),
        const SizedBox(
          width: 20,
        ),
        buildTextFieldAndItsTitle(
          title: 'Customer Number',
          textFieldPlaceHolder: 'Enter customer number',
        ),
      ],
    );
  }

  Column buildTextFieldAndItsTitle({
    required String title,
    required textFieldPlaceHolder,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildTextFieldTitle(title),
        const SizedBox(
          height: 10,
        ),
        buildCustomerTextField(textFieldPlaceHolder),
      ],
    );
  }

  Text buildTextFieldTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        color: AppColors.blue1000,
      ),
    );
  }

  SizedBox buildCustomerTextField(textFieldPlaceHolder) {
    return SizedBox(
      width: 250,
      child: TextFormField(
        cursorColor: AppColors.blue800,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: AppColors.blue1000,
        ),
        decoration: buildTextFieldDecoration(textFieldPlaceHolder),
      ),
    );
  }

  InputDecoration buildTextFieldDecoration(textFieldPlaceHolder) {
    return InputDecoration(
      hintText: textFieldPlaceHolder,
      hintStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Color(0xFFcccccc),
      ),
      enabledBorder: buildTextFieldBorder(),
      focusedBorder: buildTextFieldBorder(),
      border: buildTextFieldBorder(),
    );
  }

  BoxDecoration buildCustomerDetailsDecoration() {
    return BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: const Color(0xFFced4da).withOpacity(0.3),
          blurRadius: 8,
          offset: Offset(0, -2),
        ),
        const BoxShadow(
          color: Colors.transparent,
          // blurRadius: 8,
          offset: Offset(1, 0),
        ),
      ],
    );
  }

  OutlineInputBorder buildTextFieldBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: Color(0xFFf2f2f2),
      ),
    );
  }
}
