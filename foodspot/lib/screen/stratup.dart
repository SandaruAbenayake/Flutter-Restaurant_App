import 'package:flutter/material.dart';
import 'package:foodspot/widget/basicButton.dart';

class Stratup extends StatelessWidget {
  const Stratup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/background.jpg"),fit: BoxFit.cover)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              verticalDirection: VerticalDirection.up,
              children: [
                const SizedBox(height:30,),
                Basicbutton(function: (){}, fontColor: Colors.white, fontSize: 15, bColor: Colors.black, width: 0, lable: "CONTINUE AS GUEST"),
                const SizedBox(height:30,),
                Basicbutton(function: (){}, fontColor: Colors.black, fontSize: 15, bColor: Colors.white, width: 0, lable: "LOG IN/SIGN UP"),
                const SizedBox(height:480,),
                const Center(
                  child: Text(
                    "FoodSpot",
                    style: TextStyle(
                      color: Color(
                          0xFF4E342E), 
                      fontSize: 58.0, 
                      fontWeight: FontWeight.w900, 
                      fontFamily: 'Roboto', 
                      letterSpacing:
                          1.5, // 
                      shadows: [
                        Shadow(
                          offset: Offset(5.0, 8.0), 
                          blurRadius: 9.0, 
                          color: Color.fromARGB(
                              157, 228, 196, 16), 
                        ),
                      ],
                    ),
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
