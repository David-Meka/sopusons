import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sopusons/pages/home_page.dart';
import 'package:sopusons/widgets/bottom_navigation.dart';
import 'package:sopusons/widgets/categories_widget.dart';
import 'package:sopusons/widgets/product_container.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:sopusons/pages/home_page.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: null,
        title: const Text('Explore'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) => const BottomNavigation(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: Container(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset('images/slide/Group 514.png'),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 26,
                ),
                child: Text(
                  'Latop Brands',
                  style: GoogleFonts.nunito(color: Colors.blue, fontSize: 20),
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              const CategoriesSlideWidget(),
              const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Container(
                color: Colors.blue,
                height: 55,
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10.0),
                child: Row(
                  children: [
                    Text(
                      'Laptops',
                      style: GoogleFonts.nunito(color: Colors.white),
                    ),
                    const Spacer(),
                    //TODO change this button the container

                    TextButton.icon(
                      label: const Text('See All'),

                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        // backgroundColor: Colors.white,
                        overlayColor: Colors.white,
                        foregroundColor: Colors.white,
                      ),
                      icon: const Icon(Icons.arrow_right_alt),
                      // child
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
              ),
              const ProductRow(),
              const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              const ProductRow(),
              const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
              Image.asset('images/slide/Group 34015.jpg'),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Container(
                padding: const EdgeInsets.only(
                  left: 26,
                ),
                child: Text(
                  'Phone Brands',
                  style: GoogleFonts.nunito(
                    fontSize: 20,
                    color: Colors.red,
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              const CategoriesSlideWidget(),
              const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Container(
                color: const Color.fromARGB(255, 247, 25, 10),
                height: 55,
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10.0),
                child: Row(
                  children: [
                    Text(
                      'Phone',
                      style: GoogleFonts.nunito(color: Colors.white),
                    ),
                    const Spacer(),
                    //TODO change this button the container

                    TextButton.icon(
                      label: const Text('See All'),

                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        // backgroundColor: Colors.white,
                        overlayColor: Colors.white,
                        foregroundColor: Colors.white,
                      ),
                      icon: const Icon(Icons.arrow_right_alt),
                      // child
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
              ),
              const ProductRow(),
              const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              const ProductRow(),
              const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
            ],
          ),
        ),
      ),
    );
  }
}
