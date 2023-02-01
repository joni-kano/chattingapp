// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class chatperson extends StatelessWidget {
  const chatperson({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: ListTile(
        leading: Stack(
          children: [
            CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blueGrey,
                      child: Image.asset(
      "assets/images/person.svg",
      color: Colors.white,
      height: 37,
      width: 37,
                      ),
                      
                    ),
                     Positioned(
            right: 24,
            left: 0,
            top: 24,
            bottom: 0,
            child: SizedBox(
              height: 46,
              width: 46,
              child: OutlinedButton(
    onPressed: () {
    },
    child: const CircleAvatar(
                backgroundColor:Colors.green,
                )
              ),
            ),
          ),
          ],
        ),
                
                title: const Text(
                  "John Doe",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                
                subtitle: Row(
                  children: [
      const SizedBox(height: 10,),
      const SizedBox(width: 5),
      const Icon(Icons.done_all_sharp, color: Colors.grey, size: 12),
      Text("Hello there",
          style: TextStyle(fontSize: 13, color: Colors.grey[600]))
                  ],
                ),
                trailing: Column(
                  children: const[
                    Text("07:00pm"),
                    SizedBox(height: 20,),
                    Icon(Icons.chat_bubble, color: Colors.grey, size: 12),
                  ],
                ),
              ),
    );
  }
}