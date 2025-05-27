import 'package:flutter/material.dart';
import '../models/store.dart';
import 'employee_sales_screen.dart';

class StoreSalesScreen extends StatelessWidget {
  final List<Store> stores;

  const StoreSalesScreen({super.key, required this.stores});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Store Sales',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: stores.length,
          itemBuilder: (context, index) {
            final store = stores[index];
            return Card(
              elevation: 2,
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: const Icon(Icons.store, color: Colors.blue),
                title: Text(
                  store.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  'Total Sales: \$${store.totalSales.toStringAsFixed(2)}',
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                ),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EmployeeSalesScreen(employees: store.employees),
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