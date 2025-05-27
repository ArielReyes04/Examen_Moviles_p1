import 'employee.dart';

class Store {
  final String name;
  final List<Employee> employees;

  Store(this.name, this.employees);

  double get totalSales => employees.fold(0, (sum, employee) => sum + employee.sales);
}