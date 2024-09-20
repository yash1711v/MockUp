import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PageMokeUp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PageOne(),
    );
  }
}

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  List<String> offer = [
    "assets/Images/Store_Cashback.png",
    "assets/Images/Buy_Coins.png",
    "assets/Images/Offers.png",
    "assets/Images/Pay_at_store.png",
  ];
  List<String> text = [
    "Pay using my \n Balance 500",
    "Buy 500 \n for just 450",
    "Shop above 899 \n and get 50",
    "Purchase at Store\n& get 5% back",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Magnolia Bakery"),
                  Text('3% cashback • ₴250 Welcome Bonus'),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              "Claim Deals",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          GridView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.7),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            children: [
              for (int i = 0; i < 4; i++)
                Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      colors: [
                        Colors.blue,
                        Colors.green,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        offer[i],
                        scale: i == 2 ? 1.5 : 6,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        text[i],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "----------------------",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Claim Now"),
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.white),
                          shape:
                          MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ]),
      ),
      bottomNavigationBar: Container(
        height: 200,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 2,
              spreadRadius: 1,
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15,),
              const Text("Proof of Transaction",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              const Text("Scan Receipt/share payment screenshot to earn",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w200),),
              const SizedBox(height: 15,),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.white),
                    shape:
                    MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Share Payment image"),
                      Image.asset("assets/Images/UPIImage.png",
                        scale: 8,
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.deepPurpleAccent),
                    shape:
                    MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Share Payment image", style: TextStyle(color: Colors.white),),
                    ],
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
