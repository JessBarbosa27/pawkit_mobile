import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'about_dev_event.dart';
part 'about_dev_state.dart';

class AboutDevBloc extends Bloc<AboutDevEvent, AboutDevState> {
  AboutDevBloc() : super(AboutDevInitial()) {
    on<AboutDevEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
