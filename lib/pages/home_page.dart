// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sopusons/pages/home_widgets/banner_slide.dart';
import 'package:sopusons/widgets/categories_widget.dart';
import 'package:sopusons/widgets/product_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                child: Container(
                  child: Stack(
                    children: [
                      Container(
                        color: Colors.blue,
                        height: 250,
                      ),
                      Image.asset(
                        'images/assets/gadget background copy 2 (1).png',
                        height: 250,
                        fit: BoxFit.fill,
                      ),
                      Column(
                        children: [
                          Center(
                            child: Container(
                              // color: Colors.amber,
                              height: 100,
                              width: 250,
                              alignment: const Alignment(0, 3),
                              child: Image.asset('images/assets/logo_name.png'),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 16.0, right: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height: 49,
                                  width: 240,
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Search Product Name',
                                          style:
                                              TextStyle(color: Colors.black12),
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.search_rounded,
                                          color:
                                              Color.fromARGB(213, 15, 15, 15),
                                          size: 30,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 6)),
                                const Icon(
                                  Icons.notifications_active_outlined,
                                  color: Colors.white,
                                ),
                                const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 6)),
                                const Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const BannerSlide()
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Row(
                      children: [
                        const Text('Catergories'),
                        const Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'See All',
                              style: TextStyle(color: Colors.blue),
                            ))
                      ],
                    ),
                  ),
                  const CategoriesSlideWidget(),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                  ),
                  Container(
                    height: 80,
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16, top: 10, bottom: 10, right: 16),
                      child: Row(
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Deal of the  day',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 2)),
                              //TODO take timing from the backend
                              Row(
                                children: [
                                  Icon(
                                    Icons.alarm,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '22h 55m 20s remainning',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              )
                            ],
                          ),
                          const Spacer(),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'SEE ALL',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Row(
                        children: [
                          ProductContainer(),
                          SizedBox(
                            width: 10,
                          ),
                          ProductContainer(),
                          SizedBox(
                            width: 10,
                          ),
                          ProductContainer(),
                        ],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Row(
                        children: [
                          ProductContainer(),
                          SizedBox(
                            width: 10,
                          ),
                          ProductContainer(),
                          SizedBox(
                            width: 10,
                          ),
                          ProductContainer(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
              ),
              //TODO change picture
              SizedBox(
                child: Image.asset('images/slide/flash sales .png'),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Container(
                height: 70,
                color: Colors.orange,
              )
            ],
          ), //this is the main column
        ),
      ),
    );
  }
}
