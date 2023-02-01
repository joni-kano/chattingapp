import 'package:flutter/material.dart';

import '../../components/searchbar.dart';
import '../../export.dart';

class AllchatsScreen extends StatelessWidget {
  const AllchatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: const Center(
            child: Text(
          "Chats",
          style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),
        )),
        leading: TextButton(
          child: const Text("Edit",textAlign: TextAlign.center,style: TextStyle(color: Colors.white60,fontSize: 18),),
          onPressed: () {
            Get.back();
          },
      
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ))
        ],
      ),
      body: CustomScrollView(
        
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(0),
            sliver:SliverToBoxAdapter(
              
              child: Container(
                decoration: const BoxDecoration(
            //border: Border.all(color: Colors.grey,width:1),
          //borderRadius: BorderRadius.circular(12),
          color: Colors.green,
          
        ),
                child: SingleChildScrollView(
                        
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: (){}, 
                    child: const Text("Chats",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 18),)),
                  const SizedBox(width: 12,),
                    TextButton(
                    onPressed: (){}, 
                    child: const Text("Groups",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 18),)),
                    const SizedBox(width: 12,),
                    TextButton(
                    onPressed: (){}, 
                    child: const Text("Calls",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 18),)),
                    const SizedBox(width: 12,),
                    TextButton(
                    onPressed: (){}, 
                    child: const Text("Active",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 18),))
              
                ]
                    ),
                  ),
              ),
              ),
            ),
           SliverToBoxAdapter(
             child: SearchButton(hintText: 'Search', onChanged: (String value) {}, text: '',
             
             ),
           ),
          SliverToBoxAdapter(
             child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: const [
                chatperson(),
                 Padding(
          padding: EdgeInsets.only(right: 20, left: 80),
          child: Divider(
            thickness: 1,
          ),
        ),
        chatperson(),
                 Padding(
          padding: EdgeInsets.only(right: 20, left: 80),
          child: Divider(
            thickness: 1,
          ),
        ),
        chatperson(),
                 Padding(
          padding: EdgeInsets.only(right: 20, left: 80),
          child: Divider(
            thickness: 1,
          ),
        )
              ],
            ))
          )
        ],
      ),
    );
  }
}

