import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CashierHeader extends StatelessWidget {
  const CashierHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildUsernameAndLogoutButton(),
        buildCalculatorButton(),
        buildOrderTotal(),
        buildSuspendedBillsButton(),
        buildExpensesButton(),
      ],
    );
  }

  Container buildExpensesButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: buildBlueButtonDecoration(),
      child: buildButtonContent(icon: Icons.wallet, label: 'Expenses'),
    );
  }

  Row buildButtonContent({required IconData icon, required String label}) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
          ),
        )
      ],
    );
  }

  BoxDecoration buildBlueButtonDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: AppColors.blue800,
    );
  }

  Container buildSuspendedBillsButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: buildBlueButtonDecoration(),
      child: buildButtonContent(
        icon: Icons.import_contacts_rounded,
        label: 'Suspended Bills',
      ),
    );
  }

  Container buildOrderTotal() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: buildOrderTotalDecoration(),
      child: const Text(
        '125.55JOD',
        style: TextStyle(
          fontSize: 32,
          color: AppColors.blue1000,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  BoxDecoration buildOrderTotalDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.white,
    );
  }

  Container buildCalculatorButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: buildBlueButtonDecoration(),
      child: buildButtonContent(icon: Icons.calculate_rounded, label: 'Calculator'),
    );
  }

  Column buildUsernameAndLogoutButton() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildUsernameText(),
        const SizedBox(
          height: 10,
        ),
        buildLogoutButton()
      ],
    );
  }

  Container buildLogoutButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: buildLogoutButtonDecoration(),
      child: buildLogoutText(),
    );
  }

  BoxDecoration buildLogoutButtonDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Colors.redAccent,
    );
  }

  Text buildLogoutText() {
    return const Text(
      'Logout',
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    );
  }

  Text buildUsernameText() {
    return const Text(
      'Username',
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 18,
        color: AppColors.blue1000,
      ),
    );
  }
}
