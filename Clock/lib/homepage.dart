import 'package:Clock/clock_view.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class HomepagePage extends StatefulWidget {

  @override
  _HomepagePageState createState() => _HomepagePageState();
}

class _HomepagePageState extends State<HomepagePage> {

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formattedTime = DateFormat('HH:mm').format(now);
    var formattedDate = DateFormat('EEE, d MMM').format(now);
    var timezoneString = now.timeZoneOffset.toString().split('.').first;
    var offsetSign = '';

    if (!timezoneString.startsWith('-')) offsetSign = '+';
    print(timezoneString);

    return Scaffold(
      backgroundColor: Color(0xFF2D2F41),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Clock',
             style: TextStyle(color: Colors.white, fontSize: 24),
             ),
             SizedBox(height: 32),
             Text(
               formattedTime,
             style: TextStyle(color: Colors.white, fontSize: 64),
             ),
             Text(
                formattedDate,
             style: TextStyle(color: Colors.white, fontSize: 20),
             ),
            ClockView(),
            Text(
              'Timezone',
             style: TextStyle(color: Colors.white, fontSize: 24),
             ),
            SizedBox(height: 16),
            Row(
               children: <Widget>[
                 Icon(Icons.language,
                  color: Colors.white
                  ),
                  SizedBox(width: 16),
                  Text(
                    'UTC' + offsetSign + timezoneString,
                  style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
               ],
             )
          ],
        )
      )
    );
  }
}
