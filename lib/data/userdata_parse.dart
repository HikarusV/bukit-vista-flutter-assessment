import 'package:bukitvistaflutterassessment/data/model/booking.dart';
import 'package:flutter/material.dart';

import 'model/user.dart';

List<Booking> dummyBook = [
  Booking.fromJson(
    {
      "book_id": "1x70fvl0g5",
      "status": 0,
      "user_id": 11,
      "guest": 1,
      "book_value": "\$134.69",
      "check_in_year": 2019,
      "check_in_month": 2,
      "check_in_date": 14,
      "check_in_hour": "5:53",
      "long_day": 1,
      "check_out_year": 2019,
      "check_out_month": 2,
      "check_out_date": 15,
      "check_out_hour": "11:34",
      "name_profile": "Delilah Verrell",
      "host": "Delilah Verrell Bukit Vista"
    },
  ),
  Booking.fromJson(
    {
      "book_id": "5j60ibq1g3",
      "status": 1,
      "user_id": 16,
      "guest": 2,
      "book_value": "\$86.01",
      "check_in_year": 2020,
      "check_in_month": 9,
      "check_in_date": 24,
      "check_in_hour": "13:25",
      "long_day": 10,
      "check_out_year": 2020,
      "check_out_month": 10,
      "check_out_date": 4,
      "check_out_hour": "9:06",
      "name_profile": "Abbott Pendrid",
      "host": "Abbott Pendrid Bukit Vista"
    },
  )
];

List parseUserData = [
  {
    "user_id": 1,
    "first_name": "Vicky",
    "last_name": "Pritty",
    "full_name": "Vicky Pritty",
    "photo_url": "https://robohash.org/facilisetqui.png?size=50x50&set=set1",
    "city": "Kawangu",
    "country": "Indonesia",
    "email": "vicky.pritty@gmail.com",
    "phone": "+62 640 962 6465",
    "first_follow": "03-Apr-2021"
  },
  {
    "user_id": 2,
    "first_name": "Shay",
    "last_name": "Sydall",
    "full_name": "Shay Sydall",
    "photo_url": "https://robohash.org/quoisteaut.png?size=50x50&set=set1",
    "city": "Velyka Lepetykha",
    "country": "Ukraine",
    "email": "shay.sydall@gmail.com",
    "phone": "+380 929 551 7187",
    "first_follow": "12-Mar-2020"
  },
  {
    "user_id": 3,
    "first_name": "Wynne",
    "last_name": "Colquitt",
    "full_name": "Wynne Colquitt",
    "photo_url": "https://robohash.org/moditemporanon.png?size=50x50&set=set1",
    "city": "Kalanguy",
    "country": "Russia",
    "email": "wynne.colquitt@gmail.com",
    "phone": "+7 307 550 4801",
    "first_follow": "21-Feb-2016"
  },
  {
    "user_id": 4,
    "first_name": "Alfie",
    "last_name": "Mourton",
    "full_name": "Alfie Mourton",
    "photo_url": "https://robohash.org/ipsaatet.png?size=50x50&set=set1",
    "city": "Lecheng",
    "country": "China",
    "email": "alfie.mourton@gmail.com",
    "phone": "+86 405 891 2507",
    "first_follow": "20-Jun-2017"
  },
  {
    "user_id": 5,
    "first_name": "Kayla",
    "last_name": "Grimsley",
    "full_name": "Kayla Grimsley",
    "photo_url":
        "https://robohash.org/sequiimpeditminima.png?size=50x50&set=set1",
    "city": "Jakartovice",
    "country": "Czech Republic",
    "email": "kayla.grimsley@gmail.com",
    "phone": "+420 708 758 7547",
    "first_follow": "01-Nov-2015"
  },
  {
    "user_id": 6,
    "first_name": "Marisa",
    "last_name": "Brise",
    "full_name": "Marisa Brise",
    "photo_url":
        "https://robohash.org/abofficiismolestiae.png?size=50x50&set=set1",
    "city": "Panjing",
    "country": "China",
    "email": "marisa.brise@gmail.com",
    "phone": "+86 450 311 5150",
    "first_follow": "18-Nov-2016"
  },
  {
    "user_id": 7,
    "first_name": "Wendie",
    "last_name": "Doggerell",
    "full_name": "Wendie Doggerell",
    "photo_url":
        "https://robohash.org/omnisautassumenda.png?size=50x50&set=set1",
    "city": "Ermidas do Sado",
    "country": "Portugal",
    "email": "wendie.doggerell@gmail.com",
    "phone": "+351 451 322 3694",
    "first_follow": "26-Nov-2017"
  },
  {
    "user_id": 8,
    "first_name": "Jeri",
    "last_name": "Voisey",
    "full_name": "Jeri Voisey",
    "photo_url": "https://robohash.org/utomnisanimi.png?size=50x50&set=set1",
    "city": "Béziers",
    "country": "France",
    "email": "jeri.voisey@gmail.com",
    "phone": "+33 982 707 8636",
    "first_follow": "12-Nov-2020"
  },
  {
    "user_id": 9,
    "first_name": "Giovanni",
    "last_name": "Dmytryk",
    "full_name": "Giovanni Dmytryk",
    "photo_url": "https://robohash.org/teneturfugitqui.png?size=50x50&set=set1",
    "city": "Belo sur Tsiribihina",
    "country": "Madagascar",
    "email": "giovanni.dmytryk@gmail.com",
    "phone": "+261 822 556 2680",
    "first_follow": "01-Jun-2019"
  },
  {
    "user_id": 10,
    "first_name": "Archaimbaud",
    "last_name": "Sewall",
    "full_name": "Archaimbaud Sewall",
    "photo_url": "https://robohash.org/nonvelitillo.png?size=50x50&set=set1",
    "city": "Zoumi",
    "country": "Morocco",
    "email": "archaimbaud.sewall@gmail.com",
    "phone": "+212 206 533 1543",
    "first_follow": "28-Aug-2021"
  },
  {
    "user_id": 11,
    "first_name": "Nanette",
    "last_name": "Rablin",
    "full_name": "Nanette Rablin",
    "photo_url":
        "https://robohash.org/aliquamdolorestenetur.png?size=50x50&set=set1",
    "city": "Xiaojing",
    "country": "China",
    "email": "nanette.rablin@gmail.com",
    "phone": "+86 498 177 5575",
    "first_follow": "12-Feb-2020"
  },
  {
    "user_id": 12,
    "first_name": "Cathrine",
    "last_name": "Cutts",
    "full_name": "Cathrine Cutts",
    "photo_url": "https://robohash.org/providenthicsed.png?size=50x50&set=set1",
    "city": "Timon",
    "country": "Brazil",
    "email": "cathrine.cutts@gmail.com",
    "phone": "+55 657 176 2462",
    "first_follow": "01-Apr-2017"
  },
  {
    "user_id": 13,
    "first_name": "Alberik",
    "last_name": "Bowry",
    "full_name": "Alberik Bowry",
    "photo_url":
        "https://robohash.org/quidemquiarchitecto.png?size=50x50&set=set1",
    "city": "Pruchnik",
    "country": "Poland",
    "email": "alberik.bowry@gmail.com",
    "phone": "+48 740 965 9357",
    "first_follow": "17-Oct-2015"
  },
  {
    "user_id": 14,
    "first_name": "Bernadina",
    "last_name": "Dryden",
    "full_name": "Bernadina Dryden",
    "photo_url": "https://robohash.org/nequeestut.png?size=50x50&set=set1",
    "city": "Pongol",
    "country": "Philippines",
    "email": "bernadina.dryden@gmail.com",
    "phone": "+63 690 307 3458",
    "first_follow": "03-May-2020"
  },
  {
    "user_id": 15,
    "first_name": "Hansiain",
    "last_name": "Lancastle",
    "full_name": "Hansiain Lancastle",
    "photo_url": "https://robohash.org/harumnobisquia.png?size=50x50&set=set1",
    "city": "Dayapan",
    "country": "Philippines",
    "email": "hansiain.lancastle@gmail.com",
    "phone": "+63 698 248 8180",
    "first_follow": "04-Nov-2016"
  },
  {
    "user_id": 16,
    "first_name": "Beilul",
    "last_name": "Daviddi",
    "full_name": "Beilul Daviddi",
    "photo_url": "https://robohash.org/liberoquodporro.png?size=50x50&set=set1",
    "city": "Muaraenim",
    "country": "Indonesia",
    "email": "beilul.daviddi@gmail.com",
    "phone": "+62 128 707 6121",
    "first_follow": "05-Sep-2015"
  },
  {
    "user_id": 17,
    "first_name": "Lauraine",
    "last_name": "Boon",
    "full_name": "Lauraine Boon",
    "photo_url": "https://robohash.org/eumnullaea.png?size=50x50&set=set1",
    "city": "Mikhaylovsk",
    "country": "Russia",
    "email": "lauraine.boon@gmail.com",
    "phone": "+7 627 378 9060",
    "first_follow": "23-Oct-2016"
  },
  {
    "user_id": 18,
    "first_name": "Kort",
    "last_name": "Longforth",
    "full_name": "Kort Longforth",
    "photo_url": "https://robohash.org/quiinrerum.png?size=50x50&set=set1",
    "city": "Pasian",
    "country": "Philippines",
    "email": "kort.longforth@gmail.com",
    "phone": "+63 827 337 0491",
    "first_follow": "09-Oct-2017"
  },
  {
    "user_id": 19,
    "first_name": "Jacquenetta",
    "last_name": "Huffy",
    "full_name": "Jacquenetta Huffy",
    "photo_url": "https://robohash.org/quisipsaqui.png?size=50x50&set=set1",
    "city": "Grand Rapids",
    "country": "United States",
    "email": "jacquenetta.huffy@gmail.com",
    "phone": "+1 616 349 8383",
    "first_follow": "09-Sep-2020"
  },
  {
    "user_id": 20,
    "first_name": "Marcile",
    "last_name": "Lemmers",
    "full_name": "Marcile Lemmers",
    "photo_url": "https://robohash.org/velautemea.png?size=50x50&set=set1",
    "city": "Calilegua",
    "country": "Argentina",
    "email": "marcile.lemmers@gmail.com",
    "phone": "+54 212 862 4064",
    "first_follow": "12-Apr-2020"
  }
];
