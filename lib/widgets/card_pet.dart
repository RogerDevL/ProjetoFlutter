import 'package:flutter/material.dart';

class CardPet extends StatelessWidget {
  const CardPet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 140,
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: [
          Image.asset("assets/images/dog.jpg"),
          Text(
            "Golden (filhote)",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Macho",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(Icons.pets)
        ],
      ),
    );
  }
}
