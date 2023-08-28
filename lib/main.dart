import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news__app/Data/Cubits/GetNewsCubit/get_news_cubit.dart';
import 'package:news__app/Services/fcm.dart';
import 'Screens/start_screen.dart';
import 'Services/widgets/default_firebase_options.dart';
@pragma('vm entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();

  NotificationServices().showNotification(message);
}
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.android);
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Firebase.initializeApp().then((value) {
      NotificationServices().registerNotification();
      NotificationServices().configLocalNotification();
    });}
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GetNewsCubit>(
          create: (BuildContext context) => GetNewsCubit(),
        ),
      ],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
          home: const HomeView(),
      ),
    );
  }
}
