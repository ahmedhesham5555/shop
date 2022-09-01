import 'package:flutter/material.dart';

class Window extends StatefulWidget {
  final String word;

  const Window(this.word, {Key? key}) : super(key: key);
  @override
  State<Window> createState() => _Window();
}

class _Window extends State<Window> {
  int num = 0;
  bool fav = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xff1e152f)),
      child: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(
              icon: const Icon(Icons.favorite_border, color: Colors.white),
              onPressed: () {
                setState(() {
                  fav = !fav;
                  fav ? Colors.red : Colors.white;
                });
              }),
          Text(
            widget.word,
            style: const TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const Icon(
            Icons.add_shopping_cart_sharp,
            color: Colors.white,
          ),
        ]),
        const Icon(
          Icons.photo,
          size: 100,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          RawMaterialButton(
            fillColor: const Color(0xFF4C4F5E),
            shape: const CircleBorder(side: BorderSide.none),
            onPressed: () {
              setState(() {
                num--;
                if (num < 0) {
                  num = 0;
                }
              });
            },
            child: const Icon(
              Icons.remove,
              color: Colors.white,
            ),
          ),
          Text(
            "$num",
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          RawMaterialButton(
            fillColor: const Color(0xFF4C4F5E),
            shape: const CircleBorder(side: BorderSide.none),
            onPressed: () {
              setState(() {
                num++;
              });
            },
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ]),
      ]),
    );
  }
}
