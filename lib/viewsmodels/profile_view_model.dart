import 'package:survey/constants/const.dart';
import 'package:survey/constants/route_name.dart';
import 'package:survey/locator.dart';
import 'package:survey/services/navigation_service.dart';
import 'package:survey/services/storage_service.dart';
import 'package:survey/viewsmodels/base_model.dart';

class ProfileViewModel extends BaseModel {
  final StorageService _storageService = locator<StorageService>();
  final NavigationService _navigationService = locator<NavigationService>();

  String image = '';
  String name = '';
  String phoneNumber = '';
  String email = '';
  String unit = '';

  void initClass() {
    print('init');
    loadProfile();
  }

  void goToEditProfile() {
    _navigationService.navigateTo(EditProfileRoute);
  }

  void loadProfile() async {
    setBusy(true);
    var tempImage = await _storageService.getString(K_IMAGE);
    name = await _storageService.getString(K_NAME);
    print('name $name');
    phoneNumber = await _storageService.getString(K_PHONE_NUMBER);
    email = await _storageService.getString(K_EMAIL);
    unit = await _storageService.getString(K_UNIT);
    image = 'http://survey.pptik.id/data/kehadiran/image/' + tempImage;
    print('the image $image');
    setBusy(false);
  }

  void goToChangePassword() {
    _navigationService.navigateTo(EditChangePwRoute);
  }
}
