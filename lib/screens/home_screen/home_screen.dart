import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ppob_app/extensions/int_extension.dart';
import 'package:ppob_app/resources/databases/account_database.dart';
import 'package:ppob_app/resources/databases/advertisement_database.dart';
import 'package:ppob_app/resources/databases/feature_database.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int slideIndex = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('void app'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.chat,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 340,
              width: width,
              child: Stack(
                children: [
                  Container(
                    height: 250,
                    width: width,
                    color: Colors.blue,
                  ),
                  Positioned(
                    top: 16,
                    left: 16,
                    right: 16,
                    child: Column(
                      children: [
                        Container(
                          width: width,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                blurRadius: 2.0,
                                offset: const Offset(0, 1),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                height: 20,
                                width: width,
                                alignment: Alignment.bottomLeft,
                                child: const Text(
                                  'Saldo',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8,
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 16,
                                          ),
                                          child: Text(
                                            'Rp ${int.parse('${accountDummy['balance']}').toCurrency()}',
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                      ),
                                      VerticalDivider(
                                        width: 2,
                                        color: Colors.grey[500],
                                      ),
                                      SizedBox(
                                        height: 40,
                                        width: 50,
                                        child: Column(
                                          children: const [
                                            Expanded(
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.blue,
                                              ),
                                            ),
                                            Text(
                                              'Isi',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 40,
                                        width: 50,
                                        child: Column(
                                          children: const [
                                            Expanded(
                                              child: Icon(
                                                Icons.download,
                                                color: Colors.blue,
                                              ),
                                            ),
                                            Text(
                                              'Tarik',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 220,
                          width: width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                blurRadius: 2.0,
                                offset: const Offset(0, 1),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 30,
                                width: width,
                                alignment: Alignment.bottomLeft,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: const Text(
                                  'Pembayaran',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8,
                                    top: 8,
                                    right: 8,
                                  ),
                                  child: Wrap(
                                    direction: Axis.horizontal,
                                    alignment: WrapAlignment.start,
                                    runAlignment: WrapAlignment.center,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    spacing: 8,
                                    runSpacing: 8,
                                    children: List.generate(
                                        featureDummies.length, (index) {
                                      Map<String, dynamic> feature =
                                          featureDummies[index];
                                      return Container(
                                        height: width / 4 - 20,
                                        width: width / 4 - 20,
                                        constraints: const BoxConstraints(
                                          maxHeight: 80,
                                          maxWidth: 80,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: (width / 4 - 20) / 2,
                                              width: (width / 4 - 20) / 2,
                                              constraints: const BoxConstraints(
                                                maxHeight: 60,
                                                maxWidth: 60,
                                              ),
                                              alignment: Alignment.center,
                                              child: Icon(
                                                feature['icon'],
                                                size: 28,
                                                color: Colors.blue,
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                padding: const EdgeInsets.only(
                                                  top: 4,
                                                ),
                                                width: 80,
                                                height: 40,
                                                alignment: Alignment.topCenter,
                                                child: Text(
                                                  '${feature['name']}',
                                                  style: const TextStyle(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
              children: [
                SizedBox(
                  width: width,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      aspectRatio: 1171 / 601,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        slideIndex = index;
                        setState(() {});
                      },
                      autoPlayInterval: const Duration(
                        seconds: 15,
                      ),
                      autoPlay: true,
                    ),
                    items: List.generate(advertisementDummies.length, (index) {
                      Map<String, dynamic> advertisement =
                          advertisementDummies[index];
                      return AspectRatio(
                        aspectRatio: 1171 / 601,
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                blurRadius: 2.0,
                                offset: const Offset(0, 1),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              advertisement['cover'],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                Container(
                  height: 20,
                  width: width,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        child: SizedBox(
                          child: Text(
                            'Lihat Semua',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children:
                            List.generate(advertisementDummies.length, (index) {
                          bool currentSlide = false;
                          if (index == slideIndex) currentSlide = true;
                          return Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 1,
                            ),
                            height: currentSlide ? 10 : 6,
                            width: currentSlide ? 10 : 6,
                            color:
                                currentSlide ? Colors.blue : Colors.grey[400],
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: AspectRatio(
                  aspectRatio: 1171 / 280,
                  child: Container(
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 2.0,
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Image.asset(
                      'assets/images/banner/banner.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
