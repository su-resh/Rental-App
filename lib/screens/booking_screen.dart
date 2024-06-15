import 'package:flutter/material.dart';

class BookingScreen extends StatefulWidget {
  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bookings'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.red,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.red,
          tabs: [
            Tab(text: 'Upcoming'),
            Tab(text: 'Completed'),
            Tab(text: 'Cancelled'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildTabContent('Upcoming Bookings'),
          _buildTabContent('Completed Bookings'),
          _buildTabContent('Cancelled Bookings'),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'Bookings'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Profile'),
        ],
        currentIndex: 1,
        onTap: (index) {},
      ),
    );
  }

  Widget _buildTabContent(String title) {
    return ListView(
      children: [
        BookingCard(title: title),
      ],
    );
  }
}

class BookingCard extends StatelessWidget {
  final String title;

  BookingCard({required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/car.jpeg',
                  width: 60,
                  height: 60,
                ),
                SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Maruti Fonx - 2017 Model', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('₹1500 / Day'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text('Starting Date & Time'),
            Text('Feb 10 | 10:00 AM'),
            SizedBox(height: 8.0),
            Text('Ending Date & Time'),
            Text('Feb 14 | 10:00 AM'),
            SizedBox(height: 8.0),
            Text('Delivery Location'),
            Text('Airport, Pokhara-8, Nepal'),
            SizedBox(height: 8.0),
            Text('Return Location'),
            Text('Airport, Pokhara-8, Nepal'),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Cancel'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.red,
                    side: BorderSide(color: Colors.red),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('E-Ticket'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
