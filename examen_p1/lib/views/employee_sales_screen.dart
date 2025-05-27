import 'package:flutter/material.dart';
import '../models/employee.dart';

class EmployeeSalesScreen extends StatelessWidget {
  final List<Employee> employees;

  const EmployeeSalesScreen({super.key, required this.employees});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Employee Sales',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: employees.length,
          itemBuilder: (context, index) {
            final employee = employees[index];
            return Card(
              elevation: 2,
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: const Icon(Icons.person, color: Colors.blue),
                title: Text(
                  employee.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  'Sales: \$${employee.sales.toStringAsFixed(2)}',
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}