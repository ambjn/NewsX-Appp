import 'package:newsx_app/models/category_model.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> categories = [];
  CategoryModel categoryModel = CategoryModel();

  categoryModel = CategoryModel();
  categories.add(categoryModel);
  categoryModel.categoryName = 'Business';
  categoryModel.imageUrl =
      'https://images.unsplash.com/photo-1600880292203-757bb62b4baf?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470';

  categoryModel = CategoryModel();
  categories.add(categoryModel);
  categoryModel.categoryName = "Entertainment";
  categoryModel.imageUrl =
      "https://images.unsplash.com/photo-1603190287605-e6ade32fa852?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470";

  categoryModel = CategoryModel();
  categoryModel.categoryName = "General";
  categoryModel.imageUrl =
      "https://images.unsplash.com/photo-1493612276216-ee3925520721?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764";
  categories.add(categoryModel);

  categoryModel = CategoryModel();
  categoryModel.categoryName = "Health";
  categoryModel.imageUrl =
      "https://images.unsplash.com/photo-1511688878353-3a2f5be94cd7?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687";

  categories.add(categoryModel);
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Science";
  categoryModel.imageUrl =
      "https://images.unsplash.com/photo-1532094349884-543bc11b234d?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470";

  categories.add(categoryModel);
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Sports";
  categoryModel.imageUrl =
      "https://images.unsplash.com/photo-1579952363873-27f3bade9f55?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735";

  categories.add(categoryModel);
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Technology";
  categoryModel.imageUrl =
      "https://images.unsplash.com/photo-1488590528505-98d2b5aba04b?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470";

  return categories;
}
