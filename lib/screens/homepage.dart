import 'package:adhan/adhan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';
import 'package:prayer_time/helpers/constants.dart';
import 'package:prayer_time/theme/pallete.dart';

import '../widgets/prayer_time_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final gDate = DateFormat('EEE, d MMMM y').format(now);
    final hDate = HijriCalendar.now();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Pallete.whiteBackground,
        toolbarHeight: 80,
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Pallete.secondaryOrangeColor,
                  child: Icon(
                    Icons.location_on,
                    color: Pallete.primaryOrangeColor,
                  ),
                ),
              ),
              Constants.w8,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Saudi Arabia, Riyadh",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Pallete.secondaryTextColor,
                      fontSize: 18,
                    ),
                  ),
                  Constants.h2,
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "Change location",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Pallete.primaryOrangeColor,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 180,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Card(
                        margin: const EdgeInsets.all(0),
                        elevation: 0,
                        color: Pallete.secondaryOrangeColor,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Next Prayer",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Pallete.secondaryTextColor,
                                ),
                              ),
                              const Text(
                                "Duhur",
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                  color: Pallete.primaryOrangeColor,
                                ),
                              ),
                              TimerCountdown(
                                format:
                                    CountDownTimerFormat.hoursMinutesSeconds,
                                spacerWidth: 3,
                                enableDescriptions: false,
                                timeTextStyle: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w800,
                                  color: Pallete.primaryTextColor,
                                ),
                                colonsTextStyle: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w800,
                                  color: Pallete.primaryTextColor,
                                ),
                                endTime: DateTime.now().add(
                                  const Duration(
                                    hours: 8,
                                    minutes: 27,
                                    seconds: 34,
                                  ),
                                ),
                              ),
                              const Text(
                                "12:57 PM",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Pallete.secondaryTextColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Constants.w20,
                    const Expanded(
                      child: Card(
                        margin: EdgeInsets.all(0),
                        elevation: 0,
                        color: Pallete.containerBackgroundLight,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(24.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Previous Prayer",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Pallete.secondaryTextColor,
                                ),
                              ),
                              Text(
                                "Fajr",
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                  color: Pallete.primaryOrangeColor,
                                ),
                              ),
                              Text(
                                "12:57 PM",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Pallete.secondaryTextColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Constants.h16,
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Pallete.containerBackgroundLight,
                  borderRadius: BorderRadius.circular(23),
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        hDate.toFormat('dd MMMM, yyyy'),
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Pallete.primaryTextColor,
                          fontSize: 18,
                        ),
                      ),
                      subtitle: Text(
                        gDate,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Pallete.secondaryTextColor,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const PrayerTimeItem(
                      icon: Icon(Icons.sunny),
                      prayer: "Fajr",
                      time: "05:00 AM",
                    ),
                    const PrayerTimeItem(
                      icon: Icon(Icons.sunny),
                      prayer: "Fajr",
                      time: "05:00 AM",
                    ),
                    const PrayerTimeItem(
                      icon: Icon(Icons.sunny),
                      prayer: "Fajr",
                      time: "05:00 AM",
                    ),
                    const PrayerTimeItem(
                      icon: Icon(Icons.sunny),
                      prayer: "Fajr",
                      time: "05:00 AM",
                    ),
                    const PrayerTimeItem(
                      icon: Icon(Icons.sunny),
                      prayer: "Fajr",
                      time: "05:00 AM",
                    ),
                    const PrayerTimeItem(
                      icon: Icon(Icons.sunny),
                      prayer: "Fajr",
                      time: "05:00 AM",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
