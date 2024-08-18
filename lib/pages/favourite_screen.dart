import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sopusons/pages/home_page.dart';
import 'package:sopusons/widgets/bottom_navigation.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.purple,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BottomNavigation(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Handle icon press
            },
            icon: const Icon(
              Icons.shopping_cart,
            ), // Replace with your desired icon
          ),
        ],
        title: Text(
          'Favourites',
          style: GoogleFonts.nunito(
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      //TODO convert to reusable cantainer for the favourite section
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            FavoriteCard(),
            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            FavoriteCard(),
          ],
        ),
      ),
    );
  }
}

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 194, 182, 182),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0.3, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      height: 220,
      width: 550,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'images/assets/wrist.png',
                  width: 100,
                ),
                Spacer(),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // TODO name of item collected from the api
                    Text('Apple Smartwatch Series 6'),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 6),
                    ),
                    Row(
                      children: [
                        Text('N 800,000'),
                        SizedBox(
                          width: 20,
                        ),
                        Text('N 000,000')
                      ],
                    ),
                  ],
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0, right: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'In stock',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 6)),
            Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 100,
                    height: 40,
                    child: Center(
                      child: Text('Remove',
                          style: GoogleFonts.nunito(color: Colors.blue)),
                    )),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 120,
                  height: 40,
                  child: Center(
                    child: Text('Buy Now',
                        style: GoogleFonts.nunito(
                            color: Colors.white, fontWeight: FontWeight.w600)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
