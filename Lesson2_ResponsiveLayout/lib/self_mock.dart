class Person {
  final String name;
  final String avatar;
  final String address;
  final int telNumber;

  const Person(this.name, this.avatar, this.address, this.telNumber);

}

final List<Person> persons = mockData.map((e) => Person(e['name'], e['avatar'], e['address'], e['telNumber'])).toList(growable: false);

final List<Map<String, dynamic>> mockData = [
  {
    "name": "Elizabeth Harris",
    "avatar": "http://dummyimage.com/32x32/79f2f1",
    "address": "华南",
    "telNumber": 16473473191
  },
  {
    "name": "Barbara Lewis",
    "avatar": "http://dummyimage.com/32x32/f2ce79",
    "address": "华东",
    "telNumber": 13056143203
  },
  {
    "name": "Jessica Jones",
    "avatar": "http://dummyimage.com/32x32/ab79f2",
    "address": "华南",
    "telNumber": 14706168575
  },
  {
    "name": "Sharon Martinez",
    "avatar": "http://dummyimage.com/32x32/79f287",
    "address": "华北",
    "telNumber": 15980906331
  },
  {
    "name": "Linda Thompson",
    "avatar": "http://dummyimage.com/32x32/f2798d",
    "address": "华东",
    "telNumber": 16546515355
  },
  {
    "name": "Jeffrey Hernandez",
    "avatar": "http://dummyimage.com/32x32/79b1f2",
    "address": "华中",
    "telNumber": 16870840756
  },
  {
    "name": "Michelle Hernandez",
    "avatar": "http://dummyimage.com/32x32/d4f279",
    "address": "华南",
    "telNumber": 17697639403
  },
  {
    "name": "Michelle Thompson",
    "avatar": "http://dummyimage.com/32x32/ec79f2",
    "address": "西南",
    "telNumber": 17163363357
  },
  {
    "name": "Charles Clark",
    "avatar": "http://dummyimage.com/32x32/79f2c9",
    "address": "华东",
    "telNumber": 15947688707
  },
  {
    "name": "Sarah Clark",
    "avatar": "http://dummyimage.com/32x32/f2a579",
    "address": "西南",
    "telNumber": 14337056369
  },
  {
    "name": "Elizabeth Johnson",
    "avatar": "http://dummyimage.com/32x32/8279f2",
    "address": "华东",
    "telNumber": 16097543099
  },
  {
    "name": "Donald Young",
    "avatar": "http://dummyimage.com/32x32/93f279",
    "address": "华北",
    "telNumber": 14154903129
  },
  {
    "name": "Anna Perez",
    "avatar": "http://dummyimage.com/32x32/f279b6",
    "address": "华中",
    "telNumber": 16961605009
  },
  {
    "name": "Amy Martin",
    "avatar": "http://dummyimage.com/32x32/79d9f2",
    "address": "华南",
    "telNumber": 16723669968
  },
  {
    "name": "Dorothy Robinson",
    "avatar": "http://dummyimage.com/32x32/f2e779",
    "address": "东北",
    "telNumber": 16560924208
  },
  {
    "name": "Christopher Davis",
    "avatar": "http://dummyimage.com/32x32/c479f2",
    "address": "华南",
    "telNumber": 17346516459
  },
  {
    "name": "Kevin Harris",
    "avatar": "http://dummyimage.com/32x32/79f2a0",
    "address": "东北",
    "telNumber": 13525974444
  },
  {
    "name": "Patricia Gonzalez",
    "avatar": "http://dummyimage.com/32x32/f27d79",
    "address": "华北",
    "telNumber": 13430109242
  },
  {
    "name": "Brenda Hall",
    "avatar": "http://dummyimage.com/32x32/7998f2",
    "address": "华中",
    "telNumber": 17964133756
  },
  {
    "name": "Karen White",
    "avatar": "http://dummyimage.com/32x32/bbf279",
    "address": "华东",
    "telNumber": 16724779057
  }
];
