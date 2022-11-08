import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
        title: const Text('App by void'),
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
                                          child: const Text(
                                            'Rp 200.000',
                                            style: TextStyle(
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
                                  'Product',
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
                                    children: List.generate(8, (index) {
                                      return Container(
                                        height: width / 4 - 20,
                                        width: width / 4 - 20,
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
                                              alignment: Alignment.center,
                                              child: const Icon(
                                                Icons.widgets,
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
                                                  'Product ${index + 1}',
                                                  style: const TextStyle(
                                                    fontSize: 12,
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
            Container(
              height: 100,
              width: width,
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
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
              child: const Text(
                'Ini Banner',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
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
                items: List.generate(8, (index) {
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
                        child: Stack(
                          children: [
                            Positioned(
                              top: 50,
                              right: -(width / 2) * 8 / 100,
                              child: Container(
                                height: width * 75 / 100,
                                width: width * 75 / 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(width),
                                  border: Border.all(
                                    width: 10,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 50 + (index * 2),
                              right: 0,
                              child: Container(
                                height: width / 2,
                                width: width / 2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(width),
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            AspectRatio(
                              aspectRatio: 1171 / 601,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 8,
                                ),
                                width: width,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'advertisement $index',
                                      style: const TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
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
                    children: List.generate(8, (index) {
                      bool currentSlide = false;
                      if (index == slideIndex) currentSlide = true;
                      return Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 1,
                        ),
                        height: currentSlide ? 10 : 6,
                        width: currentSlide ? 10 : 6,
                        color: currentSlide ? Colors.blue : Colors.grey[400],
                      );
                    }),
                  ),
                ],
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
