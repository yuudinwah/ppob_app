import 'package:flutter/material.dart';
import 'package:ppob_app/extensions/datetime_extension.dart';
import 'package:ppob_app/resources/databases/transaction_database.dart';
import 'package:ppob_app/screens/transaction_screen/transaction_detail.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  DateTimeRange date = DateTimeRange(
    start: DateTime.now().add(const Duration(days: -6)),
    end: DateTime.now(),
  );

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Transaksi'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 40,
              width: width,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              color: Colors.blue,
              child: Row(
                children: [
                  const Icon(
                    Icons.sort,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    'Filter',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: InkWell(
                      onTap: () {
                        selectDate(context, value: date.start).then((value) {
                          if (value != null) {
                            DateTime start = DateTime(
                                value.year, value.month, value.day, 0, 0, 1);
                            DateTime end = date.end;
                            if (start.isAfter(end)) {
                              end = start.add(const Duration(days: 1));
                            }
                            date = DateTimeRange(start: start, end: end);
                          }
                          setState(() {});
                        });
                      },
                      child: Text(
                        date.start.dateFormat(format: 'dd MMM yyyy'),
                        style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    '-',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: InkWell(
                      onTap: () {
                        selectDate(context, value: date.start).then((value) {
                          if (value != null) {
                            DateTime end = DateTime(
                                value.year, value.month, value.day, 23, 59, 59);
                            DateTime start = date.start;
                            if (end.isBefore(start)) {
                              start = end.add(const Duration(days: -1));
                            }
                            date = DateTimeRange(start: start, end: end);
                          }
                          setState(() {});
                        });
                      },
                      child: Text(
                        date.end.dateFormat(format: 'dd MMM yyyy'),
                        style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Builder(
              builder: (_) {
                List<Map<String, dynamic>> trxs = transactionDummies;
                trxs = trxs
                    .where((element) =>
                        date.start.isBefore(element['createdAt']) &&
                        date.end.isAfter(element['createdAt']))
                    .toList();
                trxs.sort((a, b) => b['createdAt'].compareTo(a['createdAt']));
                return Container(
                  color: Colors.white,
                  child: Column(
                    children: List.generate(trxs.length, (index) {
                      Map<String, dynamic> trx = trxs[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TransactionDetail(
                                transaction: trx,
                              ),
                            ),
                          );
                        },
                        child: Container(
                          width: width,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 16,
                          ),
                          decoration: BoxDecoration(
                            border: index == trxs.length - 1
                                ? null
                                : Border(
                                    bottom: BorderSide(
                                      width: 1,
                                      color: Colors.grey[400]!,
                                    ),
                                  ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Image.asset(trx['product']['icon'])),
                              const SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: SizedBox(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        width: width,
                                        child: Text(
                                          (trx['createdAt'] as DateTime)
                                              .dateFormat(
                                                  format:
                                                      'dd MMMM yyyy . HH:mm'),
                                          style: const TextStyle(
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: width,
                                        child: const Text(
                                          'Transaksi',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: width,
                                        child: Text(
                                          trx['product']['name'] ?? '',
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: width,
                                        padding: const EdgeInsets.only(
                                          top: 4,
                                        ),
                                        child: Text(
                                          trx['status'] ?? '',
                                          style: const TextStyle(
                                            color: Colors.blue,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.more_vert,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}

Future<DateTime?> selectDate(
  BuildContext context, {
  DateTime? value,
  DateTime? start,
  DateTime? end,
}) async {
  return await showDialog<DateTime?>(
    context: context,
    builder: (_) => DatePickerDialog(
      initialDate: value ?? DateTime.now(),
      firstDate: start ?? DateTime(2015),
      lastDate: end ?? DateTime(2050),
    ),
  );
}
