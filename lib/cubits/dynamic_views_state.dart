part of 'dynamic_views_cubit.dart';

@immutable
abstract class DynamicViewsState {}

class DynamicViewsInitial extends DynamicViewsState {}
class DynamicViewsInProgress extends DynamicViewsState {}
class DynamicViewsInSuccess extends DynamicViewsState {
  DynamicViewsInSuccess({required this.views});
  List<InputModel> views;
}
class DynamicViewsInFailure extends DynamicViewsState {
  DynamicViewsInFailure({required this.errorText});
  String errorText;
}