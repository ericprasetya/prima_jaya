class Product {
  String name;
  String description;
  String brand;
  String category;
  double price;
  List<String> images;

  Product({
    required this.name,
    required this.description,
    required this.brand,
    required this.category,
    required this.price,
    required this.images,
  });
}

var categories = ["all", "machine", "hammer", "screwdriver", "jack", "drill bit"];

var products = [
  Product(
      name: "Kompresor Mini 1/6 HP",
      description:
          "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia tempora nulla numquam tenetur dolore. Amet quia ab dignissimos sunt ullam, consequuntur nam rerum doloremque reprehenderit, harum nesciunt accusantium? Voluptas sequi laborum nemo facilis quisquam doloremque omnis id dignissimos rem! Numquam similique officiis, sapiente distinctio sequi dicta quis nesciunt nostrum. Numquam!",
      brand: "Kentaro",
      category: "machine",
      price: 850000,
      images: ["images/kompresor_mini.png"]),
  Product(
      name: "Palu Konde",
      description:
          "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia tempora nulla numquam tenetur dolore. Amet quia ab dignissimos sunt ullam, consequuntur nam rerum doloremque reprehenderit, harum nesciunt accusantium? Voluptas sequi laborum nemo facilis quisquam doloremque omnis id dignissimos rem! Numquam similique officiis, sapiente distinctio sequi dicta quis nesciunt nostrum. Numquam!",
      brand: "Rush",
      category: "hammer",
      price: 33000,
      images: ["images/palu_konde.jpg"]),
  Product(
      name: "Palu Kambing",
      description:
          "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia tempora nulla numquam tenetur dolore. Amet quia ab dignissimos sunt ullam, consequuntur nam rerum doloremque reprehenderit, harum nesciunt accusantium? Voluptas sequi laborum nemo facilis quisquam doloremque omnis id dignissimos rem! Numquam similique officiis, sapiente distinctio sequi dicta quis nesciunt nostrum. Numquam!",
      brand: "A.P",
      category: "hammer",
      price: 26000,
      images: ["images/palu_kambing.jpg"]),
  Product(
      name: "Palu Tukang",
      description:
          "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia tempora nulla numquam tenetur dolore. Amet quia ab dignissimos sunt ullam, consequuntur nam rerum doloremque reprehenderit, harum nesciunt accusantium? Voluptas sequi laborum nemo facilis quisquam doloremque omnis id dignissimos rem! Numquam similique officiis, sapiente distinctio sequi dicta quis nesciunt nostrum. Numquam!",
      brand: "Rush",
      category: "hammer",
      price: 24500,
      images: ["images/palu_tukang.jpg"]),
  Product(
      name: "Obeng Bolak Balik",
      description:
          "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia tempora nulla numquam tenetur dolore. Amet quia ab dignissimos sunt ullam, consequuntur nam rerum doloremque reprehenderit, harum nesciunt accusantium? Voluptas sequi laborum nemo facilis quisquam doloremque omnis id dignissimos rem! Numquam similique officiis, sapiente distinctio sequi dicta quis nesciunt nostrum. Numquam!",
      brand: "Tekiro",
      category: "screwdriver",
      price: 4000,
      images: ["images/obeng_bolak_balik.jpg"]),
  Product(
      name: "Mata Bor Cones",
      description:
          "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia tempora nulla numquam tenetur dolore. Amet quia ab dignissimos sunt ullam, consequuntur nam rerum doloremque reprehenderit, harum nesciunt accusantium? Voluptas sequi laborum nemo facilis quisquam doloremque omnis id dignissimos rem! Numquam similique officiis, sapiente distinctio sequi dicta quis nesciunt nostrum. Numquam!",
      brand: "Jason",
      category: "drill bit",
      price: 300000,
      images: ["images/mata_bor_cones.png"]),
  Product(
      name: "Dongkrak Botol",
      description:
          "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia tempora nulla numquam tenetur dolore. Amet quia ab dignissimos sunt ullam, consequuntur nam rerum doloremque reprehenderit, harum nesciunt accusantium? Voluptas sequi laborum nemo facilis quisquam doloremque omnis id dignissimos rem! Numquam similique officiis, sapiente distinctio sequi dicta quis nesciunt nostrum. Numquam!",
      brand: "Jason",
      category: "jack",
      price: 277000,
      images: ["images/dongkrak_botol.png"]),
  Product(
      name: "Mata Bor Beton Hollow",
      description:
          "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia tempora nulla numquam tenetur dolore. Amet quia ab dignissimos sunt ullam, consequuntur nam rerum doloremque reprehenderit, harum nesciunt accusantium? Voluptas sequi laborum nemo facilis quisquam doloremque omnis id dignissimos rem! Numquam similique officiis, sapiente distinctio sequi dicta quis nesciunt nostrum. Numquam!",
      brand: "Wipro",
      category: "drill bit",
      price: 123000,
      images: ["images/mata_bor_beton_hollow.png"]),
];
