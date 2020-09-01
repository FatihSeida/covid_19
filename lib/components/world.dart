import 'package:flutter/material.dart';
import '../widgets/summary_card.dart';

class World extends StatelessWidget {
  final double height;
  final data;

  World({this.height, this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 5),
          child: const Text(
            'LAPORAN JUMLAH KASUS DI DUNIA',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        Divider(),
        Expanded(
          flex: 2,
          child: GridView.count(
            childAspectRatio: height / 430,
            crossAxisCount: 3,
            children: <Widget>[
              SummaryCard(
                total: data.world.confirmed,
                label: 'Positif',
                color: Colors.yellow[100],
                size: 20,
              ),
              SummaryCard(
                total: data.world.recovered,
                label: 'Sembuh',
                color: Colors.greenAccent[100],
                size: 20,
              ),
              SummaryCard(
                total: data.world.confirmed,
                label: 'Meninggal',
                color: Colors.red[300],
                size: 20,
              ),
            ],
          ),
        ),
        Text('Pembaruan Terakhir'),
        Text(data.updated),
      ],
    );
  }
}
