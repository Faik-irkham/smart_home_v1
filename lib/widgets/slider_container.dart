// slider_container.dart
import 'package:flutter/material.dart';
import 'package:smart_home/shared/theme.dart';

class SliderContainer extends StatelessWidget {
  final String label;
  final double value;
  final ValueChanged<double> onChanged;
  final String imagePath;

  const SliderContainer({
    Key? key,
    required this.label,
    required this.value,
    required this.onChanged,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
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
                  overlayShape: const RoundSliderOverlayShape(
                    overlayRadius: 31,
                  ),
                  inactiveTrackColor: const Color(0XFF393637),
                  overlayColor: const Color.fromRGBO(107, 104, 105, 20),
                ),
                child: Slider(
                  min: 0,
                  max: 100,
                  value: value,
                  inactiveColor: const Color(0XFF393637),
                  thumbColor: const Color(0XFFF8F8F8),
                  onChanged: onChanged,
                ),
              ),
            ),
            Image.asset(
              imagePath,
              width: 24,
              height: 24,
            ),
          ],
        )
      ],
    );
  }
}
