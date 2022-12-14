import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:ppob_app/commons/providers/app_provider.dart';
import 'package:ppob_app/commons/providers/product_provider.dart';
import 'package:ppob_app/screens/account_screen/account_screen.dart';
import 'package:ppob_app/screens/home_screen/home_screen.dart';
import 'package:ppob_app/screens/notification_screen/notification_screen.dart';
import 'package:ppob_app/screens/product_screen/product_screen.dart';
import 'package:ppob_app/screens/transaction_screen/transaction_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  await initializeDateFormatting();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppProvider>(
          create: (_) => AppProvider(),
        ),
        ChangeNotifierProvider<ProductProvider>(
          create: (_) => ProductProvider(),
        ),
      ],
      builder: (_, __) {
        return Consumer<AppProvider>(
          builder: (_, app, ___) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'void',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: const MyHomePage(),
              routes: const {},
            );
          },
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return Material(
      child: DefaultTabController(
        length: 5,
        child: Column(
          children: [
            const Expanded(
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  HomeScreen(),
                  ProductScreen(),
                  TransactionScreen(),
                  NotificationScreen(),
                  AccountScreen(),
                ],
              ),
            ),
            Container(
              height: 60,
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 4.0,
                    offset: const Offset(1, 0),
                  ),
                ],
              ),
              child: const TabBar(
                labelColor: Colors.blue,
                indicatorColor: Colors.transparent,
                unselectedLabelColor: Colors.black,
                labelStyle: TextStyle(
                  fontSize: 10,
                ),
                tabs: [
                  Tab(
                    icon: Icon(Icons.home),
                    // child: Text('Home'),
                  ),
                  Tab(
                    icon: Icon(Icons.widgets),
                    // child: Text('Manage'),
                  ),
                  Tab(
                    icon: Icon(Icons.note),
                    // child: Text('Transaction'),
                  ),
                  Tab(
                    icon: Icon(Icons.notifications),
                    // child: Text('Notification'),
                  ),
                  Tab(
                    icon: Icon(Icons.account_box),
                    // child: Text('Account'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
