import 'package:flutter/material.dart';

class QustionSummery extends StatelessWidget {
const  QustionSummery(this.summery, {super.key});
  final List<Map<String, Object>> summery;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: summery.map((e) {
        return Row(
          children: [
            Text(
              ((e['qustion_index'] as int) + 1).toString(),
            ),
            Column(
              children: [
                Text(
                  ((e['qustions'].toString())),
                ),
                Text(
                  ((e['user_selected'].toString())),
                ),
                Text(
                  ((e['correct_answers'].toString())),
                ),
              ],
            )
          ],
        );
      }).toList(),
    );
  }
}
