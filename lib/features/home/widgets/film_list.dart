import 'package:flutter/material.dart';
import 'package:films/app/models/film_card_model.dart';
import 'package:films/app/widgets/film_tile.dart';


class FilmList extends StatelessWidget {
  const FilmList({super.key});

  static final List<FilmCardModel> films = <FilmCardModel>[
    const FilmCardModel(
        id: 0,
        title: 'Высшая мера',
        voteAverage: 8.0,
        picture:
            'https://avatars.mds.yandex.net/get-kinopoisk-image/10809116/fd640177-acdf-4f4f-9065-e9deb2581165/300x450',
        releaseDate: '2022',
        description:
            'Следователь ищет неуловимого убийцу в Ярославле 1970-х. Атмосферный триллер по мотивам реальной истории'),
    const FilmCardModel(
        id: 1,
        title: 'Дракона',
        voteAverage: 8.1,
        picture:
            'https://avatars.mds.yandex.net/get-kinopoisk-image/10592371/e81636b8-fb18-44fb-9074-11fffe9cfc4a/300x450',
        releaseDate: '2022',
        description:
            'Таргариены воюют друг с другом за Железный трон. Долгожданное возвращение главного фэнтези-сериала планеты'),
    const FilmCardModel(
      id: 2,
      title: 'Падение империи',
      voteAverage: 6.3,
      picture:
          'https://avatars.mds.yandex.net/get-kinopoisk-image/10893610/f862a0cb-2f2b-49b8-aab9-b097966b9f8f/300x450',
      releaseDate: '2024',
      description:
          'Журналисты пробиваются в Белый дом в разгар гражданской войны. Грандиозная антиутопия Алекса Гарленда',
    ),
    const FilmCardModel(
      id: 3,
      title: 'И снова здравствуйте!',
      voteAverage: 7.8,
      picture:
          'https://avatars.mds.yandex.net/get-kinopoisk-image/1898899/1b31057f-1a8f-48d7-9afd-38e92d952a92/300x450',
      releaseDate: '2022',
      description:
          'Бандит Борис открывает кондитерскую — но завистники не дремлют. Возвращение бессмертной экшен-комедии',
    ),
    const FilmCardModel(
      id: 4,
      title: 'Точка ноль',
      voteAverage: 7.3,
      picture:
          'https://avatars.mds.yandex.net/get-kinopoisk-image/10592371/a83e19be-5c52-4426-9ab5-5f1b2d094485/300x450',
      releaseDate: '2024',
      description:
          'Загадочный вирус в алтайской глуши может привести к катастрофе. Фантастическая драма с Мариной Александровой',
    ),
    const FilmCardModel(
      id: 5,
      title: 'Сёстры',
      voteAverage: 7.9,
      picture:
          'https://avatars.mds.yandex.net/get-kinopoisk-image/10671298/19e55128-010d-4b8b-9c68-1afa8c761848/300x450',
      releaseDate: '2021',
      description:
          'Неуживчивые родственницы путешествуют на старых «жигулях». Любимое драмеди — теперь в жанре роуд-муви',
    ),
  ];

  @override
  Widget build(BuildContext context) {    
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return FilmTile.fromModel(model: films[index % films.length]);
      },
    );    
  }
}