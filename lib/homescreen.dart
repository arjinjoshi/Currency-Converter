import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:currency_converter/nepalese_to_usd.dart';
import 'package:currency_converter/nepalesetoaus.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'homescreen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Currency Converter'),
        backgroundColor: Color(0xff764abc),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff764abc),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/104689409?v=4'),
              ),
              // otherAccountsPictures: [
              //   CircleAvatar(
              //       backgroundImage: NetworkImage(
              //           'https://avatars.githubusercontent.com/u/104689409?v=4')),
              // ],
              accountName: Text('Arjin Joshi(Founder)'),
              accountEmail:
                  Text('thearjinjoshi1@gmail.com\nContact Us: 9865796896'),
            ),
            ListTile(
              leading: Icon(Icons.attach_money),
              title: Text('USD to Nepalese Currency'),
              onTap: () {
                Navigator.pushNamed(context, CurrencyConverterMaterialPage.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.money),
              title: Text('Nepalese Currency to USD'),
              onTap: () {
                Navigator.pushNamed(context, NrsToUsd.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.money),
              title: Text('Nepalese Currency to AUS'),
              onTap: () {
                Navigator.pushNamed(context, NrsToAus.id);
              },
            ),
            // ListTile(
            //   leading: Icon(Icons.logout),
            //   title: Text('Log Out'),
            //   onTap: () {
            //     Navigator.pushNamed(context, HomeScreen.id);
            //   },
            // ),
          ],
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                child: Text(
                  'US Dollar to Nepalese Rupees',
                ),
                onPressed: () {
                  Navigator.pushNamed(
                      context, CurrencyConverterMaterialPage.id);
                },
              ),
              TextButton(
                child: Text(
                  'Nepalese Rupees to US Dollar',
                ),
                onPressed: () {
                  Navigator.pushNamed(context, NrsToUsd.id);
                },
              ),
              TextButton(
                child: Text(
                  'Nepalese Rupees to AUS Dollar',
                ),
                onPressed: () {
                  Navigator.pushNamed(context, NrsToAus.id);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
