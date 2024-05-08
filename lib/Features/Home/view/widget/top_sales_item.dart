import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_own_e_commerce_app/core/utils/app_style.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';

class TopSalesItem extends StatelessWidget {
  const TopSalesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            AspectRatio(
                aspectRatio: 1,
                child: Image.asset(Assets.imagesProductTestImage)),
            const SizedBox(
              height: 15,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Clothes asd asd asd asd asd asd sad a asdas d asd asdasd asd asd asdsd',
                style: AppStyle.medium18Black
                    .copyWith(fontWeight: FontWeight.w600),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                '40\$',
                style: AppStyle.medium18Black
                    .copyWith(fontWeight: FontWeight.w600, color: Colors.grey),
              ),
              trailing: SvgPicture.asset(
                Assets.imagesHeartIcon2,
                colorFilter:
                    const ColorFilter.mode(Color(0xffF26F3F), BlendMode.srcIn),
                // color: Color(0xffF26F3F),
              ),
            )
          ],
        ),
      ),
    );
  }
}
