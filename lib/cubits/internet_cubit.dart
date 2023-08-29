import 'dart:async';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum InternetState{initial,Lost,Gained}

class InternetCubit extends Cubit<InternetState>{

Connectivity _Connectivity = Connectivity();

StreamSubscription?ConnectivitySubscription;

InternetCubit():super(InternetState.initial){

  ConnectivitySubscription = _Connectivity.onConnectivityChanged.listen((result) {

if(result==ConnectivityResult.mobile||result==ConnectivityResult.wifi){

emit(InternetState.Gained);
}
else{

  emit(InternetState.Lost);
}

   });
}
  
  Future<void> close(){
ConnectivitySubscription?.  cancel();
return super.close();
  }
}