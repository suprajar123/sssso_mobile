import 'package:get_it/get_it.dart';

//IMPORT ALL THE CLASSES FOR WHICH U WANT TO INSTANTIATE OBECTS HERE:
import 'package:ssssomhg_app/core/services/api.dart';
/*
import 'core/services/authentication_service.dart';
import 'core/viewmodels/comments_model.dart';
import 'core/viewmodels/home_model.dart';
import 'core/viewmodels/login_model.dart';*/

GetIt locator = GetIt.instance;

void setupLocator() {
  
  locator.registerLazySingleton(() => Api());

 /*  locator.registerFactory(() => LoginModel());
  locator.registerFactory(() => HomeModel());
  locator.registerFactory(() => CommentsModel()); */
}