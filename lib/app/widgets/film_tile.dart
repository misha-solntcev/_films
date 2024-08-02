import 'package:flutter/material.dart';
import 'package:films/app/models/film_card_model.dart';

class FilmTile extends StatelessWidget {
  const FilmTile({
    super.key,
    required this.id,
    required this.title,
    required this.voteAverage,
    required this.picture,
    required this.releaseDate,
    required this.description,
  });

  final int id;
  final String title;
  final double voteAverage;
  final String picture;
  final String releaseDate;
  final String description;

  factory FilmTile.fromModel({
    required FilmCardModel model,
    Key? key,
  }) {
    return FilmTile(
      id: model.id,
      title: model.title,
      voteAverage: model.voteAverage,
      picture: model.picture,
      releaseDate: model.releaseDate,
      description: model.description,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
            child: Image.network(
          picture,
          loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent? loadingProgress) {
            if (loadingProgress == null) {
              return child;
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        )),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: .0),
                    child: Row(
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            voteAverage.toStringAsFixed(1),
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 16,
                              color: voteAverage < 8
                                  ? Colors.red
                                  : voteAverage >= 8
                                      ? Colors.green
                                      : Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
                    child: Text(
                      'Дата выхода: "$releaseDate',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Text(
                    description,
                    overflow: TextOverflow.ellipsis,
                  ),
                ]),
          ),
        )
      ],
    );
  }
}
