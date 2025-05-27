import 'package:flutter/material.dart';
import '../models/city.dart';
import 'store_sales_screen.dart';

class CitySalesScreen extends StatelessWidget {
  final List<City> cities;

  const CitySalesScreen({super.key, required this.cities});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'City Sales',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: cities.length,
          itemBuilder: (context, index) {
            final city = cities[index];
            return Card(
              elevation: 2,
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: const Icon(Icons.location_city, color: Colors.blue),
                title: Text(
                  city.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  'Total Sales: \$${city.totalSales.toStringAsFixed(2)}',
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                ),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StoreSalesScreen(stores: city.stores),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}