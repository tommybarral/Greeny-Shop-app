import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/plant_data.dart';
import '../widgets/title_section.dart';
import '../constants.dart';

class HomeScreenApple extends StatelessWidget {
  const HomeScreenApple({Key? key}) : super(key: key);

  static const routeName = '/home_screen_android';

  @override
  Widget build(BuildContext context) {
    final loadedPlantData = Provider.of<PlantData>(context).plantItems;
    return CupertinoPageScaffold(
      backgroundColor: Colors.grey[200],
      navigationBar: CupertinoNavigationBar(
        border: Border.all(color: Colors.grey.shade50, width: 0),
        backgroundColor: Colors.grey[200],
        leading: CupertinoButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Icon(CupertinoIcons.back, color: Colors.green,),
        ),
        trailing: const Icon(CupertinoIcons.shopping_cart, color: Colors.green,),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 4.0, bottom: 4.0, right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Exclusive Plants \nFor your hobby', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500, color: Colors.green[800],),),
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(pictureProfile),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: double.infinity,
                  child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 12.0, bottom: 8.0, right: 12.0),
                          child: Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.green[800],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(child: Text('Parts', style: TextStyle(color: Colors.white,),)),
                          ),
                        );
                      }),
                ),
                const TitleSection(title: 'Recommended'),
                SizedBox(
                  height: 305,
                  width: double.infinity,
                  child: ListView.builder(
                      itemCount: loadedPlantData.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 4.0, left: 8.0, bottom: 4.0, right: 10.0),
                          child: Container(
                            width: 190,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.network(loadedPlantData[index].imageUrl, fit: BoxFit.cover, height: 190, width: 190,),
                                  Text(loadedPlantData[index].title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.green[800],),),
                                  Row(
                                    children: [
                                      const Text('🌟'),
                                      SizedBox(width: MediaQuery.of(context).size.width * 0.01,),
                                      Text('${loadedPlantData[index].popularity}'),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('\$ ${loadedPlantData[index].price}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Colors.amber[700],),),
                                      CircleAvatar(
                                        radius: 18,
                                        backgroundColor: Colors.green[800],
                                        child: CupertinoButton(
                                          onPressed: () {},
                                          padding: const EdgeInsets.only(right: 1),
                                          child: const Icon(CupertinoIcons.add, color: Colors.white, size: 18,),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                const TitleSection(title: 'Popular Plants'),
                SizedBox(
                  height: 90,
                  child: ListView.builder(
                      itemCount: loadedPlantData.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 10.0, bottom: 4.0, right: 10.0),
                          child: SizedBox(
                            width: 300,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
                                      image: DecorationImage(
                                        image: NetworkImage(loadedPlantData[index].imageUrl),
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                                Container(
                                  height: 80,
                                  width: 220,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 5.0, right: 4.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(loadedPlantData[index].title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.green[800],),),
                                        Row(
                                          children: [
                                            const Text('🌟', style: TextStyle(fontSize: 14),),
                                            SizedBox(width: MediaQuery.of(context).size.width * 0.01,),
                                            Text('${loadedPlantData[index].popularity}', style: const TextStyle(fontSize: 14),),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('\$ ${loadedPlantData[index].price}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Colors.amber[700],),),
                                            CircleAvatar(
                                              radius: 15,
                                              backgroundColor: Colors.green[800],
                                              child: CupertinoButton(
                                                onPressed: () {},
                                                padding: const EdgeInsets.only(right: 1),
                                                child: const Icon(CupertinoIcons.add, color: Colors.white, size: 15,),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
