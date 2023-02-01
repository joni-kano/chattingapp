import 'package:flutter/material.dart';
import 'package:mwhatsapp/export.dart';

class Verifycode extends StatelessWidget {
  const Verifycode({super.key});

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
              border: Border.all(color: Colors.grey, width: 1),
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
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
              padding: const EdgeInsets.only(left: 12, right: 12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  const Text("Are You New to WhatsApp",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                      "Enter the 4 digits code sent to your mobile number",
                      style: TextStyle(fontSize: 16, color: Colors.black54)),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("+254745067812",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.red)),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      SizedBox(
                        width: 20,
                      ),
                      Codetxtfield(number1: 1),
                      SizedBox(
                        width: 20,
                      ),
                      Codetxtfield(number1: 2),
                      SizedBox(
                        width: 20,
                      ),
                      Codetxtfield(number1: 3),
                      SizedBox(
                        width: 20,
                      ),
                      Codetxtfield(number1: 4)
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Resend code"),
                        CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 20, 126, 75),
                          child: IconButton(
                            onPressed: () {
                              Get.to(const BtmNavbar());
                            },
                            icon: const Icon(Icons.arrow_forward_ios),
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
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
