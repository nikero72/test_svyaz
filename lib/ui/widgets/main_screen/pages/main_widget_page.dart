import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_svyaz/const/app_color.dart';
import 'package:test_svyaz/const/app_text_style.dart';
import '../../../../books_bloc.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const SizedBox(height: 50),
          const MainWidgetHeader(),
          BlocProvider<BooksBloc>(
            create: (context) => BooksBloc()..add(BookInitializeEvent()),
            child: const MainWidgetBooks(),
          )
        ],
      ),
    );
  }
}

class MainWidgetHeader extends StatelessWidget {
  const MainWidgetHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Рекомендации',
          style: AppTextStyle().mainHeader,
        ),
        Text(
          'Все книги',
          style: AppTextStyle().headerAllBooks,
        )
      ],
    );
  }
}

class MainWidgetBooks extends StatelessWidget {
  const MainWidgetBooks({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BooksBloc, BookState>(
        builder: (context, state) {
          final bloc = BlocProvider.of<BooksBloc>(context);
          return SizedBox(
            height: MediaQuery.of(context).size.height - 175,
            child: ListView.builder(
                itemCount: state.books.id.length,
                itemExtent: 116,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      showGeneralDialog(
                        context: context,
                        barrierColor: AppColor().black06,
                        barrierDismissible: true,
                        barrierLabel: 'Label',
                        pageBuilder: (_, __, ___) {
                          return DetailsWidget(bloc: bloc ,state: state, index: index);
                        },
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      padding: const EdgeInsets.fromLTRB(16, 16, 24, 16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor().bookBackground
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 48,
                            height: 78,
                            child: Image.network(state.books.image[index]),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    state.books.title[index],
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: AppTextStyle().bookTitle,
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    state.books.year[index].toString(),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: AppTextStyle().bookYear,
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    state.books.author[index],
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: AppTextStyle().bookAuthor,
                                  ),
                                ],
                              )
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                state.books.isFavorite[index]
                                    ? 'assets/icons/filled_heart.png'
                                    : 'assets/icons/favorites.png',
                                color: const Color.fromRGBO(255, 45, 32, 1),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }
            ),
          );
        }
    );
  }
}

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({
    Key? key,
    required this.bloc,
    required this.state,
    required this.index
  }) : super(key: key);

  final BooksBloc bloc;
  final BookState state;
  final int index;


  @override
  Widget build(BuildContext context) {
    void addFavoriteTap() {
      bloc.add(BookFavoriteTappedEvent(ind: index));
      context.router.pop();
    }

    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 313,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: AppColor().white,
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Выбор редакции',
                  style: AppTextStyle().mainHeader,
                ),
                GestureDetector(
                  onTap: context.router.pop,
                  child: Image.asset(
                    'assets/icons/close.png',
                    width: 17,
                    height: 17,
                  ),
                )
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                SizedBox(
                  width: 100,
                  height: 160,
                  child: Image.network(state.books.image[index]),
                ),
                const SizedBox(width: 12),
                SizedBox(
                  height: 160,
                  width: MediaQuery.of(context).size.width - 152,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        state.books.title[index],
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle().bookTitle,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        state.books.year[index].toString(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle().bookYear,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        state.books.author[index],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle().bookAuthor,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        state.books.description[index],
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle().bookDescription,
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 24),
            Material(
              child: InkWell(
                onTap: () => addFavoriteTap(),
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                      color: AppColor().black,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/favorites.png',
                        color: AppColor().white,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        state.books.isFavorite[index]
                            ? 'Удалить из избранного'
                            : 'Добавить в избранное',
                        style: AppTextStyle().favoriteButton,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

