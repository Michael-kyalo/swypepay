import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swypepay/theme/theme_state.dart';

import 'theme_event.dart';
import './app_themes.dart';

class ThemeBloc extends Bloc<ThemeEvent,ThemeState>{
  ThemeBloc(initialState) : super(initialState);

  @override
  Stream<ThemeState> mapEventToState(ThemeEvent event) async*{
    // TODO: implement mapEventToState
    if(event is ThemeChanged){
      yield ThemeState(themeData: appThemeData[event.theme]);
    }
  }

  

}