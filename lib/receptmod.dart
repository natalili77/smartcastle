class receptmod {
  List<Recipes>? _recipes;
  int? _total;
  int? _skip;
  int? _limit;

  receptmod({List<Recipes>? recipes, int? total, int? skip, int? limit}) {
    if (recipes != null) {
      this._recipes = recipes;
    }
    if (total != null) {
      this._total = total;
    }
    if (skip != null) {
      this._skip = skip;
    }
    if (limit != null) {
      this._limit = limit;
    }
  }

  List<Recipes>? get recipes => _recipes;
  set recipes(List<Recipes>? recipes) => _recipes = recipes;
  int? get total => _total;
  set total(int? total) => _total = total;
  int? get skip => _skip;
  set skip(int? skip) => _skip = skip;
  int? get limit => _limit;
  set limit(int? limit) => _limit = limit;

  receptmod.fromJson(Map<String, dynamic> json) {
    if (json['recipes'] != null) {
      _recipes = <Recipes>[];
      json['recipes'].forEach((v) {
        _recipes!.add(new Recipes.fromJson(v));
      });
    }
    _total = json['total'];
    _skip = json['skip'];
    _limit = json['limit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._recipes != null) {
      data['recipes'] = this._recipes!.map((v) => v.toJson()).toList();
    }
    data['total'] = this._total;
    data['skip'] = this._skip;
    data['limit'] = this._limit;
    return data;
  }
}

class Recipes {
  int? _id;
  String? _name;
  List<String>? _ingredients;
  List<String>? _instructions;
  int? _prepTimeMinutes;
  int? _cookTimeMinutes;
  int? _servings;
  String? _difficulty;
  String? _cuisine;
  int? _caloriesPerServing;
  List<String>? _tags;
  int? _userId;
  String? _image;
  double? _rating;
  int? _reviewCount;
  List<String>? _mealType;

  Recipes(
      {int? id,
      String? name,
      List<String>? ingredients,
      List<String>? instructions,
      int? prepTimeMinutes,
      int? cookTimeMinutes,
      int? servings,
      String? difficulty,
      String? cuisine,
      int? caloriesPerServing,
      List<String>? tags,
      int? userId,
      String? image,
      double? rating,
      int? reviewCount,
      List<String>? mealType}) {
    if (id != null) {
      this._id = id;
    }
    if (name != null) {
      this._name = name;
    }
    if (ingredients != null) {
      this._ingredients = ingredients;
    }
    if (instructions != null) {
      this._instructions = instructions;
    }
    if (prepTimeMinutes != null) {
      this._prepTimeMinutes = prepTimeMinutes;
    }
    if (cookTimeMinutes != null) {
      this._cookTimeMinutes = cookTimeMinutes;
    }
    if (servings != null) {
      this._servings = servings;
    }
    if (difficulty != null) {
      this._difficulty = difficulty;
    }
    if (cuisine != null) {
      this._cuisine = cuisine;
    }
    if (caloriesPerServing != null) {
      this._caloriesPerServing = caloriesPerServing;
    }
    if (tags != null) {
      this._tags = tags;
    }
    if (userId != null) {
      this._userId = userId;
    }
    if (image != null) {
      this._image = image;
    }
    if (rating != null) {
      this._rating = rating;
    }
    if (reviewCount != null) {
      this._reviewCount = reviewCount;
    }
    if (mealType != null) {
      this._mealType = mealType;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get name => _name;
  set name(String? name) => _name = name;
  List<String>? get ingredients => _ingredients;
  set ingredients(List<String>? ingredients) => _ingredients = ingredients;
  List<String>? get instructions => _instructions;
  set instructions(List<String>? instructions) => _instructions = instructions;
  int? get prepTimeMinutes => _prepTimeMinutes;
  set prepTimeMinutes(int? prepTimeMinutes) =>
      _prepTimeMinutes = prepTimeMinutes;
  int? get cookTimeMinutes => _cookTimeMinutes;
  set cookTimeMinutes(int? cookTimeMinutes) =>
      _cookTimeMinutes = cookTimeMinutes;
  int? get servings => _servings;
  set servings(int? servings) => _servings = servings;
  String? get difficulty => _difficulty;
  set difficulty(String? difficulty) => _difficulty = difficulty;
  String? get cuisine => _cuisine;
  set cuisine(String? cuisine) => _cuisine = cuisine;
  int? get caloriesPerServing => _caloriesPerServing;
  set caloriesPerServing(int? caloriesPerServing) =>
      _caloriesPerServing = caloriesPerServing;
  List<String>? get tags => _tags;
  set tags(List<String>? tags) => _tags = tags;
  int? get userId => _userId;
  set userId(int? userId) => _userId = userId;
  String? get image => _image;
  set image(String? image) => _image = image;
  double? get rating => _rating;
  set rating(double? rating) => _rating = rating;
  int? get reviewCount => _reviewCount;
  set reviewCount(int? reviewCount) => _reviewCount = reviewCount;
  List<String>? get mealType => _mealType;
  set mealType(List<String>? mealType) => _mealType = mealType;

  Recipes.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _ingredients = json['ingredients'].cast<String>();
    _instructions = json['instructions'].cast<String>();
    _prepTimeMinutes = json['prepTimeMinutes'];
    _cookTimeMinutes = json['cookTimeMinutes'];
    _servings = json['servings'];
    _difficulty = json['difficulty'];
    _cuisine = json['cuisine'];
    _caloriesPerServing = json['caloriesPerServing'];
    _tags = json['tags'].cast<String>();
    _userId = json['userId'];
    _image = json['image'];
    _rating = json['rating'];
    _reviewCount = json['reviewCount'];
    _mealType = json['mealType'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['ingredients'] = this._ingredients;
    data['instructions'] = this._instructions;
    data['prepTimeMinutes'] = this._prepTimeMinutes;
    data['cookTimeMinutes'] = this._cookTimeMinutes;
    data['servings'] = this._servings;
    data['difficulty'] = this._difficulty;
    data['cuisine'] = this._cuisine;
    data['caloriesPerServing'] = this._caloriesPerServing;
    data['tags'] = this._tags;
    data['userId'] = this._userId;
    data['image'] = this._image;
    data['rating'] = this._rating;
    data['reviewCount'] = this._reviewCount;
    data['mealType'] = this._mealType;
    return data;
  }
}