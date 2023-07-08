import 'package:firstapp/widgets/button.dart';
import 'package:flutter/material.dart';

class Onboarding1Screen extends StatelessWidget {
  const Onboarding1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:const EdgeInsets.all(10),
        child:  Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              InkWell(
                onTap: (){
                   Navigator.pop(context);
                },
                child:Text('Skip', style: Theme.of(context).textTheme.bodyLarge,),
              ),
              ],
            ),
           const Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

              ],
            )
          ],
        ),
      ),
    );
  }
}
