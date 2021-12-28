import 'dart:async';

import 'package:mina_course/domain/model.dart';
import 'package:mina_course/presentation/base/baseViewModel.dart';
import 'package:mina_course/presentation/resources/assets_manager.dart';
import 'package:mina_course/presentation/resources/strings_manager.dart';

class OnBoardingViewModel extends BaseViewModel
    with OnBoardingViewModelInputs, OnBoardingViewModelOutputs {
  //stream controller
  final StreamController _streamController =
      StreamController<SliderViewObject>();

  late final List<SliderObject> _list;

  int _currentIndex = 0;

  //inputs
  @override
  void dispose() {
    _streamController.close();
  }

  @override
  void start() {
    _list = _getSliderData();
    //send this slider data to view
    _postDataToView();
  }

  @override
  int goNext() {
    int next = _currentIndex++;
    if (next >= _list.length) {
      _currentIndex = 0;
    }
    return _currentIndex;
  }

  @override
  int goPrevious() {
    int previous = _currentIndex--;
    if (previous == -1) {
      _currentIndex = _list.length - 1;
    }
    return _currentIndex;
  }

  @override
  void onPageChanged(int index) {
    _currentIndex = index;
    _postDataToView();
  }

  @override
  Sink get inputSliderViewObject => _streamController.sink;

  //output
  @override
  Stream<SliderViewObject> get outputSliderViewObject =>
      _streamController.stream.map((slideViewObject) => slideViewObject);

  //private functions
  List<SliderObject> _getSliderData() => [
        SliderObject(AppStrings.onBoardingTitle1,
            AppStrings.onBoardingSubTitle1, ImageAssets.onBoardingLogo1),
        SliderObject(AppStrings.onBoardingTitle2,
            AppStrings.onBoardingSubTitle2, ImageAssets.onBoardingLogo2),
        SliderObject(AppStrings.onBoardingTitle3,
            AppStrings.onBoardingSubTitle3, ImageAssets.onBoardingLogo3),
        SliderObject(AppStrings.onBoardingTitle4,
            AppStrings.onBoardingSubTitle4, ImageAssets.onBoardingLogo4),
      ];

  _postDataToView() {
    inputSliderViewObject.add(
        SliderViewObject(_list[_currentIndex], _list.length, _currentIndex));
  }
}

//inputs means the orders that our view model will receive from our view
abstract class OnBoardingViewModelInputs {
  void goNext(); //when user clicks on right arrow or swipe left
  void goPrevious(); //when user clicks on left arrow or swipe right
  void onPageChanged(int index);

  Sink
      get inputSliderViewObject; //this is the way to add data to the stream .... stream input
}

//output mean data or results that will be sent from our view model to our view
abstract class OnBoardingViewModelOutputs {
  Stream<SliderViewObject> get outputSliderViewObject;
}

class SliderViewObject {
  SliderObject sliderObject;
  int numOfSlides;
  int currentIndex;

  SliderViewObject(this.sliderObject, this.numOfSlides, this.currentIndex);
}
