class TempData {
  static Map<String, dynamic> getDummyData() {
    return {
      "orderLists": [
        {
          "kupac": {
            "id": 2,
            "imeprezime": "Aleksandra Karađorđevićeva",
            "adresa": "Kralja Petra 15",
            "grad": "Beograd",
            "telefon": 381641234567,
            "email": "marko@email.com",
            "kanal": "website",
            "pol": "Muski"
          },
          "datumKreiranja": "2024-01-15T10:30:00",
          "datumIsporuke": "2024-01-20T14:00:00",
          "neSlatiPre": "2024-01-18T09:00:00",
          "nacinPlacanja": "kartica",
          "besplatnaDos": false,
          "orders": [
            {
              "popust": 10.0,
              "kolicina": 2,
              "gravura": "Srećan rođendan!",
              "products": [
                {
                  "ime": "Zlatni prsten",
                  "materijal": "14k zlato",
                  "cena": 299.99,
                  "imageUrls": [
                   "https://www.pbs.org/wnet/nature/files/2020/06/black-white-and-yellow-tiger-sitting-on-a-beige-sand-during-47312-scaled.jpg",
                    "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQiX1vaoWWbfHRBS-iVYzwFNgUJ7WcjzO_GBXufRHoRW4bi9YLS-YZnZmBx1CXzQSGXkIJEZozD_P-YOUrijreo5Q",
                    "https://images.ctfassets.net/rt5zmd3ipxai/2TtovnO1qnGJyPwtyuVOdU/8ddc745eca71320d2ea1d05679f81cb2/NVA-tiger.jpg?fit=fill&fm=webp&h=578&w=1070&q=72,%20https://images.ctfassets.net/rt5zmd3ipxai/2TtovnO1qnGJyPwtyuVOdU/8ddc745eca71320d2ea1d05679f81cb2/NVA-tiger.jpg?fit=fill&fm=webp&h=1156&w=2140&q=72"
                  ]
                },
                {
                  "ime": "Srebrna narukvica",
                  "materijal": "925 srebro",
                  "cena": 89.99,
                  "imageUrls": [
                    "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQiX1vaoWWbfHRBS-iVYzwFNgUJ7WcjzO_GBXufRHoRW4bi9YLS-YZnZmBx1CXzQSGXkIJEZozD_P-YOUrijreo5Q"
                  ]
                }
              ]
            }
          ]
        },
        {
          "kupac": {
            "id": 7,
            "imeprezime": "Ana Jovanović",
            "adresa": "Kneza Miloša 25",
            "grad": "Novi Sad",
            "telefon": 381651234567,
            "email": "ana@email.com",
            "kanal": "instagram",
            "pol": "Zenski"
          },
          "besplatnaDos": true,
          "datumKreiranja": "2024-01-16T11:45:00",
          "datumIsporuke": "2024-01-21T15:30:00",
          "neSlatiPre": "2024-01-19T10:00:00",
          "nacinPlacanja": "pouzecem",
          "orders": [
            {
              "popust": 15.0,
              "kolicina": 14,
              "gravura": "Za moju dragu",
              "products": [
                {
                  "ime": "Dijamantski privezak",
                  "materijal": "18k zlato",
                  "cena": 499.99,
                  "imageUrls": [
                    "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQiX1vaoWWbfHRBS-iVYzwFNgUJ7WcjzO_GBXufRHoRW4bi9YLS-YZnZmBx1CXzQSGXkIJEZozD_P-YOUrijreo5Q"
                  ]
                }
              ]
            }
          ]
        },
        {
          "kupac": {
            "id": 46,
            "imeprezime": "Stefan Nikolić",
            "adresa": "Cara Dušana 42",
            "grad": "Niš",
            "telefon": 381661234567,
            "email": "stefan@email.com",
            "kanal": "facebook",
            "pol": "Muski"
          },
          "besplatnaDos": false,
          "datumKreiranja": "2024-01-17T09:15:00",
          "datumIsporuke": "2024-01-22T13:45:00",
          "neSlatiPre": "2024-01-20T08:00:00",
          "nacinPlacanja": "kartica",
          "orders": [
            {
              "besplatnaDos": true,
              "popust": 20.0,
              "kolicina": 7,
              "gravura": "Zauvek tvoj",
              "products": [
                {
                  "ime": "Vereničko prstenje",
                  "materijal": "platina",
                  "cena": 799.99,
                  "imageUrls": [
                    "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQiX1vaoWWbfHRBS-iVYzwFNgUJ7WcjzO_GBXufRHoRW4bi9YLS-YZnZmBx1CXzQSGXkIJEZozD_P-YOUrijreo5Q",
                     "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQiX1vaoWWbfHRBS-iVYzwFNgUJ7WcjzO_GBXufRHoRW4bi9YLS-YZnZmBx1CXzQSGXkIJEZozD_P-YOUrijreo5Q",
                      "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQiX1vaoWWbfHRBS-iVYzwFNgUJ7WcjzO_GBXufRHoRW4bi9YLS-YZnZmBx1CXzQSGXkIJEZozD_P-YOUrijreo5Q"
                  ]
                }
              ]
            }
          ]
        }
      ]
    };
  }
}
