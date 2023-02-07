import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_pulling/source/data/Auth/cubit/account_cubit.dart';
import 'package:receipt_pulling/source/data/Auth/cubit/login_cubit.dart';
import 'package:receipt_pulling/source/data/Auth/cubit/shift_cubit.dart';
import 'package:receipt_pulling/source/data/Auth/cubit/splash_cubit.dart';
import 'package:receipt_pulling/source/data/Menu/ReceivePulling/cubit/receive_pulling_cubit.dart';
import 'package:receipt_pulling/source/data/Menu/ReceivePulling/cubit/receive_pulling_insert_cubit.dart';
import 'package:receipt_pulling/source/data/Menu/ReceivePulling/cubit/receive_pulling_scan_cubit.dart';
import 'package:receipt_pulling/source/data/Menu/ReceivePulling/cubit/receive_pulling_wc_cubit.dart';
import 'package:receipt_pulling/source/network/network.dart';
import 'package:receipt_pulling/source/repository/repository.dart';
import 'package:receipt_pulling/source/router/router.dart';

void main() {
  runApp(MyApp(
    router: RouterNavigation(),
    myRepository: MyRepository(myNetwork: MyNetwork()),
  ));
}

class MyApp extends StatelessWidget {
  final RouterNavigation? router;
  final MyRepository? myRepository;

  const MyApp({super.key, this.router, this.myRepository});
  @override
  Widget build(BuildContext context) {
     return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SplashCubit(myRepository: myRepository),
        ),
        BlocProvider(
          create: (context) => ShiftCubit(myRepository: myRepository),
        ),
        BlocProvider(
          create: (context) => LoginCubit(myRepository: myRepository),
        ),
          BlocProvider(
          create: (context) => AccountCubit(myRepository: myRepository),
        ),
        BlocProvider(
          create: (context) => ReceivePullingCubit(myRepository: myRepository),
        ),
        BlocProvider(
          create: (context) => ReceivePullingScanCubit(myRepository: myRepository),
        ),
        BlocProvider(
          create: (context) => ReceivePullingInsertCubit(myRepository: myRepository),
        ),
        BlocProvider(
          create: (context) => ReceivePullingWcCubit(myRepository: myRepository),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: router!.generateRoute,
      ),
    );
  }
}

