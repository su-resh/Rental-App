import 'package:flutter/material.dart';

class SummaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Summary'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/car.jpeg',
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Maruti Fonx - 2017 Model',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '₹1500 / Day',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Divider(),
                    SizedBox(height: 16),
                    _buildInfoRow('Starting Date & Time', 'Feb 10 | 10:00 AM'),
                    _buildInfoRow('Ending Date & Time', 'Feb 14 | 10:00 AM'),
                    _buildInfoRow('Delivery Location', 'Airport, Pokhara-8, Nepal'),
                    _buildInfoRow('Return Location', 'Airport, Pokhara-8, Nepal'),
                    _buildInfoRow('Renter', 'Suresh Subedi'),
                    _buildInfoRow('Rent type', 'Self Driving'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            _buildExpandableSection('Terms & Conditions'),
            _buildExpandableSection('Personal Information / Documents'),
            _buildPriceBreakup(),
            SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
              
                },
                child: Text('Proceed to Pay'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  textStyle: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExpandableSection(String title) {
    return ExpansionTile(
      title: Text(title),
      children: <Widget>[
        ListTile(
          title: Text('Details go here...'), // Replace with actual details
        ),
      ],
    );
  }

  Widget _buildPriceBreakup() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Price Breakup',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            _buildInfoRow('Car Rental Charges', '₹ 4500'),
            _buildInfoRow('Fees & Charges', '₹ 450'),
          ],
        ),
      ),
    );
  }
}