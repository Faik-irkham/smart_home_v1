import 'package:flutter/material.dart';
import 'package:smart_home/shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF211D1D),
      body: Stack(
        children: [
          Positioned.fill(
            bottom: MediaQuery.of(context).size.height / 3,
            child: Image.asset(
              'assets/bdr.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        height: MediaQuery.of(context).size.height / 4.5,
                        width: MediaQuery.of(context).size.width / 2.2,
                        decoration: BoxDecoration(
                          color: const Color(0XFF282424),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '36%',
                                      style: primaryTextStyle.copyWith(
                                        fontSize: 32,
                                        fontWeight: medium,
                                      ),
                                    ),
                                    Image.asset(
                                      'assets/humidity.png',
                                      width: 24,
                                      height: 24,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Humidifier \nAir',
                                  style: primaryTextStyle,
                                ),
                              ],
                            ),
                            const Divider(
                              color: Color(0XFF393535),
                              height: 1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Mode 2',
                                  style: primaryTextStyle,
                                ),
                                Switch(
                                  value: true,
                                  activeColor: const Color(0XFF282424),
                                  activeTrackColor: const Color(0XFFFFB267),
                                  onChanged: (value) {},
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        height: MediaQuery.of(context).size.height / 4.5,
                        width: MediaQuery.of(context).size.width / 2.2,
                        decoration: BoxDecoration(
                          color: const Color(0XFF282424),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '73%',
                                      style: primaryTextStyle.copyWith(
                                        fontSize: 32,
                                        fontWeight: medium,
                                      ),
                                    ),
                                    Image.asset(
                                      'assets/clean.png',
                                      width: 24,
                                      height: 24,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Purifier\nAir',
                                  style: primaryTextStyle,
                                ),
                              ],
                            ),
                            const Divider(
                              color: Color(0XFF393535),
                              height: 1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'On',
                                  style: primaryTextStyle,
                                ),
                                Switch(
                                  value: true,
                                  activeColor: const Color(0XFF282424),
                                  activeTrackColor: const Color(0XFFFFB267),
                                  onChanged: (value) {},
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 20,
                      right: 20,
                      left: 20,
                    ),
                    height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: const Color(0XFF282424),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Main light',
                              style: primaryTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: SliderTheme(
                                    data: SliderTheme.of(context).copyWith(
                                      trackHeight: 6,
                                      activeTrackColor: const Color(0XFFFFB267),
                                      thumbShape: const RoundSliderThumbShape(
                                        enabledThumbRadius: 15,
                                      ),
                                      overlayShape:
                                          const RoundSliderOverlayShape(
                                        overlayRadius: 31,
                                      ),
                                      inactiveTrackColor:
                                          const Color(0XFF393637),
                                      overlayColor: const Color.fromRGBO(
                                          107, 104, 105, 20),
                                    ),
                                    child: Slider(
                                      min: 0,
                                      max: 100,
                                      value: 65,
                                      inactiveColor: const Color(0XFF393637),
                                      thumbColor: const Color(0XFFF8F8F8),
                                      onChanged: (value) {},
                                    ),
                                  ),
                                ),
                                Image.asset(
                                  'assets/Lamp.png',
                                  width: 24,
                                  height: 24,
                                ),
                              ],
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Floor lamp',
                              style: primaryTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: SliderTheme(
                                    data: SliderTheme.of(context).copyWith(
                                      trackHeight: 6,
                                      activeTrackColor: const Color(0XFFFFB267),
                                      thumbShape: const RoundSliderThumbShape(
                                        enabledThumbRadius: 15,
                                      ),
                                      overlayShape:
                                          const RoundSliderOverlayShape(
                                        overlayRadius: 31,
                                      ),
                                      inactiveTrackColor:
                                          const Color(0XFF393637),
                                      overlayColor: const Color.fromRGBO(
                                          107, 104, 105, 20),
                                    ),
                                    child: Slider(
                                      min: 0,
                                      max: 100,
                                      value: 45,
                                      inactiveColor: const Color(0XFF393637),
                                      thumbColor: const Color(0XFFF8F8F8),
                                      onChanged: (value) {},
                                    ),
                                  ),
                                ),
                                Image.asset(
                                  'assets/Tablelamp.png',
                                  width: 24,
                                  height: 24,
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 15,
            top: 60,
            right: 15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.arrow_back_ios_new,
                  color: Color(0XFFF8F8F8),
                  size: 24,
                ),
                Text(
                  'Bedroom',
                  style: primaryTextStyle.copyWith(
                    fontSize: 17,
                    fontWeight: semiBold,
                  ),
                ),
                Image.asset(
                  'assets/bell.png',
                  width: 24,
                  height: 24,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        backgroundColor: const Color(0XFF211D1D),
        selectedItemColor: const Color(0XFFFFB267),
        unselectedItemColor: const Color(0XFFF8F8F8),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 24,
            ),
            label: 'search',
          ),
        ],
      ),
    );
  }
}
