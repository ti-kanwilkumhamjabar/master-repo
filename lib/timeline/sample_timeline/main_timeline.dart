import 'package:flutter/material.dart';
import 'package:master_repo/timeline/sample_timeline/page_timeline.dart';

class MainTimeline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HAK PATEN',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TimelinePage(title: 'Definisi Hak Paten'),
    );
  }
}