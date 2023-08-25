import '../models/navigation.model.dart';

abstract class INavigationRepository {
  List<NavModel> getNavItems();
}
