import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example_auth/auth_bloc/auth_event.dart';
import 'package:flutter_bloc_example_auth/auth_bloc/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent,AuthState>{
  AuthBloc() : super(AuthInitial() as AuthState){
    on<LoginEvent>((Event,emit)){
emit(AuthLoading());
Future.delayed(Duration(second:5));
emit(AuthSuccess(name: 'Ulum'));
    },);

    on<LogoutEvent>(
      (event, emit){
        emit(AuthLoading());
        Future.delayed(const Duration(seconds: 5));
        emit(AuthInitial());
      },
    );
  }
}

class AuthInitial {
}