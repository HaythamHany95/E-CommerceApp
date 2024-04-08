import 'package:e_commerce/domain/entities/categories_response_entity.dart';
import 'package:e_commerce/domain/use_cases/get_categories_use_case.dart';
import 'package:e_commerce/ui/screens/home/home_tabs/home_tab/cubit/home_tab_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeTabViewModel extends Cubit<HomeTabStates> {
  GetAllCategoriesUseCase getCategoriesUseCase;

  HomeTabViewModel({required this.getCategoriesUseCase})
      : super(HomeTabInitialState());
  List ads = [
    "assets/images/ads_image1.png",
    "assets/images/ads_image2.png",
    "assets/images/ads_image3.png"
  ];
  List<CategoryEntity> categories = [];

  void getAllCategories() async {
    emit(CategoryLoadingState());
    var either = await getCategoriesUseCase.invoke();
    either.fold(
      (error) {
        emit(CatagoryErrorState(errorMessage: error));
      },
      (response) {
        categories = response.data ?? [];
        emit(CategorySuccessState(category: response));
      },
    );
  }
}
