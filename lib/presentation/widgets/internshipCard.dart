import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InternshipCard extends StatelessWidget {
  const InternshipCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(),
      child: Column(
        children: [
          Container(),
          Row(
            children: [
              Text(''),
              Image.network(
                  height: 10,
                  width: 10,
                  'https://gratisography.com/wp-content/uploads/2024/03/gratisography-funflower-800x525.jpg'),
            ],
          ),
          Text(''),
          Row(
            children: [Icon(Icons.location_on_outlined), Text('')],
          ),
          Row(
            children: [
              Row(
                children: [Icon(Icons.play_circle_filled_outlined), Text('')],
              ),
              Row(
                children: [Icon(Icons.calendar_today), Text('')],
              )
            ],
          ),
          Row(
            children: [
              Row(
                children: [Icon(Icons.money_outlined), Text('')],
              ),
              Row(
                children: [
                  Text(''),
                  Icon(CupertinoIcons.question_circle),
                ],
              ),
            ],
          ),
          Container(
            child: Text(''),
          ),
          Container(
            child: Text(''),
          ),
          Divider(),
          Row(
            children: [
              TextButton(onPressed: () {}, child: Text('')),
              ElevatedButton(onPressed: () {}, child: Text(''))
            ],
          )
        ],
      ),
    );
  }
}
