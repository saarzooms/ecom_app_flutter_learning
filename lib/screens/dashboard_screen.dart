import 'package:ecom_app/models/item_details.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     title: Text('Latest Restaurant',
      //         style: TextStyle(color: Colors.grey[400])),
      //     actions: [
      //       IconButton(
      //           onPressed: () {},
      //           icon: Icon(Icons.arrow_forward, color: Colors.amber[600]))
      //     ]),
      body: Column(
        children: [
          section_title('Lastest Restaurant'),
          item_card(ItemDetail(
              '', 'The Lighthouse Restaurant & Rooftop Bar', 16, false, 4.6)),
          Divider(),
          item_card(ItemDetail(
              '', 'The Lighthouse Restaurant & Rooftop Bar', 150, true, 3.6)),
          Divider(),
          item_card(ItemDetail(
              '', 'The Lighthouse Restaurant & Rooftop Bar', 10, false, 2.6)),
          Divider(),
          section_title('Top Picked Item'),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) => Card(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Stack(
                    children: [
                      Center(child: Icon(Icons.flutter_dash, size: 400)),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              color: const Color.fromARGB(52, 255, 235, 59),
                              height: 100,
                              child: Text('')))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  section_title(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(title,
              style: TextStyle(fontSize: 16, color: Colors.grey[400])),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_forward, color: Colors.amber[600]))
      ],
    );
  }

  item_card(ItemDetail item) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: [
          //replace this with image
          Container(
            margin: EdgeInsets.all(8),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.purple, borderRadius: BorderRadius.circular(15)),
          ),
          //name of item
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.title, maxLines: 2, style: TextStyle(fontSize: 20)),
                ElevatedButton(
                  onPressed: item.isBreakfast ? () {} : null,
                  child: Text('Breakfirst'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${item.review} Reviews',
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber[600]),
                        Text(
                          '${item.rating}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
