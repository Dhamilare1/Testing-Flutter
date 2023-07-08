import 'package:flutter/material.dart';

class Onboarding1Screen extends StatelessWidget {
const Onboarding1Screen ({super.key});
@override
Widget build (BuildContext context){
  return Container(
    padding: const EdgeInsets.all(10),
    child:  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('Skip', style: Theme.of(context).textTheme.bodyLarge,)
          ],
        )
        

      ],
    ),
  );
  

}

}