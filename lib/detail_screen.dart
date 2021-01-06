import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:share/share.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:stc/model/tourism_place.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen({Key key, @required this.place}) : super(key: key);

  final TourismPlace place;
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  String text, subject;

  void _shareContent() {
    final RenderBox box = context.findRenderObject();
    Share.share(text,
        subject: subject,
        sharePositionOrigin:
        box.localToGlobal(Offset.zero) &
        box.size);
  }

  Future<void> _openMap() async {
    final availableMaps = await MapLauncher.installedMaps;
    await availableMaps.first.showMarker(
      coords: Coords(widget.place.coords[0], widget.place.coords[1]),
      title: widget.place.name,
    );
    if (await MapLauncher.isMapAvailable(MapType.google)) {
      await MapLauncher.launchMap(
        mapType: MapType.google,
        coords: Coords(widget.place.coords[0], widget.place.coords[1]),
        title: widget.place.name,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    text = 'Temukan informasi wisata '+ widget.place.name +' di Kota Semarang. \n Temukan pula puluhan destinasi wisata terbaik lainnya di Kota Semarang! Download STC sekarang juga!';
    subject = 'Semarang Tourism Center';
    int rating = widget.place.rating.toInt();
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(widget.place.imageAsset),
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      FavoriteButton(),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                widget.place.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5.0, bottom: 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.star, color: rating>=1 ? Colors.yellow : Colors.white,),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.star, color: rating>=2 ? Colors.yellow : Colors.white,),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.star, color: rating>=3 ? Colors.yellow : Colors.white,),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.star, color: rating>=4 ? Colors.yellow : Colors.white,),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.star, color: rating>=5 ? Colors.yellow : Colors.white,),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        widget.place.rating.toString()+"/5.0 ("+widget.place.vote.toString()+" ulasan)",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.calendar_today),
                      SizedBox(height: 8.0),
                      Text(
                        widget.place.openDays,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.access_time),
                      SizedBox(height: 8.0),
                      Text(
                        widget.place.openTime,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.monetization_on),
                      SizedBox(height: 8.0),
                      Text(
                        widget.place.ticketPrice,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: widget.place.imageUrls.map((url) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(url),
                    ),
                  );
                }).toList(),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                widget.place.description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Oxygen',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(children: [
                ElevatedButton.icon(
                    onPressed: _openMap,
                    icon: Icon(Icons.map),
                    label: Text('Lihat di Peta'))
              ]),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red.withOpacity(0.9),
        elevation: 15.0,
        onPressed: _shareContent,
        child: Icon(Icons.share),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
