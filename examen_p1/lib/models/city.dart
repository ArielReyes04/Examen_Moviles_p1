import 'dart:math';
import 'store.dart';
import 'employee.dart';

class City {
  final String name;
  final List<Store> stores;

  City(this.name, this.stores);

  double get totalSales => stores.fold(0, (sum, store) => sum + store.totalSales);

  static List<City> generateMockData() {
    final random = Random();
    return List.generate(3, (cityIndex) {
      return City(
        'City ${cityIndex + 1}',
        List.generate(2, (storeIndex) {
          return Store(
            'Store ${cityIndex + 1}-${storeIndex + 1}',
            List.generate(3, (employeeIndex) {
              return Employee(
                'Employee ${cityIndex + 1}-${storeIndex + 1}-${employeeIndex + 1}',
                random.nextDouble() * 1000,
              );
            }),
          );
        }),
      );
    });
  }
}