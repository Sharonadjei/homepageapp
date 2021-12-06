import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Center(
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://images.unsplash.com/photo-1611232657592-dedbfa563955?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=452&q=80"),
          ),
        ),
     title: const Text(" MY TASKS",style:
      TextStyle(
        color: Colors.black
      ),
      ),
      actions: const [
        Icon(Icons.filter_list, color: Colors.black,),
         Icon(Icons.search,color: Colors.black,)
      ],
       ),
      
   body: 
   ListView(
     // ignore: prefer_const_literals_to_create_immutables
     children: [ const MyTasksWidget(),
     const MyTasksWidget(),
     const MyTasksWidget(),
     const MyTasksWidget(),
     const MyTasksWidget(),
     const MyTasksWidget(),
     const MyTasksWidget(),
     const MyTasksWidget(),
     const MyTasksWidget(),
     const MyTasksWidget(),
     const MyTasksWidget(),
     const MyTasksWidget(),
     const MyTasksWidget(),
     const MyTasksWidget(),
     const MyTasksWidget(),
     const MyTasksWidget(),
     const MyTasksWidget(),
     const MyTasksWidget(),
     const MyTasksWidget(),
     ],
 ),
   floatingActionButton: FloatingActionButton(onPressed: (){},
   child: 
   const Icon(Icons.add,),
   ),
  bottomSheet: 
  Padding(
    padding: const EdgeInsets.all(20.0),
    child: Card(color: Colors.blue[50],
      child: 
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: const [
            Icon(Icons.check_circle,),
           SizedBox(width: 10,), 
            
            Text("Completed"),
            SizedBox(width: 3,),
            Icon(Icons.arrow_drop_down),
            Spacer(),
            Text("24")
          ],
        ),
      ),
    ),
  ),);
  }
}

class MyTasksWidget extends StatelessWidget {
  const MyTasksWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      
      
        elevation: 10,
        child: ListTile(
          leading: const Icon(Icons.check_circle_outline,color: Colors.pink,),
       title: const Text("Plan the trip to Finland.", style: TextStyle(fontWeight: FontWeight.bold),),
       subtitle:const Text("The family trip to Finland next summer",
       maxLines: 2,
       overflow: TextOverflow.ellipsis,) ,
       trailing: Row(
         mainAxisSize: MainAxisSize.min,
         children: const [
           Icon(Icons.notifications,
           color: Colors.pink,),
           Text("Yesterday",style:
            TextStyle(
              color: Colors.pink
            ),)
         ],

         
       ), ),
      
    );
  }
}