import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tugas_navigasi/data/data.dart';

class DetailPage extends StatelessWidget {
  final TourismPlace tourismPlace;

  const DetailPage({super.key, required this.tourismPlace});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tourismPlace.name),
      ),
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Image.network(
                  tourismPlace.imageUrls[0],
                  fit: BoxFit.fitWidth,
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text('Description : '),
                          SizedBox(height: 16.0),
                          Text(tourismPlace.description),
                          SizedBox(height: 16.0),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  Text('Open Days :  '),
                                  Text(tourismPlace.openDays),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('     Open Time :  '),
                                  Text(tourismPlace.openTime),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 16.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Price : '),
                              Text(tourismPlace.ticketPrice)
                            ],
                          ),
                          SizedBox(height: 16.0),
                          Row(
                            children: [
                              Text('Location : '),
                              Text(tourismPlace.location)
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
