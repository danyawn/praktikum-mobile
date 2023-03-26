import 'package:flutter/material.dart';
import '../data/data.dart';

import 'detailpage.dart';
import 'login.dart';

class HomePage extends StatelessWidget {
  var username;

  HomePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    final TourismPlace tourismPlace;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Login as $username"),
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Splash();
                  }));
                },
                child: Text('Logout')),
          ],
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailPage(tourismPlace: tourismPlaceList[index]);
                }));
              },
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Image.network(
                        tourismPlaceList[index].imageUrls[0],
                        fit: BoxFit.fitWidth,
                        height: 200,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tourismPlaceList[index].name,
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            SizedBox(height: 16.0),
                            SizedBox(height: 16.0),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text("Location : " +
                                        tourismPlaceList[index].location),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ));
        },
      ),
    );
  }
}
