import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sopusons/bottom_navigation.dart';
import 'package:sopusons/pages/profile_page/FAQS/faqs_page.dart';
import 'package:sopusons/pages/profile_page/Legal/Legal_page.dart';
import 'package:sopusons/pages/profile_page/coupons_and_vouchers/coupons_page.dart';
import 'package:sopusons/pages/profile_page/customer_service/customer_service.dart';
import 'package:sopusons/pages/profile_page/order_Tracking/Order_tracking.dart';
import 'package:sopusons/pages/profile_page/order_historry/order_history.dart';
import 'package:sopusons/pages/profile_page/profil_info/profile_info.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          elevation: null,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BottomNavigation()));
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          centerTitle: true,
          // backgroundColor: Colors.black,
          title: const Text(
            'Profile',
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.shopping_cart),
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          const Divider(),
          Container(
            padding: const EdgeInsets.only(top: 10, left: 20.0, right: 20.0),
            child: Column(
              children: [
                // const Divider(),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      'Welcome Back, User',
                      style: GoogleFonts.nunito(
                          color: const Color.fromARGB(255, 255, 145, 0),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Text('Email@example.com'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  height: 55,
                  width: 400,
                  color: const Color.fromARGB(255, 116, 182, 236),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.storefront_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Text(
                        'Become a Vendor',
                        style: GoogleFonts.nunito(
                            fontSize: 20, color: Colors.white),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'My Account',
                      style: GoogleFonts.nunito(
                          color: Colors.black54, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                const CardNav(
                  mypage: ProfileInfo(),
                  title: 'Update Profile Information',
                  icons: Icons.manage_accounts_outlined,
                ),
                const CardNav(
                  mypage: CouponsPage(),
                  title: 'Coupons and vouchers',
                  icons: Icons.discount_outlined,
                ),
                const CardNav(
                  mypage: OrderTracking(),
                  title: 'Order Tracking',
                  icons: Icons.local_shipping_rounded,
                ),
                const CardNav(
                  mypage: OrderHistory(),
                  title: 'Order History',
                  icons: Icons.history,
                ),
                const CardNav(
                  icons: Icons.headset_mic_rounded,
                  mypage: CustomerService(),
                  title: 'Customer Service Support',
                ),
                const CardNav(
                  mypage: FaqsPage(),
                  title: 'FAQs',
                  icons: Icons.quiz_outlined,
                ),
                const CardNav(
                  image: 'images/profile/Vector.png',
                  mypage: LegalPage(),
                  title: 'Legal',
                  // icons: Icons. lega,
                ),
                const DeleteAcc(),

                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Logout ',
                    style: GoogleFonts.nunito(
                        color: const Color.fromARGB(255, 255, 145, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CardNav extends StatelessWidget {
  const CardNav({this.icons, this.mypage, this.image, this.title, super.key});
  final Widget? mypage;
  final String? image;
  final String? title;
  final IconData? icons;
  @override
  Widget build(BuildContext context) {
    void _navigate(Widget? mypage) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            //TODO change section
            return mypage!;
          },
        ),
      );
    }

    Widget? _imageIconSwitch() {
      if (image != null) {
        return Padding(
          padding: const EdgeInsets.only(left: 2.0),
          child: Image.asset(image!),
        );
      } else {
        return Icon(icons);
      }
    }

    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 8.0,
          right: 8.0,
        ),
        child: Row(
          children: <Widget>[
            _imageIconSwitch()!,
            // Icon(
            //   icons,
            //   size: 30,
            //   color: Colors.grey,
            // ),
            const SizedBox(
              width: 30,
            ),
            Text(
              title!,
              style: GoogleFonts.nunito(fontSize: 16),
            ),
            const Spacer(),
            IconButton(
                onPressed: () {
                  _navigate(mypage);
                },
                icon: const Icon(Icons.arrow_forward_ios_sharp))
          ],
        ),
      ),
    );
  }
}

class DeleteAcc extends StatelessWidget {
  const DeleteAcc({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 8.0,
          right: 8.0,
          top: 6,
          bottom: 5,
        ),
        child: Row(
          children: [
            const Icon(
              Icons.delete_forever_outlined,
              color: Colors.red,
              size: 30,
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              'Deactivate Account',
              style: GoogleFonts.nunito(color: Colors.red, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
