import 'package:asroo_store/core/common/widgets/admin_app_bar.dart';
import 'package:asroo_store/core/style/colors/colors_dark.dart';
import 'package:flutter/material.dart';

class AddProductsScreen extends StatelessWidget {
  const AddProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
  return  const Scaffold(
      backgroundColor: ColorsDark.mainColor,
      appBar: AdminAppBar(
        backgroundColor: ColorsDark.mainColor,
        isMain: true,
        title: 'Dashboard',
      ),
      body: Center(
        child: Text(
          'Dashboard Screen',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
