import 'package:flutter/material.dart';
import 'package:master_repo/data/hak_paten_data.dart';
import 'package:master_repo/timeline/timeline.dart';
import 'package:master_repo/timeline/timeline_model.dart';

class DetailPaten extends StatelessWidget {
  DetailPaten({Key key, this.title, this.konten}) : super(key: key);
  final String title;
  final HakPatenData konten;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Image.asset('images/image2.jpeg',
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: generateBody()
      ),
    );
  }
  generateBody(){
    if(title == "Definisi" || title == "Aturan"){
      return Center(
        child: timelineModel(TimelinePosition.Left, title)
      );
    }
    else{
      return SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: ConstrainedBox(
          constraints: BoxConstraints(),
          child: Column(
            children: <Widget>[
              Image.asset("images/hak_paten_pengajuan.png")
            ],
          ),
        ),
      );
    }
  }

  lengtNeeded(String judul){
    if(judul == 'Definisi'){
      return konten.listDefinisiHakPaten.length;
    }
    else if(judul == 'Aturan'){
      return konten.listAturanUndangUndangHakPaten.length;
    }
    else{
      return konten.listPengajuanHakPaten.length;
    }
  }

  timelineModel(TimelinePosition position, String judul) => Timeline.builder(
      itemBuilder: centerTimelineBuilder,
      itemCount: lengtNeeded(judul),
      physics: position == TimelinePosition.Left
          ? ClampingScrollPhysics()
          : BouncingScrollPhysics(),
      position: position);

  TimelineModel centerTimelineBuilder(BuildContext context, int i) {

    final textTheme = Theme.of(context).textTheme;

    if(title == "Definisi"){
      final listKonten = konten.listDefinisiHakPaten[i];
      return TimelineModel(
          Card(
            color: Colors.blue[100],
            margin: EdgeInsets.symmetric(vertical: 8.0),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
            clipBehavior: Clip.antiAlias,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(
                    height: 8.0,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    listKonten.konten,
                    style: textTheme.body1,
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                ],
              ),
            ),
          ),
          position:
          i % 2 == 0 ? TimelineItemPosition.right : TimelineItemPosition.left,
          isFirst: i == 0,
          isLast: i == lengtNeeded(title),
          iconBackground: Colors.cyan,
          icon: Icon(Icons.description, color: Colors.white));

    }
    else if(title == "Aturan"){
      final listKonten = konten.listAturanUndangUndangHakPaten[i];
      return TimelineModel(
          Card(
            color: Colors.white70,
            margin: EdgeInsets.symmetric(vertical: 8.0),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
            clipBehavior: Clip.antiAlias,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(
                    height: 8.0,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    listKonten.konten,
                    style: textTheme.body1,
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                ],
              ),
            ),
          ),
          position:
          i % 2 == 0 ? TimelineItemPosition.right : TimelineItemPosition.left,
          isFirst: i == 0,
          isLast: i == lengtNeeded(title),
          iconBackground: Colors.cyan,
          icon: Icon(Icons.book, color: Colors.white));
    }
    else{
      final listKonten = konten.listPengajuanHakPaten[i];
      return TimelineModel(
          Card(
            color: Colors.white70,
            margin: EdgeInsets.symmetric(vertical: 8.0),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
            clipBehavior: Clip.antiAlias,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(
                    height: 8.0,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    listKonten.konten,
                    style: textTheme.body1,
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                ],
              ),
            ),
          ),
          position:
          i % 2 == 0 ? TimelineItemPosition.right : TimelineItemPosition.left,
          isFirst: i == 0,
          isLast: i == lengtNeeded(title),
          iconBackground: Colors.cyan,
          icon: Icon(Icons.add, color: Colors.white));
    }
  }
}