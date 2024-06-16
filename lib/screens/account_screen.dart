import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0; // Example: current index state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Rental App',
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Your existing widget tree
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.location_city_rounded,
                    color: Color.fromARGB(255, 109, 85, 85),
                    size: 24,
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your location",
                      style: TextStyle(
                        color: Color.fromARGB(255, 109, 85, 85),
                      ),
                    ),
                    Text(
                      "Pokhara",
                      style: TextStyle(
                        color: Color.fromARGB(255, 109, 85, 85),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(
                    Icons.notifications_none,
                    color: Color.fromARGB(255, 109, 85, 85),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search your favorite Cars',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.grey[200],
                filled: true,
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Brands',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'View all',
                  style: TextStyle(color: Colors.orange),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.directions_car, size: 40),
                  Icon(Icons.directions_car, size: 40),
                  Icon(Icons.directions_car, size: 40),
                  Icon(Icons.directions_car, size: 40),
                ]),
            const SizedBox(height: 20),
            const SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Best Cars',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(color: Colors.orange),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            // Add your list of recent best cars here
            // For example, you can use a Row with car images
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      shadowColor: Colors.black,
                      child: Column(
                        children: [
                          Image.network(
                            'https://i.postimg.cc/154RvsPX/Designer.jpg',
                            width: 100,
                          ),
                          Text('Car Name',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Price'),
                        ],
                      ),
                    ),
                    Card(
                      shadowColor: Colors.black,
                      child: Column(
                        children: [
                          Image.network(
                            'https://i.postimg.cc/154RvsPX/Designer.jpg',
                            width: 100,
                          ),
                          Text('Car Name',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Price'),
                        ],
                      ),
                    ),
                    Card(
                      shadowColor: Colors.black,
                      child: Column(
                        children: [
                          Image.network(
                            'https://i.postimg.cc/154RvsPX/Designer.jpg',
                            width: 100,
                          ),
                          Text('Car Name',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Price'),
                        ],
                      ),
                    ),
                    Card(
                      shadowColor: Colors.black,
                      child: Column(
                        children: [
                          Image.network(
                            'https://i.postimg.cc/154RvsPX/Designer.jpg',
                            width: 100,
                          ),
                          Text('Car Name',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Price'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Available Near you',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'View all',
                  style: TextStyle(color: Colors.orange),
                ),
              ],
            ),
            const SizedBox(height: 10),
            // Add your list of available cars near you here
            // For example, you can use a Row with car images
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      shadowColor: Colors.black,
                      child: Column(
                        children: [
                          Image.network(
                            'https://i.postimg.cc/154RvsPX/Designer.jpg',
                            width: 100,
                          ),
                          Text('Car Name',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Price'),
                        ],
                      ),
                    ),
                    Card(
                      shadowColor: Colors.black,
                      child: Column(
                        children: [
                          Image.network(
                            'https://i.postimg.cc/154RvsPX/Designer.jpg',
                            width: 100,
                          ),
                          Text('Car Name',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Price'),
                        ],
                      ),
                    ),
                    Card(
                      shadowColor: Colors.black,
                      child: Column(
                        children: [
                          Image.network(
                            'https://i.postimg.cc/154RvsPX/Designer.jpg',
                            width: 100,
                          ),
                          Text('Car Name',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Price'),
                        ],
                      ),
                    ),
                    Card(
                      shadowColor: Colors.black,
                      child: Column(
                        children: [
                          Image.network(
                            'https://i.postimg.cc/154RvsPX/Designer.jpg',
                            width: 100,
                          ),
                          Text('Car Name',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Price'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(const MaterialApp(home: HomeScreen()));
