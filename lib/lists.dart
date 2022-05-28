// ignore_for_file: null_closures

class CatalogModel {
  Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  static final items = [
    Item(
        id: 01,
        name: "Antonie Langlais",
        email: "antonielang@gmail.com",
        moNo: 7685944397,
        address: "Not Available",
        dob: "Not Available",
        pos: "CEO",
        image:
            "https://5.imimg.com/data5/ANDROID/Default/2021/5/DC/YT/SJ/128737889/screenshot-2021-0506-195923-png-500x500.png"),
    Item(
        id: 02,
        name: "Ashley",
        email: "anshley@gmail.com",
        moNo: 2547995126,
        address: "Not Available",
        dob: "Not Available",
        pos: "CTO",
        image: "https://wallpaperaccess.com/full/1688605.jpg"),
    Item(
        id: 03,
        name: "David",
        email: "david@gmail.com",
        moNo: 6985471236,
        address: "Not Available",
        dob: "Not Available",
        pos: "Manager",
        image:
            "https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/164763276/original/003827c0d63a6630e91c6beaed3b6f5ed2b32cc5/paint-paintings-or-sceneries.jpeg"),
    Item(
        id: 04,
        name: "Famke",
        email: "famke@gmail.com",
        moNo: 9587486214,
        address: "Not Available",
        dob: "Not Available",
        pos: "Manager",
        image:
            "https://cdn.dribbble.com/users/108186/screenshots/2990366/forest.jpg?compress=1&resize=400x300"),
    Item(
        id: 05,
        name: "Gilles",
        email: "gilles@gmail.com",
        moNo: 8956231057,
        address: "Not Available",
        dob: "Not Available",
        pos: "Employee",
        image: "https://wallpaperaccess.com/full/1127467.jpg"),
    Item(
        id: 06,
        name: "Hans",
        email: "hans@gmail.com",
        moNo: 7216988576,
        address: "Not Available",
        dob: "Not Available",
        pos: "Employee",
        image:
            "https://previews.123rf.com/images/bbtreesubmission/bbtreesubmission1702/bbtreesubmission170202709/72443821-sceneries-of-a-countryside-illustration.jpg"),
    Item(
        id: 07,
        name: "Martha",
        email: "martha@gmail.com",
        moNo: 7946285613,
        address: "Not Available",
        dob: "Not Available",
        pos: "Intern",
        image: "https://cioviews.com/wp-content/uploads/2020/12/1-3.jpg"),
  ];
}

class Item {
  final int id;
  final String name;
  final String email;
  final int moNo;
  final String address;
  final String dob;
  final String image;
  final String pos;

  Item(
      {required this.id,
      required this.name,
      required this.email,
      required this.moNo,
      required this.address,
      required this.dob,
      required this.pos,
      required this.image});
}
