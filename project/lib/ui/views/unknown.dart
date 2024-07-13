import 'package:flutter/material.dart';

class Unknown extends StatelessWidget {
  const Unknown({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Center(
            child: Text("data not found"),
          )
        ],
      ),

    );
  }
}