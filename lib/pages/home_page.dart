import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smart_home/shared/theme.dart';
import 'package:smart_home/widgets/device_container.dart';
import 'package:smart_home/widgets/slider_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isHumidifierOn = false;
  bool isPurifierOn = false;
  double mainLightValue = 65;
  double floorLampValue = 45;
  double opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 200), () {
      setState(() {
        opacity = 1.0;
      });
    });
  }

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
            child: AnimatedOpacity(
              opacity: opacity,
              duration: const Duration(seconds: 1),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DeviceContainer(
                          title: 'Humidifier',
                          subtitle: 'Humidifier\nAir',
                          imagePath: 'assets/humidity.png',
                          isSwitchOn: isHumidifierOn,
                          onSwitchChanged: (value) {
                            setState(() {
                              isHumidifierOn = value;
                            });
                          },
                          switchLabel: 'Mode 2',
                          value: 36,
                        ),
                        DeviceContainer(
                          title: 'Purifier',
                          subtitle: 'Purifier\nAir',
                          imagePath: 'assets/clean.png',
                          isSwitchOn: isPurifierOn,
                          onSwitchChanged: (value) {
                            setState(() {
                              isPurifierOn = value;
                            });
                          },
                          switchLabel: 'On',
                          value: 73,
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
                          SliderContainer(
                            label: 'Main light',
                            value: mainLightValue,
                            onChanged: (value) {
                              setState(() {
                                mainLightValue = value;
                              });
                            },
                            imagePath: 'assets/Lamp.png',
                          ),
                          SliderContainer(
                            label: 'Floor lamp',
                            value: floorLampValue,
                            onChanged: (value) {
                              setState(() {
                                floorLampValue = value;
                              });
                            },
                            imagePath: 'assets/Tablelamp.png',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
    );
  }
}
