import 'package:flutter/material.dart';

class TransactionDetail extends StatefulWidget {
  const TransactionDetail({super.key});

  @override
  State<TransactionDetail> createState() => _TransactionDetailState();
}

class _TransactionDetailState extends State<TransactionDetail> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaksi Detail'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: width,
              color: Colors.white,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: width,
                    child: const Text(
                      'Informasi Produk',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    height: 60,
                    width: width,
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: width,
                                child: const Text(
                                  'Produk 1',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width,
                                child: const Text(
                                  'Detail produk 1',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    child: Column(
                      children: [
                        SizedBox(
                          width: width,
                          child: Text(
                            'SN / Token : ',
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 12,
                            ),
                          ),
                        ),
                       const  SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: width,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[200]!,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                       const  Expanded(
                          child: Text('123567XXXX'),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.copy,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    child: Column(
                      children: [
                        SizedBox(
                          width: width,
                          child: Text(
                            'Customer ID : ',
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 12,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          width: width,
                          child: Row(
                            children: [
                              const Flexible(
                                child: Text(
                                  '123561723',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Icon(
                                Icons.copy,
                                color: Colors.grey[400],
                                size: 14,
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
                  SizedBox(
                    child: Column(
                      children: [
                        SizedBox(
                          width: width,
                          child: Text(
                            'Transaksi ID : ',
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 12,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          width: width,
                          child: Row(
                            children: [
                              const Flexible(
                                child: Text(
                                  '2022110610032',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Icon(
                                Icons.copy,
                                color: Colors.grey[400],
                                size: 14,
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
                  SizedBox(
                    width: width,
                    child: Row(
                      children: [
                        const Expanded(
                          child: SizedBox(),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            'Cetak Struk',
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
            const SizedBox(
              height: 8,
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: width,
                      child: Row(
                        children: [
                          SizedBox(
                            child: Text(
                              'Harga : ',
                              style: TextStyle(
                                color: Colors.grey[500],
                                fontSize: 12,
                              ),
                            ),
                          ),
                          const Expanded(
                            child: SizedBox(),
                          ),
                          const SizedBox(
                            child: Text(
                              'Rp 3.200',
                              style: TextStyle(
                                // color: Colors.grey[500],
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width,
                      child: Row(
                        children: [
                          SizedBox(
                            child: Text(
                              'Disclaimer : ',
                              style: TextStyle(
                                color: Colors.grey[500],
                                fontSize: 12,
                              ),
                            ),
                          ),
                          const Expanded(
                            child: SizedBox(),
                          ),
                          const SizedBox(
                            child: Text(
                              'Rp 200',
                              style: TextStyle(
                                // color: Colors.grey[500],
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                    SizedBox(
                      width: width,
                      child: Row(
                        children: [
                          SizedBox(
                            child: Text(
                              'Total : ',
                              style: TextStyle(
                                color: Colors.grey[500],
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const Expanded(
                            child: SizedBox(),
                          ),
                          const SizedBox(
                            child: Text(
                              'Rp 3.400',
                              style: TextStyle(
                                // color: Colors.grey[500],
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
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
          ],
        ),
      ),
    );
  }
}
