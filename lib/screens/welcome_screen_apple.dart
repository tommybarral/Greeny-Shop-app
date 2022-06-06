import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class WelcomeScreenApple extends StatelessWidget {
  const WelcomeScreenApple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.infinity,
            color: Colors.black45,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.07,),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: const [
                        Icon(CupertinoIcons.search, size: 65, color: Colors.white,),
                        Text('Greeny \nShop app', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white,),),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Make Your Greener House', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600, color: Colors.white,),),
                        Text('Decorate your house to make it look greener', style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic, color: Colors.white,),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 55,
                          width: 125,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Colors.white, width: 1),
                          ),
                          child: CupertinoButton(
                            onPressed: () {
                              // go to Content screen.
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text('Next', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white,),
                                ),
                                Icon(CupertinoIcons.arrow_right, size: 22, color: Colors.white,),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
