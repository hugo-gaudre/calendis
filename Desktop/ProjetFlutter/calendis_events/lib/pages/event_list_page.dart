import 'package:flutter/material.dart';

class EventListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        EventTile(eventName: 'Anniversaire Juliette', date: '01 Fév', location: 'LA CIVETTE', city: 'Villeneuve d\'Ascq'),
        EventTile(eventName: 'Concert Trio', date: '03 Fév', location: 'STADE PIERRE MAUROY', city: 'Villeneuve d\'Ascq'),
        EventTile(eventName: 'Spectacle Mesmer', date: '10 Fév', location: 'THEATRE SEBASTOPOL', city: 'Lille'),
        EventTile(eventName: 'Saint Valentin', date: '14 Fév', location: 'RESTAURANT LOVE', city: 'Lille'),
        EventTile(eventName: 'Repas de famille', date: '17 Fév', location: 'MAISON PARENTS', city: 'Lille'),
        EventTile(eventName: 'Examens', date: '21 Fév', location: 'EFFICOM', city: 'Lille'),
      ],
    );
  }
}

class EventTile extends StatelessWidget {
  final String eventName;
  final String date;
  final String location;
  final String city;

  const EventTile({
    Key? key,
    required this.eventName,
    required this.date,
    required this.location,
    required this.city,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(eventName, style: TextStyle(color: Colors.white, fontSize: 18.0)),
                SizedBox(height: 4.0),
                Text(location, style: TextStyle(color: Colors.white70)),
                SizedBox(height: 2.0),
                Text(city, style: TextStyle(color: Colors.white54)),
              ],
            ),
          ),
          Text(date, style: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}