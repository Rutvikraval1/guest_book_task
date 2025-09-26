class ContactModel {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String? avatar;
  final String? overlay;
  final String? initials;
  final bool isSelected;

  ContactModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    this.avatar,
    this.overlay,
    this.initials,
    required this.isSelected,
  });

  static List<ContactModel> sampleContacts = [
    ContactModel(
      id: 1,
      name: "Lia Thomas",
      email: "lia.thomas516@reddit.com",
      phone: "+1 212-456-7890",
      avatar: "assets/images/rectangle-30-1.png",
      overlay: "assets/images/rectangle-31-1.png",
      isSelected: true,
    ),
    ContactModel(
      id: 2,
      name: "Bergnaum",
      email: "cleorahills@gmail.com",
      phone: "+1 212-450-7890",
      avatar: "assets/images/ellipse-32.svg",
      isSelected: false,
    ),
    ContactModel(
      id: 3,
      name: "Wunderlich",
      email: "wunder@gmail.com",
      phone: "+1 212-236-7890",
      avatar: "assets/images/ellipse-33.svg",
      isSelected: false,
    ),
    ContactModel(
      id: 4,
      name: "Arjun Gerhold",
      email: "alaskanm@dog.com",
      phone: "+1 122-456-7890",
      initials: "Ag",
      isSelected: false,
    ),
    ContactModel(
      id: 5,
      name: "Simeon Wilderman",
      email: "simeon@user.com",
      phone: "+1 287-456-7890",
      initials: "Sw",
      isSelected: false,
    ),
    ContactModel(
      id: 6,
      name: "Eden Kautzer",
      email: "edenka@user.com",
      phone: "+1 212-456-7090",
      avatar: "assets/images/ellipse-32-2.svg",
      isSelected: false,
    ),
    ContactModel(
      id: 7,
      name: "Gino Yost",
      email: "gyostt@test.com",
      phone: "+1 222-456-7890",
      avatar: "assets/images/ellipse-32-1.svg",
      isSelected: false,
    ),
    ContactModel(
      id: 8,
      name: "Ayden Veum",
      email: "aydeveu@synd.com",
      phone: "+1 212-496-7890",
      avatar: "assets/images/ellipse-32-3.svg",
      isSelected: false,
    ),
    ContactModel(
      id: 9,
      name: "Eden Kautzer",
      email: "edenkau@user.com",
      phone: "+1 212-996-7890",
      avatar: "assets/images/ellipse-32-2.svg",
      isSelected: false,
    ),
  ];
}