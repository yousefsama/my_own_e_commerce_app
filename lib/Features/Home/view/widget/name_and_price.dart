import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/core/utils/app_style.dart';

class NameAndPrice extends StatelessWidget {
  const NameAndPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Camisas',
          style: AppStyle.bold40.copyWith(
            color: Colors.white,
          ),
        ),
        Row(
          children: [
            Text(
              '40\$',
              style: AppStyle.bold40.copyWith(
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              '/',
              style: AppStyle.medium16grey.copyWith(color: Colors.grey),
            ),
            Text('Talla',
                style: AppStyle.medium16grey.copyWith(color: Colors.grey)),
          ],
        )
      ],
    );
  }
}
