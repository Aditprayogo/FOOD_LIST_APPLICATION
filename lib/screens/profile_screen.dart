import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Card(
        elevation: 20,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  width: 150,
                  height: 200,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(
                      'assets/images/adit.JPG',
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                Row(
                  children: <Widget>[
                    Text('Nama : '),
                    Text('Aditiya Ihzar Eka Prayogo'),
                  ],
                ),
                SizedBox(
                  width: 10,
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Text('Jurusan : '),
                    Text('Teknik Akupuntur'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
