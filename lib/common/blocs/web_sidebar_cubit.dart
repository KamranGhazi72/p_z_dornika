import 'package:bloc/bloc.dart';

class WebSidebarCubit extends Cubit<int> {
  WebSidebarCubit() : super(0);

  changeSidebarIndex(newIndex) {
    emit(newIndex);
  }
}
