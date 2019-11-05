import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    
    return Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Events"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("AIP Office"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ExpansionTile(
              title: Text("Wings"),
              trailing: Icon(Icons.keyboard_arrow_down),
              children: <Widget>[
                ListTile(
                  title: Text("Spiritual Care"),
                  trailing: Icon(Icons.arrow_forward),
                ),
                ListTile(
                  title: Text("Socio Care"),
                  trailing: Icon(Icons.arrow_forward),
                ),
                ListTile(
                  title: Text("Edu Care"),
                  trailing: Icon(Icons.arrow_forward),
                ),
                ListTile(
                  title: Text("Medical Care"),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ],
            ),
            ExpansionTile(
              title: Text("Media"),
              trailing: Icon(Icons.keyboard_arrow_down),
              children: <Widget>[
                ListTile(
                  title: Text("Images"),
                  trailing: Icon(Icons.arrow_forward),
                ),
                ListTile(
                  title: Text("Videos"),
                  trailing: Icon(Icons.arrow_forward),
                ),
                ListTile(
                  title: Text("Audio"),
                  trailing: Icon(Icons.arrow_forward),
                ),
                ListTile(
                  title: Text("Articles"),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ],
            ),
            
          ],
        ),
      );
  }
    
}