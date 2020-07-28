import 'package:repositories_list/app/shared/widgets/repository_card/repository_card_controller.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => RepositoryCardController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage(args.data)),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
