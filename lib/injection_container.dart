import 'package:get_it/get_it.dart';
import 'features/activity/data/datasources/activity_datasource_impl.dart';
import 'features/activity/data/services/tts_service.dart';
import 'features/activity/presentation/bloc/activity_bloc.dart';
import 'features/auth/data/datasources/accelerometer_datasource.dart';
import 'features/auth/tracking/data/datasources/gps_datasource.dart';
import 'features/activity_record/data/repositories/activity_record_repository.dart';
import 'features/activity_record/presentation/bloc/activity_record_bloc.dart';

final sl = GetIt.instance;

void initDependencies() {
  // Servicios
  sl.registerLazySingleton<TtsService>(() => TtsService());

  // Datasources (ahora usando plugins, misma interfaz)
  sl.registerLazySingleton<AccelerometerDataSource>(
    () => AccelerometerDataSourceImpl(),
  );
  sl.registerLazySingleton<GpsDataSource>(
    () => GpsDataSourceImpl(),
  );
  sl.registerLazySingleton<ActivityDataSourceImpl>(
    () => ActivityDataSourceImpl(sl<AccelerometerDataSource>()),
  );

  // CRUD - Historial
  sl.registerLazySingleton<ActivityRecordRepository>(
    () => ActivityRecordRepository(),
  );

  // BLoCs
  sl.registerFactory<ActivityBloc>(
    () => ActivityBloc(
      dataSource: sl<ActivityDataSourceImpl>(),
      ttsService: sl<TtsService>(),
    ),
  );
  sl.registerFactory<ActivityRecordBloc>(
    () => ActivityRecordBloc(sl<ActivityRecordRepository>()),
  );
}