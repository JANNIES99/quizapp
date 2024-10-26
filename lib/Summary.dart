import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  const Summary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          children: summaryData.map(
        (data) {
          return Column(
            children: [
              Row(
                children: [
                  Text(
                    ((data["Index"] as int) + 1).toString(),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    data["Question"].toString(),
                  ),
                ],
              ),
              Text(data["Answer"].toString()),
              Text(data["Choosen"].toString()),
            ],
          );
        },
      ).toList()),
    );
  }
}
