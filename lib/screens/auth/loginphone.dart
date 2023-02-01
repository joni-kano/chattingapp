import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mwhatsapp/components/txtfield.dart';
import 'package:mwhatsapp/screens/auth/loginpassword.dart';

class LoginPhone extends StatelessWidget {
  const LoginPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Center(
            child: Text(
          "WhatsApp",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ),
      body: Stack(
        children: [
          Container(
          decoration: BoxDecoration(
          border: Border.all(color: Colors.grey,width:1),
          color: Colors.white,
        ),
            ),
          const   SizedBox(height: 2,),
          Container(
            height: 200,
          decoration: const BoxDecoration(
          
          color: Colors.blueGrey,
          
        ),
            ),
          Positioned(
            height: 300,
            top: 40,
            left: 8,
            right: 8,
            
            child: Container(
              height: 20,
              padding: const EdgeInsets.only(left:12,right:12),
              decoration: BoxDecoration(
            border: Border.all(color: Colors.grey,width:1),
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          
        ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  const SizedBox(height:16,),
                  const Text("WhatsApp Messenger",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  const SizedBox(height:16,),
                  const Text("Enter your mobile number to Login or Register",
                  style:TextStyle(fontSize: 16,)
                  ),
                  const SizedBox(height:20,),
                  
                    Row(
                      children:const [
                        Expanded(
                          flex:1,
                          child:                  
                           PhoneCodetxtfield(countrycode: "+254",)
                          ),
                        SizedBox(width:8),
                        
                        Expanded(
                          flex: 4,
                          child: Phonetxtfield(hint:"Your mobile number", inputType: TextInputType.phone,))
                      ],
                    ),
                    const SizedBox(height:40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("Or connect with social account",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,
                      fontSize:18),
                      ),
                      
                      CircleAvatar(
                        backgroundColor: const Color.fromARGB(255, 20, 126, 75),
                        child: IconButton(onPressed: 
                        (){
                          Get.to( const LoginPass());
                        }, icon: const Icon(Icons.arrow_forward_ios),
                        color: Colors.white,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}