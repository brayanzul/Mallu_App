import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.grey[200],
        elevation: 0,
        leading: Image.asset("assets/images/hamburger.png"),
        actions: [
          Container(
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            margin: const EdgeInsets.all(10),
            child: Image.asset("assets/images/SEARCH.png"),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: const [
              SizedBox(
                width: 15,
              ),
              Text(
                "Shop ",
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
              Text(
                "Anthropologie",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildElevatedButton("Home Decore", isSelected: true),
              buildElevatedButton("Bath & Body"),
              buildElevatedButton("Beauty"),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 20,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  ElevatedButton buildElevatedButton(String text, {bool isSelected = false}) {
    return ElevatedButton(
      onPressed: () {
        print("Button Pressed");
      },
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.grey[300],
          fontSize: 18,
        ),
      ),
    );
  }
}
