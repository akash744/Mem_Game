import 'package:flutter/material.dart';

Widget customCard(String title, String value) {
  return Expanded(
    child: Container(
      margin: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}
