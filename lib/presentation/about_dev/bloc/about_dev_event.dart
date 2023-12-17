part of 'about_dev_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AboutDev widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AboutDevEvent extends Equatable {}

/// Event that is dispatched when the AboutDev widget is first created.
class AboutDevInitialEvent extends AboutDevEvent {
  @override
  List<Object?> get props => [];
}
