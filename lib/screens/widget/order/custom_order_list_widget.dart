import 'package:flutter/material.dart';
import 'package:ultimate_solutions_task/data/model/delivary.dart';

class CustomOrderListWidget extends StatelessWidget {
  final List<DeliveryBills> lst;
   CustomOrderListWidget({Key? key, required this.lst}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height,
      child: ListView.separated(
        itemCount: lst.length,
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
                Text(lst[index].bILLNO ?? ''),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text('Status'),
                          Text(lst[index].dLVRYSTATUSFLG?? ''),
                        ],
                      ),
                      const VerticalDivider(
                        thickness: 3,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children:  [
                          Text('Total price'),
                          Text(lst[index].bILLAMT ?? '0'),
                        ],
                      ),
                      const VerticalDivider(thickness: 3,),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children:  [
                          Text('Date '),
                          Text(lst[index].bILLDATE ?? ''),
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
