import 'package:flutter/material.dart';

Widget CustomCard(String title, String info) {
  return Expanded(
    child: Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 6.0,
          ),
          Text(
            info,
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    )
  );
}