import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example_auth/auth_bloc/auth_event.dart';
import 'package:flutter_bloc_example_auth/auth_bloc/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent,AuthState>{
  AuthBloc() : super(AuthInitial()) {
    on<LoginEvent>(
      // ignore: use_function_type_syntax_for_parameters
      (event, emit)){
        emit(AuthLoading());
        Future.delayed(Duration(seconds: 5));
        emit(AuthSuccess(name: 'Ulum'));
        },
        );

    on<LogoutEvent>(
      (event, emit){
        emit(AuthLoading());
        Future.delayed(const Duration(seconds: 5));
        emit(AuthInitial());
      },
    );
  }
}