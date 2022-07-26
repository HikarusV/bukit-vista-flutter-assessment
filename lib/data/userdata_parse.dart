import 'package:flutter/material.dart';

import 'model/user.dart';

List parseUserData = [
  {
    "user_id": 1,
    "name": "Elly",
    "photo_url": "https://robohash.org/iustoestsequi.png?size=50x50&set=set1",
    "city": "Stockholm",
    "country": "Sweden",
    "email": "elly@gmail.com",
    "phone": "+46 273 238 9609",
    "first_follow": "09-Aug-2016"
  },
  {
    "user_id": 2,
    "name": "Krissie",
    "photo_url":
        "https://robohash.org/distinctiofacilisexercitationem.png?size=50x50&set=set1",
    "city": "Matlang",
    "country": "Philippines",
    "email": "krissie@gmail.com",
    "phone": "+63 821 834 1237",
    "first_follow": "27-May-2022"
  },
  {
    "user_id": 3,
    "name": "Heinrik",
    "photo_url": "https://robohash.org/uteumsint.png?size=50x50&set=set1",
    "city": "Babo-Pangulo",
    "country": "Philippines",
    "email": "heinrik@gmail.com",
    "phone": "+63 815 507 9814",
    "first_follow": "28-Apr-2020"
  },
  {
    "user_id": 4,
    "name": "Adriano",
    "photo_url": "https://robohash.org/magniharumest.png?size=50x50&set=set1",
    "city": "Oslo",
    "country": "Norway",
    "email": "adriano@gmail.com",
    "phone": "+47 391 468 1936",
    "first_follow": "11-Oct-2021"
  },
  {
    "user_id": 5,
    "name": "Frederic",
    "photo_url":
        "https://robohash.org/iddistinctiosint.png?size=50x50&set=set1",
    "city": "Mangaldan",
    "country": "Philippines",
    "email": "frederic@gmail.com",
    "phone": "+63 600 935 3792",
    "first_follow": "10-Sep-2019"
  },
  {
    "user_id": 6,
    "name": "Ferdie",
    "photo_url": "https://robohash.org/sequiporroomnis.png?size=50x50&set=set1",
    "city": "Olesno",
    "country": "Poland",
    "email": "ferdie@gmail.com",
    "phone": "+48 569 836 9345",
    "first_follow": "30-Jul-2019"
  },
  {
    "user_id": 7,
    "name": "Dennet",
    "photo_url":
        "https://robohash.org/excepturiodiooccaecati.png?size=50x50&set=set1",
    "city": "Muldersdriseloop",
    "country": "South Africa",
    "email": "dennet@gmail.com",
    "phone": "+27 719 349 9983",
    "first_follow": "11-Mar-2022"
  },
  {
    "user_id": 8,
    "name": "Verla",
    "photo_url":
        "https://robohash.org/idcumconsequatur.png?size=50x50&set=set1",
    "city": "Sölvesborg",
    "country": "Sweden",
    "email": "verla@gmail.com",
    "phone": "+46 721 461 7060",
    "first_follow": "09-Apr-2017"
  },
  {
    "user_id": 9,
    "name": "Rocky",
    "photo_url":
        "https://robohash.org/repellatnihiladipisci.png?size=50x50&set=set1",
    "city": "Saijō",
    "country": "Japan",
    "email": "rocky@gmail.com",
    "phone": "+81 243 888 6932",
    "first_follow": "29-Oct-2015"
  },
  {
    "user_id": 10,
    "name": "Sioux",
    "photo_url": "https://robohash.org/iustodoloreos.png?size=50x50&set=set1",
    "city": "José de Freitas",
    "country": "Brazil",
    "email": "sioux@gmail.com",
    "phone": "+55 767 959 2071",
    "first_follow": "05-Apr-2016"
  },
  {
    "user_id": 11,
    "name": "Anna-diane",
    "photo_url":
        "https://robohash.org/suscipitminusnihil.png?size=50x50&set=set1",
    "city": "Hadyach",
    "country": "Ukraine",
    "email": "anna-diane@gmail.com",
    "phone": "+380 113 780 6738",
    "first_follow": "15-Jun-2017"
  },
  {
    "user_id": 12,
    "name": "Siana",
    "photo_url":
        "https://robohash.org/eligendiquirepellat.png?size=50x50&set=set1",
    "city": "Kaduseeng",
    "country": "Indonesia",
    "email": "siana@gmail.com",
    "phone": "+62 113 242 5403",
    "first_follow": "03-Jul-2016"
  },
  {
    "user_id": 13,
    "name": "Trish",
    "photo_url":
        "https://robohash.org/corporisdeseruntest.png?size=50x50&set=set1",
    "city": "Itaporanga",
    "country": "Brazil",
    "email": "trish@gmail.com",
    "phone": "+55 178 483 0557",
    "first_follow": "02-Jul-2017"
  },
  {
    "user_id": 14,
    "name": "Amanda",
    "photo_url": "https://robohash.org/remlaboreest.png?size=50x50&set=set1",
    "city": "Melres",
    "country": "Portugal",
    "email": "amanda@gmail.com",
    "phone": "+351 885 232 1193",
    "first_follow": "24-Oct-2019"
  },
  {
    "user_id": 15,
    "name": "Daffie",
    "photo_url": "https://robohash.org/sintquamcommodi.png?size=50x50&set=set1",
    "city": "Changtang",
    "country": "China",
    "email": "daffie@gmail.com",
    "phone": "+86 259 383 9708",
    "first_follow": "30-Oct-2019"
  },
  {
    "user_id": 16,
    "name": "Arturo",
    "photo_url": "https://robohash.org/velmaioresaut.png?size=50x50&set=set1",
    "city": "Mahuta",
    "country": "Tanzania",
    "email": "arturo@gmail.com",
    "phone": "+255 246 663 8293",
    "first_follow": "31-Oct-2018"
  },
  {
    "user_id": 17,
    "name": "Scotti",
    "photo_url": "https://robohash.org/hicundeeaque.png?size=50x50&set=set1",
    "city": "Salinungan Proper",
    "country": "Philippines",
    "email": "scotti@gmail.com",
    "phone": "+63 362 145 9794",
    "first_follow": "23-Dec-2019"
  },
  {
    "user_id": 18,
    "name": "Evelyn",
    "photo_url":
        "https://robohash.org/ducimusaliquamvoluptate.png?size=50x50&set=set1",
    "city": "Lunsar",
    "country": "Sierra Leone",
    "email": "evelyn@gmail.com",
    "phone": "+232 758 135 1716",
    "first_follow": "17-Jul-2019"
  },
  {
    "user_id": 19,
    "name": "Cordell",
    "photo_url": "https://robohash.org/maximeetet.png?size=50x50&set=set1",
    "city": "Boulaide",
    "country": "Luxembourg",
    "email": "cordell@gmail.com",
    "phone": "+352 599 691 1878",
    "first_follow": "23-Aug-2016"
  },
  {
    "user_id": 20,
    "name": "Shep",
    "photo_url": "https://robohash.org/nequenatusdolor.png?size=50x50&set=set1",
    "city": "Casselman",
    "country": "Canada",
    "email": "shep@gmail.com",
    "phone": "+1 471 799 9285",
    "first_follow": "03-Dec-2018"
  }
];
