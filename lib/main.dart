import 'package:admin/blocs/admin_bloc.dart';
import 'package:admin/pages/home.dart';
import 'package:admin/pages/sign_in.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    return MultiProvider(providers: [
      ChangeNotifierProvider<AdminBloc>(create: (context) => AdminBloc()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: TouchAndMouseScrollBehavior(),
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        appBarTheme: AppBarTheme(
          color: Colors.white,
          titleTextStyle: GoogleFonts.poppins(
              color: Colors.grey[900],fontWeight: FontWeight.w600, fontSize: 18
          ),
          elevation: 0,
          actionsIconTheme: IconThemeData(
            color: Colors.grey[900],
          ),
          iconTheme: IconThemeData(
            color: Colors.grey[900]
          )
        ),
        
      ),
      home: MyApp1(),
    ),
    
    
    
    
    
    );
  }
}

class MyApp1 extends StatelessWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ab = context.watch<AdminBloc>();
    return ab.isSignedIn == false ? SignInPage() : HomePage();
  }
}


class TouchAndMouseScrollBehavior extends MaterialScrollBehavior {
    // Override behavior methods and getters like dragDevices
    @override
    Set<PointerDeviceKind> get dragDevices => { 
      PointerDeviceKind.touch,
      PointerDeviceKind.mouse,
      // etc.
    };
}
