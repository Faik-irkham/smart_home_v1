import 'package:flutter/material.dart';
import 'package:smart_home/shared/theme.dart';

class DeviceContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  final bool isSwitchOn;
  final ValueChanged<bool> onSwitchChanged;
  final String switchLabel;
  final int value;

  const DeviceContainer({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.isSwitchOn,
    required this.onSwitchChanged,
    required this.switchLabel,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '$value%',
                    style: primaryTextStyle.copyWith(
                      fontSize: 32,
                      fontWeight: medium,
                    ),
                  ),
                  Image.asset(
                    imagePath,
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                subtitle,
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
                switchLabel,
                style: primaryTextStyle,
              ),
              Switch(
                value: isSwitchOn,
                activeColor: const Color(0XFF282424),
                activeTrackColor: const Color(0XFFFFB267),
                onChanged: onSwitchChanged,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
