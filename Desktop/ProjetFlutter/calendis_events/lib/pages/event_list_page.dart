import 'package:calendis_events/pages/login_page.dart';
import 'package:flutter/material.dart';

class EventListPage extends StatefulWidget {
  @override
  _EventListPageState createState() => _EventListPageState();
}

class _EventListPageState extends State<EventListPage> {
  int _currentIndex = 1; // Set the default selected index to 'Home'

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Calendis Events'),
        backgroundColor: Colors.grey[850],
      ),
      body: ListView(
        children: <Widget>[
          buildEventItem('Anniversaire Juliette', '01 Fév', 'LA CIVETTE', 'Villeneuve d\'Ascq'),
          buildEventItem('Concert Trio', '03 Fév', 'STADE PIERRE MAUROY', 'Villeneuve d\'Ascq'),
          buildEventItem('Spectacle Mesmer', '10 Fév', 'THEATRE SEBASTOPOL', 'Lille'),
          buildEventItem('Saint Valentin', '14 Fév', 'RESTAURANT LOVE', 'Lille'),
          buildEventItem('Repas de famille', '17 Fév', 'MAISON PARENTS', 'Lille'),
          buildEventItem('Examens', '21 Fév', 'EFFICOM', 'Lille'),
          buildEventItem('Examens', '21 Fév', 'EFFICOM', 'Lille'),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[850],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[600],
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app),
            label: 'Deconnexion',
          ),
        ],
        onTap: (index) {
          // Update the selected index when a tab is tapped
          setState(() {
            _currentIndex = index;
          });

          // Handle navigation based on the selected tab
          if (index == 0) {
            // Navigate to the calendar page
          } else if (index == 1) {
             Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EventListPage()),
                );
          } else if (index == 2) {
             Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
          }
        },
      ),
    );
  }

  Widget buildEventItem(String eventName, String date, String location, String city) {
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
                Text(eventName, style: TextStyle(color: Color.fromARGB(181, 166, 181, 1), fontSize: 18.0)),
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
