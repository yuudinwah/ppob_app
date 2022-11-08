import 'package:flutter/material.dart';
import 'package:ppob_app/screen/notification_promotion_detail_screen.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Notifikasi'),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
              height: 60,
              width: width,
              color: Colors.blue,
              child: const TabBar(
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                    text: "Utama",
                  ),
                  Tab(
                    text: "Promo",
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          color: Colors.white,
                          child: Column(
                            children: [
                              Container(
                                width: width,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 16,
                                ),
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.grey[400]!,
                                      width: 1,
                                    ),
                                  ),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: const Icon(
                                        Icons.payment,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              const Expanded(
                                                child: SizedBox(
                                                  child: Text(
                                                    'Selesaikan Pembayaranmu',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 8,
                                              ),
                                              Container(
                                                constraints:
                                                    const BoxConstraints(
                                                  maxWidth: 50,
                                                ),
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Text(
                                                  '1 mnit lalu',
                                                  textAlign: TextAlign.end,
                                                  style: TextStyle(
                                                    color: Colors.grey[500],
                                                    fontSize: 10,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 4,
                                          ),
                                          Container(
                                            margin: const EdgeInsets.symmetric(
                                              horizontal: 4,
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 4,
                                              vertical: 4,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.grey[100]!
                                                  .withOpacity(0.5),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                color: Colors.grey[400]!,
                                              ),
                                            ),
                                            child: Row(
                                              children: [
                                                const SizedBox(
                                                  height: 40,
                                                  width: 40,
                                                  child: Icon(
                                                    Icons.widgets,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    children: [
                                                      SizedBox(
                                                        width: width,
                                                        child: const Text(
                                                            'Product 1'),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const Text(
                                                  'Detail',
                                                  style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 4,
                                            ),
                                            child: Row(
                                              children: [
                                                const Icon(
                                                  Icons.timelapse,
                                                  size: 14,
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    width: width,
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: const Text(
                                                      '00:27:01',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.red,
                                                      ),
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
                              Container(
                                width: width,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 16,
                                ),
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.grey[400]!,
                                    ),
                                  ),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: const Icon(
                                        Icons.widgets,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    const Expanded(
                                      child: SizedBox(
                                        child: Text(
                                          'Pemesanan Product 1 berhasil, lihat detail disini',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      constraints: const BoxConstraints(
                                        maxWidth: 50,
                                      ),
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        '3 mnit lalu',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                          color: Colors.grey[500],
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: width,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 16,
                                ),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: const Icon(
                                        Icons.credit_card,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    const Expanded(
                                      child: SizedBox(
                                        child: Text(
                                          'Pembayaran untuk pemesanan hotel telah terverifikasi',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      constraints: const BoxConstraints(
                                        maxWidth: 50,
                                      ),
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        '5 mnit lalu',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                          color: Colors.grey[500],
                                          fontSize: 10,
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
                          height: 80,
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          color: Colors.white,
                          child: Column(
                            children: List.generate(10, (index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) =>
                                          const NotificationPromotionDetailScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  width: width,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 16,
                                  ),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[200],
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: const Icon(
                                          Icons.event_available,
                                          color: Colors.blue,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: SizedBox(
                                                    child: Text(
                                                      'Promo ${index + 1}, Incar sekarang juga!',
                                                      style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Container(
                                                  constraints:
                                                      const BoxConstraints(
                                                    maxWidth: 50,
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Text(
                                                    '1 mnit lalu',
                                                    textAlign: TextAlign.end,
                                                    style: TextStyle(
                                                      color: Colors.grey[500],
                                                      fontSize: 10,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            SizedBox(
                                              width: width,
                                              child: const Text(
                                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Container(
                                              width: width,
                                              height: 80,
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 4,
                                              ),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 8,
                                                vertical: 8,
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.blue,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Text(
                                                'Image Promo ${index + 1}',
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            const SizedBox(
                                              child: Text(
                                                'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                        const SizedBox(
                          height: 80,
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
    );
  }
}
