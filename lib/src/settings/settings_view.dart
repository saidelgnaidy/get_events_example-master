import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/src/localization/trans.dart';
import 'package:template/src/settings/settings_cubit.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: BlocBuilder<SettingsBloc, SettingsState>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(Tr.get.theme),
                          DropdownButton<ThemeMode>(
                            value: SettingsBloc.of(context).themeMode,
                            onChanged: SettingsBloc.of(context).updateThemeMode,
                            underline: const SizedBox(),
                            items: [
                              DropdownMenuItem(
                                value: ThemeMode.system,
                                child: Text(Tr.get.system),
                              ),
                              DropdownMenuItem(
                                value: ThemeMode.light,
                                child: Text(Tr.get.light),
                              ),
                              DropdownMenuItem(
                                value: ThemeMode.dark,
                                child: Text(Tr.get.dark),
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(Tr.get.lang),
                          DropdownButton<Locale>(
                            value: SettingsBloc.of(context).locale,
                            onChanged: SettingsBloc.of(context).updateLocale,
                            underline: const SizedBox(),
                            items: [
                              DropdownMenuItem(
                                value: const Locale('en'),
                                child: Text(Tr.get.en),
                              ),
                              DropdownMenuItem(
                                value: const Locale('ar'),
                                child: Text(Tr.get.ar),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
