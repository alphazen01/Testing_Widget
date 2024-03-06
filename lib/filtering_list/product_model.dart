class ProductModel {
  final String men;
  final String women;
  final String child;

  ProductModel({required this.men, required this.women, required this.child});
}

List<ProductModel> productList = [
  ProductModel(men: "Men1", women: "women1", child: "child1"),
  ProductModel(men: "Men1", women: "women1", child: "child1"),
  ProductModel(men: "Men2", women: "women2", child: "child2"),
  ProductModel(men: "Men3", women: "women3", child: "child3"),
  ProductModel(men: "Men4", women: "women4", child: "child5"),
];

class ProductTab {
  final String name;

  ProductTab({
    required this.name,
  });
}

List<ProductTab> productTab = [
  ProductTab(name: "men"),
  ProductTab(name: "women"),
  ProductTab(name: "child"),
];
