
import 'package:act14/models/contadorm.dart';
import 'package:watch_it/watch_it.dart';

void initializeDependencies (){
  di.registerSingleton<CounterModel>(CounterModel());
}