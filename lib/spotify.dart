import 'package:flutter/material.dart';


import 'color.dart';


class spotify extends StatefulWidget {
  const spotify({super.key});

  @override
  State<spotify> createState() => _spotifyState();
}

class _spotifyState extends State<spotify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [SliverAppBar(
            leading: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            pinned: true,
            expandedHeight: 400,
            titleSpacing: 10,
            backgroundColor: Colors.black,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(

                  colors: [
                    Color(0xffFF758499),
                    Colors.black.withOpacity((1)),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: FlexibleSpaceBar(
                centerTitle: false,
                title: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text("This is Sujatha..."),
                    ),
                  ],
                ),
                background: Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 50,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                height: 40,
                                width: 280,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.search,color: Colors.white,),
                                    hintText: "Find in playlist",
                                    hintStyle: TextStyle(color: Colors.white),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(color:Colors.white),
                                    ),

                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                        )
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width:20),
                            Container(
                              width: 60,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xff758499),
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(5),


                              ),
                              child: Center(
                                child: Text("Sort",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,
                                  fontSize: 20,),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/sujathamohan.jpeg"),
                              )
                          ),

                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text('This is Sujatha.The essential tracks,all in one playlist.',style: TextStyle(
                                  color: Colors.white
                              ),)
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/spotlogo.jpeg'),

                                    ),
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(30)
                                ),
                              ),
                            ),
                            Text('Spotify',style: TextStyle(fontSize: 15,
                                color: Colors.white,fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('3,486 likes . 4h 6min',style: TextStyle(
                                  color: Colors.white
                              ),),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.favorite_border_outlined,size: 28,color:Colors.white,),
                    SizedBox(width:25 ,),
                    Icon(Icons.download_for_offline_outlined,size: 28,color:Colors.white,),
                    SizedBox(width:25 ,),
                    Icon(Icons.more_vert_outlined,size: 28,color:Colors.white,),
                    SizedBox(width:150 ,),
                    Icon(Icons.shuffle,size: 28,color:Colors.green,),
                    SizedBox(width:25 ,),
                    Container(
                      width: 50,
                      height: 50,
                      child: CircleAvatar(
                        child: Icon(Icons.play_circle,color: Colors.green,),
                      ),
                    ),
                  ],

                ),
              ),
              Container(
                color: Colors.black,
                child: ListView.builder(
                  itemCount: 20,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index)=>Card(
                    color: Colors.black,
                    child: SingleChildScrollView(
                      child: ListTile(
                        leading:CircleAvatar(
                            backgroundImage: AssetImage("assets/thamarai.jpeg")
                        ),
                        title: Text("Thamarai Poovukkum",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),

                        ),
                        subtitle: Text("Vidyasagar,sujatha",style:TextStyle(color: Colors.white,),),
                        trailing: Icon(Icons.more_vert_rounded),
                      ),
                    ),

                  ),
                ),
              ),
            ],
          ),
        ),
      ),


    );
  }
}
