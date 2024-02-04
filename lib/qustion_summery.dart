import 'package:flutter/material.dart';

class QustionSummery extends StatelessWidget {
  const QustionSummery(this.summery, {super.key});
  final List<Map<String, Object>> summery;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summery.map((e) {
            return Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  ((e['qustion_index'] as int) + 1).toString(),
                ),
              const  SizedBox(width: 20,),
                Expanded(
                  // flex: 7,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ((e['qustions'].toString())),
                        textAlign: TextAlign.start,
                      
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ((e['user_selected'].toString())),
                        textAlign: TextAlign.start,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: Text(
                          ((e['correct_answers'].toString())),
                          textAlign: TextAlign.start,
                       ),
                      ),
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
