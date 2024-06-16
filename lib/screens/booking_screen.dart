import 'package:flutter/material.dart';

class BookingScreen extends StatefulWidget {
  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen>
    with SingleTickerProviderStateMixin {
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
        automaticallyImplyLeading: false, // Remove back button
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Bookings',
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: false,
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.orange,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.orange,
          tabs: const [
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
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
               Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/2015_Mazda_MX-5_ND_2.0_SKYACTIV-G_160_i-ELOOP_Rubinrot-Metallic_Vorderansicht.jpg/400px-2015_Mazda_MX-5_ND_2.0_SKYACTIV-G_160_i-ELOOP_Rubinrot-Metallic_Vorderansicht.jpg"),
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Maruti Fonx - 2017 Model',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('₹1500 / Day'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            const Text('Starting Date & Time'),
            const Text('Feb 10 | 10:00 AM'),
            const SizedBox(height: 8.0),
            const Text('Ending Date & Time'),
            const Text('Feb 14 | 10:00 AM'),
            const SizedBox(height: 8.0),
            const Text('Delivery Location'),
            const Text('Airport, Pokhara-8, Nepal'),
            const SizedBox(height: 8.0),
            const Text('Return Location'),
            const Text('Airport, Pokhara-8, Nepal'),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.orange,
                    side: const BorderSide(color: Colors.orange),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('E-Ticket'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
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
