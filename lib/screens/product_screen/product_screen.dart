import 'package:flutter/material.dart';
import 'package:ppob_app/commons/providers/product_provider.dart';
import 'package:ppob_app/extensions/int_extension.dart';
import 'package:ppob_app/resources/models/product_model.dart';
import 'package:provider/provider.dart';

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
      body: Consumer<ProductProvider>(
        builder: (_, pp, __) {
          if (!pp.isInit) {
            return FutureBuilder<void>(
              future: pp.initialize(),
              builder: (_, __) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            );
          }
          if (pp.load) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    // Container(
                    //   padding: const EdgeInsets.symmetric(
                    //       horizontal: 16, vertical: 8),
                    //   width: width,
                    //   child: const Text(
                    //     'Penawaran spesial',
                    //     style: TextStyle(
                    //       color: Colors.black,
                    //       fontWeight: FontWeight.bold,
                    //       fontSize: 16,
                    //     ),
                    //   ),
                    // ),
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
                                children:
                                    List.generate(pp.products.length, (index) {
                                  if (index % 2 == 0) {
                                    ProductModel product = pp.products[index];
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
                                            color:
                                                Colors.black.withOpacity(0.25),
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
                                                  padding:
                                                      const EdgeInsets.all(8),
                                                  width: width,
                                                  child: product.icon != null
                                                      ? Image.network(
                                                          product.icon!,
                                                          errorBuilder:
                                                              (_, __, ___) {
                                                            return const Icon(
                                                              Icons
                                                                  .image_not_supported_rounded,
                                                              size: 40,
                                                            );
                                                          },
                                                        )
                                                      : null,
                                                ),
                                              ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
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
                                                  product.name,
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 4,
                                                ),
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
                                                      children: [
                                                        const Icon(
                                                          Icons.price_change,
                                                          size: 14,
                                                        ),
                                                        const SizedBox(
                                                          width: 8,
                                                        ),
                                                        Text(
                                                          'Rp ${int.parse('${product.basePrice}').toCurrency()}',
                                                          style:
                                                              const TextStyle(
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
                                                      child: Text(
                                                        'Rp. ${int.parse('${product.sellPrice}').toCurrency()}',
                                                        style: const TextStyle(
                                                          color: Colors.blue,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                        horizontal: 16,
                                                        vertical: 8,
                                                      ),
                                                      margin: const EdgeInsets
                                                          .symmetric(
                                                        vertical: 8,
                                                      ),
                                                      width: width,
                                                      decoration: BoxDecoration(
                                                        color: Colors.blue,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      alignment:
                                                          Alignment.center,
                                                      child: const Text(
                                                        'Ubah Harga Jual',
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
                                  } else {
                                    return Container();
                                  }
                                }),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: const EdgeInsets.only(
                                left: 4,
                              ),
                              child: Column(
                                children:
                                    List.generate(pp.products.length, (index) {
                                  if (index % 2 == 1) {
                                    ProductModel product = pp.products[index];
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
                                            color:
                                                Colors.black.withOpacity(0.25),
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
                                                  padding:
                                                      const EdgeInsets.all(8),
                                                  width: width,
                                                  child: product.icon != null
                                                      ? Image.network(
                                                          product.icon!,
                                                          errorBuilder:
                                                              (_, __, ___) {
                                                            return const Icon(
                                                              Icons
                                                                  .image_not_supported_rounded,
                                                              size: 40,
                                                            );
                                                          },
                                                        )
                                                      : null,
                                                ),
                                              ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
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
                                                  product.name,
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 4,
                                                ),
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
                                                      children: [
                                                        const Icon(
                                                          Icons.price_change,
                                                          size: 14,
                                                        ),
                                                        const SizedBox(
                                                          width: 8,
                                                        ),
                                                        Text(
                                                          'Rp ${int.parse('${product.basePrice}').toCurrency()}',
                                                          style:
                                                              const TextStyle(
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
                                                      child: Text(
                                                        'Rp. ${int.parse('${product.sellPrice}').toCurrency()}',
                                                        style: const TextStyle(
                                                          color: Colors.blue,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                        horizontal: 16,
                                                        vertical: 8,
                                                      ),
                                                      margin: const EdgeInsets
                                                          .symmetric(
                                                        vertical: 8,
                                                      ),
                                                      width: width,
                                                      decoration: BoxDecoration(
                                                        color: Colors.blue,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      alignment:
                                                          Alignment.center,
                                                      child: const Text(
                                                        'Ubah Harga Jual',
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
                                  } else {
                                    return Container();
                                  }
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
          );
        },
      ),
    );
  }
}
