import 'package:flutter_sample_app/models/popular_set.dart';

abstract class PopularSetRepository {
  Future<List<PopularSet>> getPopularSets();
}

class PopularSetRepositoryImpl implements PopularSetRepository {
  @override
  Future<List<PopularSet>> getPopularSets() {
    List<PopularSet> popularSets = [
      PopularSet(
        "https://cdn.pixabay.com/photo/2015/04/12/21/36/meringues-719629_1280.jpg",
        "Ciasteczko nr 1",
        "7 ładnych ciasteczek",
        "1446g",
        "\$48.99",
      ),
      PopularSet(
        "https://cdn.pixabay.com/photo/2020/06/09/22/35/pavlova-5280271_1280.jpg",
        "Ciasteczko nr 2",
        "20 ładnych ciasteczek",
        "3846g",
        "\$148.99",
      ),
      PopularSet(
        "https://cdn.pixabay.com/photo/2017/08/03/14/38/ice-cream-2576622_1280.jpg",
        "Lody czekoladowe",
        "5 niedobrych lodów",
        "646g",
        "\$8.99",
      ),
      PopularSet(
        "https://cdn.pixabay.com/photo/2017/11/04/17/26/christmas-cookies-2918172_1280.jpg",
        "Pierniczki zielone",
        "8 brzydkich pierniczków",
        "6446g",
        "\$2.99",
      ),
      PopularSet(
        "https://cdn.pixabay.com/photo/2015/03/26/09/46/donuts-690281_1280.jpg",
        "Pączki",
        "2 pączki",
        "920g",
        "\$12.00",
      ),
    ];

    return Future<List<PopularSet>>.value(popularSets);
  }
}
