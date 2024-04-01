import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 4,
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,

        title: Text("WhatsApp",style: TextStyle(color: Colors.white,fontSize: 30),),

bottom: const TabBar(

  indicatorColor: Colors.white,
  indicatorWeight:5,


    tabs: [
      Tab(
        child: Icon(Icons.camera_alt,color: Colors.white,),
      ),

    Text("Chats",style: TextStyle(color: Colors.white),),

  Text("Status",style: TextStyle(color: Colors.white),),
  Text("call",style: TextStyle(color: Colors.white),),


]),
        actions: [
          Icon(Icons.search,color: Colors.white,),
          SizedBox(width: 10,),
          PopupMenuButton(
              icon:Icon(Icons.more_vert_outlined,color: Colors.white),

              itemBuilder: (context,)=> [
                PopupMenuItem(
                  value: 1,
                    child: Text("New group")),

                PopupMenuItem(
                    value: 2,
                    child: Text("Sitting ")),

                PopupMenuItem(
                    value: 3,
                    child: Text("LogOut")),
              ]
          ),



          SizedBox(width: 10,),
        ],
      ),

          body: TabBarView(
            children: [

              Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.camera,size: 80,color: Colors.blue,),
                  SizedBox(height: 40,),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text("Beatiful_Camera",textAlign: TextAlign.center,),


                  ),

                ],

              ),






              ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600"),
                ),
                title: Text(" Amelia${index+1}"),
                subtitle: Text("Assalamo alikum sir ${index+1}"),
                trailing: Text("10:30 am"),




              );


            }
              ),
             Column(mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Icon(Icons.person,size: 80,color: Colors.blue,),
               SizedBox(height: 40,),
               Padding(padding: EdgeInsets.symmetric(horizontal: 40),
                 child: Text("whats your stutus",textAlign: TextAlign.center,),


               ),

             ],

             ),

              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage("https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600"),
                      ),
                      title: Text("Amelia ${index+1}"),
                      subtitle: Text( index/2==0? "You missed audio call ${index+1}":"You missed video call ${index+1}"),
                      trailing: Icon(index/2==0? Icons.phone : Icons.video_call),




                    );


                  }
              ),

            ],

          ),
    ),);
  }
}
