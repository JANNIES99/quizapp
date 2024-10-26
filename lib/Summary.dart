import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  const Summary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
            children: summaryData.map(
          (data) {
            return Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (data["Answer"] as String) ==
                            (data["Choosen"] as String)
                        ? Colors.green
                        : Colors.red,
                  ),
                  child: Center(
                    child: Text(
                      ((data["Index"] as int) + 1).toString(),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        data["Question"].toString(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                      Text(
                        data["Answer"].toString(),
                        style: const TextStyle(color: Colors.green),
                      ),
                      Text(
                        data["Choosen"].toString(),
                        style: const TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                )
              ],
            );
          },
        ).toList()),
      ),
    );
  }
}
