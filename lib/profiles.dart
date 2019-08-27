final List<Profile> demoProfiles = [
  new Profile(
    photos: [
      'assets/photo_1.jpg',
      'assets/photo_2.jpg',
      'assets/photo_3.jpg',
      'assets/photo_4.jpg',
    ],
    name: 'Roco',
    bio: 'Pastor alemán , 8meses'
  ),
];


class Profile{
  final List<String> photos;
  final String name;
  final String bio;

  Profile({
    this.photos,
    this.name,
    this.bio,
  });
}