import 'package:flutter/material.dart';
import 'package:ultimate_solutions_task/data/model/delivary.dart';

class CustomOrderListWidget extends StatelessWidget {
  final List<DeliveryBills> lst;
  final String type;

  const CustomOrderListWidget({Key? key, required this.lst, required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<DeliveryBills> newLst =
        lst.where((e) => e.dLVRYSTATUSFLG == '0').toList();
    List<DeliveryBills> others =
        lst.where((e) => e.dLVRYSTATUSFLG != '0').toList();
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: type == 'new' ? newLst.length : others.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 90,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            type == 'new'
                                ? Text(newLst[index].bILLNO ?? '')
                                : Text(others[index].bILLNO ?? ''),
                            const Text(
                              'Status',
                              style: TextStyle(color: Colors.grey),
                            ),
                            type == 'new'
                                ? Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text(
                                      newLst[index].dLVRYSTATUSFLG == '0'
                                          ? 'New'
                                          : '',
                                      style: const TextStyle(
                                          color: Colors.green, fontSize: 22),
                                    ),
                                  )
                                : Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      others[index].dLVRYSTATUSFLG == '1'
                                          ? 'Delivered'
                                          : others[index].dLVRYSTATUSFLG == '2'
                                              ? 'Returned'
                                              : others[index].dLVRYSTATUSFLG ==
                                                      '3'
                                                  ? 'Delivering'
                                                  : 'Unknown',
                                      style: TextStyle(
                                        fontSize: 22,
                                        color: others[index].dLVRYSTATUSFLG ==
                                                '1'
                                            ? const Color(0xFF707070)
                                            : others[index].dLVRYSTATUSFLG ==
                                                    '2'
                                                ? Colors.red
                                                : others[index]
                                                            .dLVRYSTATUSFLG ==
                                                        '3'
                                                    ? Colors.orange
                                                    : Colors.grey,
                                      ),
                                    ),
                                  ),
                          ],
                        ),
                        const VerticalDivider(
                          thickness: 3,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Column(
                            children: [
                              const Text(
                                'Total price',
                              ),
                              type == 'new'
                                  ? Text(
                                      double.parse(
                                        newLst[index].bILLAMT ?? '0',
                                      ).round().toString(),
                                      style: const TextStyle(
                                          fontSize: 22,
                                          color: Color(0xFF004F62)),
                                    )
                                  : Text(
                                      double.parse(others[index].bILLAMT ?? '0')
                                          .round()
                                          .toString(),
                                  style: const TextStyle(
                                  fontSize: 22,
                                  color: Color(0xFF004F62)),
                              )
                            ],
                          ),
                        ),
                        const VerticalDivider(
                          thickness: 3,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Column(
                            children: [
                              const Text('Date ',
                                  style: TextStyle(color: Colors.grey)),
                              type == 'new'
                                  ? Text(
                                      newLst[index].bILLDATE ?? '',
                                      style: const TextStyle(
                                          fontSize: 22,
                                          color: Color(0xFF004F62)),
                                    )
                                  : Text(others[index].bILLDATE ?? '',  style: const TextStyle(
                                  fontSize: 22,
                                  color: Color(0xFF004F62)),),
                            ],
                          ),
                        ),
                        const VerticalDivider(width: 10),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
