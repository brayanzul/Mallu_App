import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String val = "hai";
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
                  letterSpacing: 1,
                ),
              ),
              Text(
                "Anthropologie",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
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
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 20,
                  ),
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildColumnAtTop("Candels", isSelected: true),
                      buildColumnAtTop("Vases"),
                      buildColumnAtTop("Bins"),
                      buildColumnAtTop("Floral"),
                      buildColumnAtTop("Decor"),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 18),
                        buildColumnWithRow("1", "Elemental Tin Candel", "31"),
                        buildColumnWithRow("2", "Summer Candel", "25"),
                        buildColumnWithRow("3", "Winter Candel", "43"),
                        buildColumnWithRow("4", "Dummy Candel", "65"),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const LineBar(),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                      children: const [
                        Text(
                          "Holiday Special",
                          style: TextStyle(fontSize: 24),
                        ),
                        Spacer(),
                        Text(
                          "View All",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        buildbottomContainer("6", "Transparent candle", "16 oz", "29"),
                        buildbottomContainer("5", "white candle", "16 oz", "34"),
                        buildbottomContainer("7", "Coconut Milk Bath", "16 oz", "21"),
                        buildbottomContainer("8", "Purple Candle", "16 oz", "14"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildbottomContainer(String img, String title, String subTitle, String price) {
    return Container(
      height: 150,
      width: 260,
      margin: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(28),
            child: SizedBox(
                height: 120,
                width: 100,
                child: Image.asset(
                  "assets/images/candel$img.jpg",
                  fit: BoxFit.cover,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Text(
                  subTitle,
                  style: const TextStyle(color: Colors.grey, fontSize: 18),
                ),
                const Spacer(),
                Text(
                  "\$ $price",
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding buildColumnWithRow(String img, String title, String price) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Container(
            height: 200,
            width: 160,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/candel$img.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "\$ $price",
            style: const TextStyle(
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }

  Column buildColumnAtTop(String text, {bool isSelected = false}) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.black : Colors.grey,
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        if (isSelected)
          Container(
            height: 5,
            width: 5,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
      ],
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

class LineBar extends StatelessWidget {
  const LineBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 40),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), bottomLeft: Radius.circular(10))),
      child: Container(
        height: 5,
        width: 100,
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
        ),
      ),
    );
  }
}
