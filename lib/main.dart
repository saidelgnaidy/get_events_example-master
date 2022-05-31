import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:template/logic/get_advertisement.dart';
import 'package:template/logic/state_events.dart';
import 'package:template/src/localization/trans.dart';
import 'package:template/src/settings/settings_cubit.dart';
import 'package:template/src/settings/theme_mode.dart';
import 'package:template/view/screen/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SettingsBloc()..loadSettings()),
        BlocProvider(create: (context) => AdvertisementBloc()..add(const GetAdvertisement())),
      ],
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: Tr.delegates,
            supportedLocales: Tr.supportedLocales,
            locale: SettingsBloc.of(context).locale,
            localeResolutionCallback: (Locale? locale, Iterable<Locale> iterable) {
              return SettingsBloc.of(context).locale;
            },
            theme: KThemeData.light,
            darkTheme: KThemeData.dark,
            themeMode: SettingsBloc.of(context).themeMode,
            home: Builder(
              builder: (context) {
                return AnnotatedRegion<SystemUiOverlayStyle>(
                  value: KThemeData.overlayStyle(context),
                  child: const Landing(),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AdvertisementBloc, AdvertisementState>(
        builder: (context, state) {
          return state.when(
            loading: () => const Center(child: CircularProgressIndicator.adaptive()),
            loaded: (value) => HomeScreen(advertisement: value),
            error: (error) => Center(
                child: Column(
              children: [
                const Text('Something Went Wrong plaese try again later'),
                Text(error),
              ],
            )),
          );
        },
      ),
    );
  }
}
