import 'package:blocproject/cubits/internet_cubit.dart';
import 'package:blocproject/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(){
  runApp(const MyWidget() );
}
  class MyWidget extends StatelessWidget {
  const MyWidget({super.key});


  @override
  Widget build(BuildContext context) {
  return BlocProvider(
create: (context) => InternetCubit(),
child:const MaterialApp(
debugShowCheckedModeBanner: false,
home:HomeScreen(),
)
);
}
}
