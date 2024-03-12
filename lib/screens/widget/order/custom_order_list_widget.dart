import 'package:flutter/material.dart';

class CustomOrderListWidget extends StatelessWidget {
   CustomOrderListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height, // or any fixed height
      child: ListView.separated(
        itemCount: 3,
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
                const Text('#1569999'),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: const [
                          Text('Status'),
                          Text('Delivering'),
                        ],
                      ),
                      const VerticalDivider(
                        thickness: 3,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: const [
                          Text('Total price'),
                          Text('Price'),
                        ],
                      ),
                      const VerticalDivider(thickness: 3,),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: const [
                          Text('Date '),
                          Text('1/1/2024'),
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
