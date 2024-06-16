import 'package:flutter/material.dart';
import 'package:hackathon_project/screens/booking_screen.dart';
import 'package:hackathon_project/screens/weather%20Screen/weather_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

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
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: const [
          HomePageContent(),
          BookingPage(),
          WeatherScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}

class HomePageContent extends StatelessWidget {
  const HomePageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
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
                Image(
                  image: NetworkImage(
                      'https://thumbs.dreamstime.com/b/web-136350854.jpg'),
                  width: 40,
                ),
                Image(
                  image: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Mercedes-Logo.svg/851px-Mercedes-Logo.svg.png?20230111203159'),
                  width: 40,
                ),
                Image(
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnv7dvaZ8iywKm4P1-ygtkJKsBE1bshhtAIQ&s'),
                  width: 40,
                ),
                Image(
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkwuMOG80bPYHyqVRXUDy1En-J56S9fVF2Vg&s'),
                  width: 40,
                ),
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
                        const Text('Car Name',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        const Text('Price'),
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
                        const Text('Car Name',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        const Text('Price'),
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
                        const Text('Car Name',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        const Text('Price'),
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
                        const Text('Car Name',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        const Text('Price'),
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
                        const Text('Car Name',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        const Text('Price'),
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
                        const Text('Car Name',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        const Text('Price'),
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
                        const Text('Car Name',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        const Text('Price'),
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
                        const Text('Car Name',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        const Text('Price'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BookingPage extends StatelessWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BookingScreen();
  }
}

class WeatherPage extends StatelessWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WeatherScreen();
  }
}

void main() => runApp(const MaterialApp(home: HomeScreen()));
