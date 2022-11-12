import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:meta/meta.dart';
import 'package:pokedoke/models/user_model.dart';
import 'dart:convert';

import 'package:pokedoke/services/authentications.dart';
import 'package:pokedoke/widgets/snackbar.dart';
part 'user_event.dart';
part 'user_state.dart';

bool mounted = true;

class UserBloc extends HydratedBloc<UserEvent, UserState> {
  UserBloc()
      : super(UserState(
            user: UserModel(
                userId: null,
                userName: null,
                userEmail: null,
                userPassword: null,
                isSignedUp: false,
                isLoggedIn: false))) {
    on<LoginUser>(_loginUser);
    on<SignupUser>(_signupUser);
  }

  _loginUser(LoginUser event, Emitter<UserState> emit) async {
    String result = await Authentication().login(event.user);
    print(result);
    if (result == "success") {
      emit(UserState(
          user: UserModel(
              userEmail: event.user.userEmail,
              userPassword: event.user.userPassword,
              userName: event.user.userName,
              userId: event.user.userId,
              isLoggedIn: true,
              isSignedUp: true)));
      if (mounted) {
        displaySnackbar(
            event.context, "success", "Welcome");
      }
    } else {
      emit(UserState(
          user: UserModel(
              userEmail: event.user.userEmail,
              userPassword: event.user.userPassword,
              userName: event.user.userName,
              userId: event.user.userId,
              isLoggedIn: false,
              isSignedUp: false)));
      if (mounted) {
        displaySnackbar(event.context, "error", result);
      }
    }
  }

  _signupUser(SignupUser event, Emitter<UserState> emit) async {
    String result = await Authentication().signup(event.user);
    if (result == 'success') {
      emit(UserState(
          user: UserModel(
              userEmail: event.user.userEmail,
              userPassword: event.user.userPassword,
              userName: event.user.userName,
              userId: event.user.userId,
              isLoggedIn: false,
              isSignedUp: true)));
      print("All good");
    } else {
      emit(UserState(
          user: UserModel(
              userEmail: event.user.userEmail,
              userPassword: event.user.userPassword,
              userName: event.user.userName,
              userId: event.user.userId,
              isLoggedIn: false,
              isSignedUp: false)));
      print("Something is wrong");
    }
  }

  @override
  UserState? fromJson(Map<String, dynamic> json) {
    return UserState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(UserState state) {
    return state.toMap();
  }
}