import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Atur Produk'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  width: width,
                  child: const Text(
                    'Penawaran spesial',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.only(right: 4),
                          child: Column(
                            children: List.generate(5, (index) {
                              return Container(
                                margin: const EdgeInsets.only(
                                  bottom: 8,
                                ),
                                width: width,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.25),
                                      offset: const Offset(0, 1),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Banner(
                                    message: 'Special Offer',
                                    location: BannerLocation.topEnd,
                                    color: Colors.blue,
                                    child: Column(
                                      children: [
                                        AspectRatio(
                                          aspectRatio: 1,
                                          child: Container(
                                            width: width,
                                            color: Colors.grey[400],
                                            child: const Icon(
                                                Icons.widgets_rounded),
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 4,
                                            vertical: 8,
                                          ),
                                          width: width,
                                          decoration: BoxDecoration(
                                            border: Border(
                                              bottom: BorderSide(
                                                color: Colors.grey[400]!,
                                              ),
                                            ),
                                          ),
                                          child: Text(
                                            'Product ${index * 2 + 1}',
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 4),
                                          child: Column(
                                            children: [
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                children: const [
                                                  Text(
                                                    'Harga Beli',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                children: const [
                                                  Icon(
                                                    Icons.price_change,
                                                    size: 14,
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Text(
                                                    'Rp 30.000',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 16,
                                              ),
                                              Container(
                                                width: width,
                                                alignment:
                                                    Alignment.centerRight,
                                                child: const Text(
                                                  'Rp. 32.200',
                                                  style: TextStyle(
                                                      color: Colors.blue),
                                                ),
                                              ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 16,
                                                  vertical: 8,
                                                ),
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                  vertical: 8,
                                                ),
                                                width: width,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                alignment: Alignment.center,
                                                child: const Text(
                                                  'Ubah Harga',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
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
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.only(
                            left: 4,
                            top: 16,
                          ),
                          child: Column(
                            children: List.generate(5, (index) {
                              return Container(
                                margin: const EdgeInsets.only(
                                  bottom: 8,
                                ),
                                width: width,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.25),
                                      offset: const Offset(0, 1),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Banner(
                                    message: 'Super Deal',
                                    location: BannerLocation.topEnd,
                                    color: Colors.blue,
                                    child: Column(
                                      children: [
                                        AspectRatio(
                                          aspectRatio: 1,
                                          child: Container(
                                            width: width,
                                            color: Colors.grey[400],
                                            child: const Icon(
                                                Icons.widgets_rounded),
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 4,
                                            vertical: 8,
                                          ),
                                          width: width,
                                          decoration: BoxDecoration(
                                            border: Border(
                                              bottom: BorderSide(
                                                color: Colors.grey[400]!,
                                              ),
                                            ),
                                          ),
                                          child: Text(
                                            'Product ${index * 2 + 2}',
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 4),
                                          child: Column(
                                            children: [
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                children: const [
                                                  Text(
                                                    'Harga Beli',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                children: const [
                                                  Icon(
                                                    Icons.price_change,
                                                    size: 14,
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Text(
                                                    'Rp 30.000',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 16,
                                              ),
                                              Container(
                                                width: width,
                                                alignment:
                                                    Alignment.centerRight,
                                                child: const Text(
                                                  'Rp. 32.200',
                                                  style: TextStyle(
                                                      color: Colors.blue),
                                                ),
                                              ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 16,
                                                  vertical: 8,
                                                ),
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                  vertical: 8,
                                                ),
                                                width: width,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                alignment: Alignment.center,
                                                child: const Text(
                                                  'Ubah Harga',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
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
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
