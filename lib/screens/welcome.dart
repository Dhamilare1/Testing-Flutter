import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Container(
      width: 428,
      height: 926,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(color: Color(0xFFFEFDFA)),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 100,
                  ),
                  Column(
                    children: [
                      Text('Dams', style:Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),),
                      Text('....Save a Life', style:Theme.of(context).textTheme.headlineLarge?.copyWith(color: const Color(0xff616161), fontSize: 12))],
                  ),
                ],
              ),
              TextButton(onPressed: (){ Navigator.pushNamed(context, 'onboarding_1');}, child: Text('continue >>>>'))

            ],
            
          ),
          Positioned(
              right: 0,
              bottom: 0,
              child: Image.asset(
                'assets/images/bigheart.png',
                height: 250,
              ))
        ],
      ),
    );
  }
}
