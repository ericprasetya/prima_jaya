class User {
  String name, email, phone, id, memberType;

  User({
    required this.name,
    required this.email,
    required this.phone,
    required this.id,
    required this.memberType
  });
}

var user = User(
    email: 'eric.sentosa888@gmail.com',
    name: 'Eric Prasetya Sentosa',
    phone: '081225455047',
    id: '**** **** **** 1234',
    memberType: 'Platinum Member');
