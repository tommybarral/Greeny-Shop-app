import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/plant_data.dart';
import '../constants.dart';
import '../widgets/title_section.dart';

class HomeScreenAndroid extends StatelessWidget {
  const HomeScreenAndroid({Key? key}) : super(key: key);

  static const routeName = '/home_screen_android';

  @override
  Widget build(BuildContext context) {
    final loadedPlantData = Provider.of<PlantData>(context).plantItems;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back, color: Colors.green,),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.shopping_cart, color: Colors.green,),
          )
        ],
      ),
      body: SafeArea(
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
                      itemCount: loadedPlantData.length,
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
                  height: 300,
                  child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 8.0, bottom: 8.0, right: 10.0),
                          child: Container(
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 2.0, left: 8.0, bottom: 1.0, right: 8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('\$ ${loadedPlantData[index].price}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: Colors.amber[700],),),
                                        CircleAvatar(
                                          radius: 18,
                                          backgroundColor: Colors.green[900],
                                          child: IconButton(
                                            onPressed: () {},
                                            iconSize: 18,
                                            color: Colors.white,
                                            icon: const Icon(Icons.add),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                const TitleSection(title: 'PopularPlants'),
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
                                    padding: const EdgeInsets.only(left: 8.0, right: 4.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
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
                                            Text('\$ ${loadedPlantData[index].price}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: Colors.amber[700],),),
                                            CircleAvatar(
                                              radius: 18,
                                              backgroundColor: Colors.green[900],
                                              child: IconButton(
                                                onPressed: () {},
                                                iconSize: 18,
                                                color: Colors.white,
                                                icon: const Icon(Icons.add),
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
