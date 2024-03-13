import 'package:flutter/material.dart';
import 'package:ultimate_solutions_task/data/model/delivary.dart';

class CustomOrderListWidget extends StatelessWidget {
  final List<DeliveryBills> lst;
  final String type;

  CustomOrderListWidget({Key? key, required this.lst, required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<DeliveryBills> newLst =
        lst.where((e) => e.dLVRYSTATUSFLG == '0').toList();
    List<DeliveryBills> others =
        lst.where((e) => e.dLVRYSTATUSFLG != '0').toList();
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.separated(
        itemCount: type == 'new' ? newLst.length : others.length,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            thickness: 1,
            color: Colors.grey,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          type == 'new'
                              ? Text(newLst[index].bILLNO ?? '')
                              : Text(others[index].bILLNO ?? ''),
                          const Text('Status'),
                          type == 'new'
                              ? Text(newLst[index].dLVRYSTATUSFLG == '0'
                                  ? 'new'
                                  : '')
                              : Text(others[index].dLVRYSTATUSFLG == '1'
                                  ? 'Delivered'
                                  : others[index].dLVRYSTATUSFLG == '2'
                                      ? 'Partial Return'
                                      : others[index].dLVRYSTATUSFLG == '3'
                                          ? 'Full Return'
                                          : ''),
                        ],
                      ),
                      const VerticalDivider(
                        thickness: 3,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text('Total price'),
                          type == 'new'
                              ? Text(double.parse(newLst[index].bILLAMT ?? '0')
                                  .round()
                                  .toString())
                              : Text(double.parse(others[index].bILLAMT ?? '0')
                                  .round()
                                  .toString())
                        ],
                      ),
                      const VerticalDivider(
                        thickness: 3,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          const Text('Date '),
                          type == 'new'
                              ? Text(newLst[index].bILLDATE ?? '')
                              : Text(others[index].bILLDATE ?? ''),
                        ],
                      ),
                      const VerticalDivider(width: 10),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
