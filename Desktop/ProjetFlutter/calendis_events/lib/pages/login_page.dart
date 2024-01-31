import 'package:flutter/material.dart';
import 'event_list_page.dart'; // Assurez-vous d'importer le fichier de la page de la liste d'événements correctement.

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'CALENDIS events',
              style: TextStyle(color: Colors.white, fontSize: 32.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 80.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'LOGIN',
                filled: true,
                fillColor: Colors.grey[850],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'PASSWORD',
                filled: true,
                fillColor: Colors.grey[850],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
              ),
              obscureText: true,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 24.0),
            TextButton(
              onPressed: () {
                // Insérez ici la logique de connexion.
                // Après une connexion réussie, naviguez vers la page de la liste d'événements.
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EventListPage()),
                );
              },
              child: Text('LOGIN'),
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                primary: Colors.black,
                backgroundColor: Colors.grey[700],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                // Insérez ici la logique pour la récupération de mot de passe.
              },
              child: Text('Mot de passe oublié ?', style: TextStyle(color: Colors.grey)),
            ),
          ],
        ),
      ),
    );
  }
}