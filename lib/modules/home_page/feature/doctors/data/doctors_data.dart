class DoctorsData {
  static List<Doctors> data = [
    Doctors(
      name: 'name',
      image: 'assets/images/doctor.png',
      category: 'Doctor 1',
      rate: 'rate',
      comments: [
        'comments',
        'comments',
        'comments',
        'comments',
        'comments',
        'comments',
      ],
      decscription: 'decscription',
      phone: 'phone',
      adres: 'adres',
      email: 'email',
    ),
    Doctors(
      name: 'name',
      image: 'assets/images/doctor.png',
      category: 'Doctor 2',
      rate: 'rate',
      comments: [
        'comments',
        'comments',
        'comments',
        'comments',
        'comments',
        'comments',
      ],
      decscription: 'decscription',
      phone: 'phone',
      adres: 'adres',
      email: 'email',
    ),
    Doctors(
      name: 'name',
      image: 'assets/images/doctor.png',
      category: 'Doctor 2',
      rate: 'rate',
      comments: [
        'comments',
        'comments',
        'comments',
        'comments',
        'comments',
        'comments',
      ],
      decscription: 'decscription',
      phone: 'phone',
      adres: 'adres',
      email: 'email',
    ),
    Doctors(
      name: 'name',
      image: 'assets/images/doctor.png',
      category: 'Doctor 2',
      rate: 'rate',
      comments: [
        'comments',
        'comments',
        'comments',
        'comments',
        'comments',
        'comments',
      ],
      decscription: 'decscription',
      phone: 'phone',
      adres: 'adres',
      email: 'email',
    ),
    Doctors(
      name: 'name',
      image: 'assets/images/doctor.png',
      category: 'Doctor 2',
      rate: 'rate',
      comments: [
        'comments',
        'comments',
        'comments',
        'comments',
        'comments',
        'comments',
      ],
      decscription: 'decscription',
      phone: 'phone',
      adres: 'adres',
      email: 'email',
    ),
    Doctors(
      name: 'name',
      image: 'assets/images/doctor.png',
      category: 'Doctor 2',
      rate: 'rate',
      comments: [
        'comments',
        'comments',
        'comments',
        'comments',
        'comments',
        'comments',
      ],
      decscription: 'decscription',
      phone: 'phone',
      adres: 'adres',
      email: 'email',
    ),
  ];

  static List<String> categories = [
    'Doctor 1',
    'Doctor 2',
    'Doctor 3',
    'Doctor 4',
    'Doctor 5',
    'Doctor 6',
    'Doctor 7'
  ];
}

class Doctors {
  final String name;
  final String image;
  final String category;
  final String rate;
  final List<String> comments;
  final String decscription;
  final String phone;
  final String adres;
  final String email;

  Doctors({
    required this.name,
    required this.image,
    required this.category,
    required this.rate,
    required this.comments,
    required this.decscription,
    required this.phone,
    required this.adres,
    required this.email,
  });
}
