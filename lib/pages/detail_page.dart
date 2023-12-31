import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Color indicatorColor = const Color(0xff394a54);
  double indicatorMargin = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      body: Stack(
        children: [
          Image.asset('assets/image_background.png'),
          Container(
            margin: const EdgeInsets.only(
              top: 90,
            ),
            child: Image.asset(
              'assets/image_detail1.png',
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              margin: const EdgeInsets.only(
                top: 66,
                left: 20,
              ),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kWhiteColor,
                border: Border.all(
                  color: kLineDarkColor,
                ),
              ),
              child: const Icon(
                Icons.chevron_left,
              ),
            ),
          ),
          SizedBox.expand(
            child: DraggableScrollableSheet(
              initialChildSize: 0.4,
              minChildSize: 0.4,
              maxChildSize: 0.95,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                    color: kWhiteColor,
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 16,
                          ),
                          Center(
                            child: Container(
                              width: 30,
                              height: 4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: kLineDarkColor,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Poan Chair',
                                style: blackTextStyle.copyWith(
                                  fontSize: 24,
                                  fontWeight: semiBold,
                                ),
                              ),
                              Text(
                                '\$34',
                                style: blackTextStyle.copyWith(
                                  fontSize: 24,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            'IKOE',
                            style: blackTextStyle.copyWith(
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          SizedBox(
                            height: 50,
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Row(
                                  children: [
                                    colorIndicator(const Color(0xff394a54), 0),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    colorIndicator(const Color(0xffeba823), 1),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    colorIndicator(const Color(0xff757477), 2),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    colorIndicator(const Color(0xff29282c), 3),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    colorIndicator(const Color(0xffece9da), 4)
                                  ],
                                ),
                                Container(
                                  width: 40,
                                  height: 40,
                                  margin: EdgeInsets.only(
                                    left: indicatorMargin,
                                  ),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: indicatorColor,
                                    border: Border.all(
                                      width: 3,
                                      color: kWhiteColor,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kWhiteColor,
          boxShadow: [
            BoxShadow(
              color: kGreyColor,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 56,
              height: 56,
              margin: const EdgeInsets.only(
                right: 16,
              ),
              decoration: BoxDecoration(
                color: kWhiteGreyColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Image.asset(
                  'assets/icon_cart.png',
                  width: 24,
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: kBlackColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: Text(
                    'Buy Now',
                    style: whiteTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget colorIndicator(Color color, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          indicatorColor = color;
          indicatorMargin = 5 + (index * 70);
        });
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}
