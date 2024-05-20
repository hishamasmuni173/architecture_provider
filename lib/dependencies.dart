import 'package:architecture_provider/services/user_data_service.dart';
import 'package:architecture_provider/services/rest_service.dart';
import 'package:architecture_provider/services/todo_data_service.dart';
import 'package:get_it/get_it.dart';

GetIt service = GetIt.instance;

void init() {
service.registerLazySingleton(() => RestService());
service.registerLazySingleton(() => TodoDataService());
service.registerLazySingleton(() => UserDataService());
}
