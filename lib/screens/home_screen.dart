import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                Row(
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildCarCard(
                        'Car Name 1',
                        'https://i.postimg.cc/154RvsPX/Designer.jpg',
                        '\$100/day',
                      ),
                      _buildCarCard(
                        'Car Name 2',
                        'https://i.postimg.cc/154RvsPX/Designer.jpg',
                        '\$120/day',
                      ),
                      _buildCarCard(
                        'Car Name 3',
                        'https://i.postimg.cc/154RvsPX/Designer.jpg',
                        '\$110/day',
                      ),
                      _buildCarCard(
                        'Car Name 4',
                        'https://i.postimg.cc/154RvsPX/Designer.jpg',
                        '\$130/day',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
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
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildRecentCarCard(
                        'Car Name 5',
                        'https://i.postimg.cc/154RvsPX/Designer.jpg',
                        '\$90/day',
                      ),
                      _buildRecentCarCard(
                        'Car Name 6',
                        'https://i.postimg.cc/154RvsPX/Designer.jpg',
                        '\$95/day',
                      ),
                      _buildRecentCarCard(
                        'Car Name 7',
                        'https://i.postimg.cc/154RvsPX/Designer.jpg',
                        '\$85/day',
                      ),
                      _buildRecentCarCard(
                        'Car Name 8',
                        'https://i.postimg.cc/154RvsPX/Designer.jpg',
                        '\$80/day',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildAvailableCarCard(
                        'Car Name 9',
                        'https://i.postimg.cc/154RvsPX/Designer.jpg',
                        '\$110/day',
                      ),
                      _buildAvailableCarCard(
                        'Car Name 10',
                        'https://i.postimg.cc/154RvsPX/Designer.jpg',
                        '\$100/day',
                      ),
                      _buildAvailableCarCard(
                        'Car Name 11',
                        'https://i.postimg.cc/154RvsPX/Designer.jpg',
                        '\$120/day',
                      ),
                      _buildAvailableCarCard(
                        'Car Name 12',
                        'https://i.postimg.cc/154RvsPX/Designer.jpg',
                        '\$115/day',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Booking',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.login),
              label: 'Login',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: 0,
          selectedItemColor: Colors.orange,
          onTap: (index) {},
        ));
  }

  Widget _buildCarCard(String name, String imageUrl, String price) {
    return Card(
      shadowColor: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            imageUrl,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(price),
        ],
      ),
    );
  }

  Widget _buildRecentCarCard(String name, String imageUrl, String price) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: _buildCarCard(name, imageUrl, price),
    );
  }

  Widget _buildAvailableCarCard(String name, String imageUrl, String price) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: _buildCarCard(name, imageUrl, price),
    );
  }
}
