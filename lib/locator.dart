import 'package:survey/services/alert_service.dart';
import 'package:survey/services/api_service.dart';
import 'package:survey/services/ftp_service.dart';
import 'package:survey/services/geolocator_service.dart';
import 'package:survey/services/guid_service.dart';
import 'package:survey/services/navigation_service.dart';
import 'package:survey/services/permission_service.dart';
import 'package:survey/services/rmq_service.dart';
import 'package:survey/services/storage_service.dart';
import 'package:survey/services/vibrate_service.dart';
import 'package:get_it/get_it.dart';
import 'package:survey/services/location_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => GeolocatorService());
  locator.registerLazySingleton(() => ApiService());
  locator.registerLazySingleton(() => GuidService());
  locator.registerLazySingleton(() => StorageService());
  locator.registerLazySingleton(() => AlertService());
  locator.registerLazySingleton(() => VibrateService());
  locator.registerLazySingleton(() => FtpService());
  locator.registerLazySingleton(() => RMQService());
  locator.registerLazySingleton(() => LocationService());
  locator.registerLazySingleton(() => PermissionsService());
}
