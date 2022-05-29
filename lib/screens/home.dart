import 'package:flutter/material.dart';
import 'package:newsx_app/helper/data.dart';
import 'package:newsx_app/helper/news.dart';
import 'package:newsx_app/models/article_model.dart';
import 'package:newsx_app/models/category_model.dart';
import 'package:newsx_app/widgets/blog_tile.dart';
import 'package:newsx_app/widgets/category_tile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categoriesList = <CategoryModel>[];
  List<ArticleModel> articleList = <ArticleModel>[];
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    categoriesList = getCategories();
    getNews();
  }

  getNews() async {
    News news = News();
    await news.getNews();
    articleList = news.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("News",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                )),
            Text("X",
                style: TextStyle(color: Colors.amberAccent[700], fontSize: 25)),
          ],
        ),
      ),
      body: _loading
          ? Center(child: Container(child: CircularProgressIndicator()))
          : SingleChildScrollView(
              child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      // Categories
                      Container(
                        height: 70,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: categoriesList.length,
                            itemBuilder: ((context, index) {
                              return CategoryTile(
                                imageUrl: categoriesList[index].imageUrl,
                                categoryName:
                                    categoriesList[index].categoryName,
                              );
                            })),
                      ),

                      // Blocks
                      Container(
                          padding: const EdgeInsets.only(top: 16),
                          child: ListView.builder(
                              physics: const ClampingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: articleList.length,
                              itemBuilder: (build, index) {
                                return BlogTile(
                                    imageUrl: articleList[index].urlToImage,
                                    title: articleList[index].title,
                                    description: articleList[index].description,
                                    url: articleList[index].url);
                              }))
                    ],
                  )),
            ),
    );
  }
}
