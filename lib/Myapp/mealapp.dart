import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:money_management/Myapp/randommodel.dart';

import 'package:money_management/Myapp/slidermodel.dart';


class MealApp extends StatelessWidget {
  const MealApp({Key? key}) : super(key: key);

  Future<SliderModel> getdata() async {
    Response response = await get(
        Uri.parse("https://www.themealdb.com/api/json/v1/1/search.php?f=a"));
    if (response.statusCode == 200) {
      final slidermodel = sliderModelFromJson(response.body);
      return slidermodel;
    } else {
      throw Exception('Api Error');
    }
  }


  Future<RandomModel> userdata() async {
    Response response = await get(
        Uri.parse('https://randomuser.me/api/?results=10#'));
    if (response.statusCode == 200) {
      final randommodel = randomModelFromJson(response.body);
      return randommodel;
    } else {
      throw Exception('User data Error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MEAlS APP'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: SafeArea(
        child: FutureBuilder(
          future: getdata(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasData) {
              return Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(child: Text("Todays Special Menu",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.blueGrey,
                      height: 200,
                      width: double.infinity,
                      child: Card(
                        shape: OutlineInputBorder(borderRadius: BorderRadius
                            .circular(10)),
                        child: CarouselSlider.builder(
                          itemCount: snapshot.data!.meals.length,
                          itemBuilder: (context, index, realIndex) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50),
                              child: SizedBox(
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox(
                                        child: Image.network(
                                            snapshot.data!.meals[index]
                                                .strMealThumb),
                                      ),
                                    ),
                                    Expanded(flex: 2,
                                      child: ListView(
                                        scrollDirection: Axis.vertical,
                                        children: [
                                          Center(child: Text(
                                            snapshot.data!.meals[index].strMeal,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold),)),
                                          Text(snapshot
                                              .data!.meals[index]
                                              .strInstructions)
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                          options:
                          CarouselOptions(
                              scrollDirection: Axis.horizontal, autoPlay: true),
                        ),
                      ),
                    ),
                  ),
                  const Center(child: Text("Top User", style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),),),
                  Container(color: Colors.green,
                    child: FutureBuilder(
                      future: userdata(), builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(child: LinearProgressIndicator());
                      }
                      if (snapshot.hasData) {
                        return Container(
                          child: CarouselSlider.builder(
                              itemCount: snapshot.data!.results.length,
                              itemBuilder: (context, index, realIndex) {
                                return ListView(
                                  children: [
                                    Text('data'),
                                  ],
                                );
                              },
                              options: CarouselOptions(
                                  scrollDirection: Axis.vertical)),
                        );
                      }
                      return const Center(child: Text('NO Data'));
                    },),
                  )

                ],
              );
            } else {
              return const Text('User no data');
            }
          },
        ),
      ),
    );
  }
}
