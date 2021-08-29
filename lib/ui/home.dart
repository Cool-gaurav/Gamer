import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:Gamer/model/tournament.dart';
import 'package:Gamer/store/tournament_store.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TournamentStore tour;
  @override
  void initState() {
    // TODO: implement initState
    tour ??= Provider.of<TournamentStore>(context, listen: false);
    tour.getTournamentList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
      // SingleChildScrollView(
      // child:
      Scaffold(
        appBar: AppBar(
          title: Text("Gamer"),
          leading: Icon(Icons.menu),
        ),
        body: SingleChildScrollView(
          child: Container(color: Colors.grey[100],
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 25, top: 35),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.25), // border color
                          shape: BoxShape.circle,

                        ),child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset("assets/dp.jpg"),
                      ),),
                      SizedBox(
                        width: 25,
                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              "Gaurav",
                              style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 15, right: 15, top: 8, bottom: 8),
                            margin: EdgeInsets.only(top: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              border: Border.all(
                                color: Colors.blue[500],
                              ),
                            ),
                            child: Row(
                              children: [Text(
                                "2050",
                                style: TextStyle(fontSize: 18,color: Colors.blue),
                              ),
                                Text(
                                  "  rating",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: 90,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30)),
                            color: Colors.deepOrange),
                        width: MediaQuery.of(context).size.width * 0.95 / 3,
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "34",
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Text(
                              "Tournament played",
                              style: TextStyle(fontSize: 16, color: Colors.white),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.blueAccent,
                        width: MediaQuery.of(context).size.width * 0.95 / 3,
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "06",
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5,right: 5),
                              child: Text(
                                "Tournament won",
                                style: TextStyle(fontSize: 16, color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                bottomRight: Radius.circular(30)),
                            color: Colors.red),
                        width: MediaQuery.of(context).size.width * 0.95 / 3,
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "26",
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Text(
                              "Winning percentage",
                              style: TextStyle(fontSize: 16, color: Colors.white),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15, left: 25),
                  child: Text(
                    "Recommended for you",
                    style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
                  ),
                ),
                //  ),
                Observer(builder: (_) {
                  return tour.mystate == StoreState.loaded
                      ? ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: tour.tournamentList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return item(tour.tournamentList[index]);
                      })
                      : Center(
                    child: CircularProgressIndicator(),
                  );
                }),
              ],
            ),
          ),
        ),
      )
    //)
        ;
  }

  Widget item(Tournament tournament) {
    return Card(margin: EdgeInsets.only(bottom: 10,left: 10,right: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10)),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(10),
                  topLeft: Radius.circular(10)),
              child: CachedNetworkImage(
                imageUrl: tournament.cover_url,
                width: MediaQuery.of(context).size.width,

                //fit: BoxFit.fill,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          Container(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    tournament.name,
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8,right: 8,bottom: 15),
                  child: Text(tournament.game_name, style: TextStyle(fontSize: 16,color: Colors.grey)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
