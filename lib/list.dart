class model {
  final String image;
  final String text;
  model({required this.image, required this.text});
}

List<model> Catalog = [
  model(image: "media/wallpaperflare.com_wallpaper.jpg", text: "Mountain"),
  model(image: "media/ocean.jpg", text: "Ocean"),
  model(image: "media/forest.jpg", text: "Forest"),
  model(image: "media/desert.jpg", text: "Desert"),
  model(image: "media/lake.jpg", text: "Lake"),
  model(image: "media/beach.jpg", text: "Beach"),
];
