class Unboardingcontent {
  String image;
  String title;
  String description;

  Unboardingcontent({
    required this.title,
    required this.description,
    required this.image,
  });
}

List<Unboardingcontent> contents = [
  Unboardingcontent(
    title: "Welcome to Bazar Sadaai",
    description:
        "Discover a world of convenience and savings with our app. Shop from the comfort of your home and enjoy exclusive deals.",
    image: "assets/images/screen1.png",
  ),
  Unboardingcontent(
    title: "Shop Smart",
    description:
        "Browse through a wide range of products, compare prices, and make informed decisions. Your shopping experience just got better!",
    image: "assets/images/screen2.png",
  ),
  Unboardingcontent(
    title: "Fast Delivery",
    description:
        "Get your orders delivered right to your doorstep in time. Experience the joy of hassle-free shopping.",
    image: "assets/images/screen3.png",
  ),
];
