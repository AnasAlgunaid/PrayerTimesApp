import 'package:flutter/material.dart';
import 'package:prayer_time/theme/pallete.dart';

class PrayerTimeItem extends StatelessWidget {
  final Icon icon;
  final String prayer;
  final String time;
  const PrayerTimeItem({
    super.key,
    required this.icon,
    required this.prayer,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: icon,
          title: Text(
            prayer,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          trailing: Text(
            time,
            style: const TextStyle(fontSize: 18),
          ),
        ),
        const Divider(
          color: Pallete.secondaryOrangeColor,
          indent: 16,
          endIndent: 16,
        ),
      ],
    );
  }
}




// EasyInfiniteDateTimeLine(
//           controller: controller,
//           firstDate: DateTime(2024),
//           focusDate: todayDate(),
//           lastDate: DateTime(2024, 12, 31),
//           onDateChange: (selectedDate) {
//             setState(() {
//               focusDate = selectedDate;
//             });
//           },
//         ),