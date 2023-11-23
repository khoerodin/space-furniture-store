import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class HomePopularItem extends StatelessWidget {
  final String title;
  final String imageURL;
  final int price;
  final bool isWishlist;

  const HomePopularItem({
    super.key,
    required this.title,
    required this.imageURL,
    required this.price,
    required this.isWishlist,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.only(left: 24),
        child: Column(
          children: [
            Container(
              width: 200,
              height: 180,
              decoration: BoxDecoration(
                color: kWhiteGreyColor,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(10),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
