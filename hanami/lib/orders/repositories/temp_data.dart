class TempData {
  static Map<String, dynamic> getDummyData() {
    return {
      "buyers": [
        {
          "name": "John Doe",
          "orderLists": [
            {
              "orders": [
                {
                  "popust": 10.0,
                  "products": [
                    {
                      "name": "Stolica Modern",
                      "materijal": "Hrast",
                      "cena": 15000.0
                    },
                    {
                      "name": "Sto Klasik",
                      "materijal": "Orah",
                      "cena": 25000.0
                    }
                  ]
                },
                {
                  "popust": 15.0,
                  "products": [
                    {
                      "name": "Komoda Lux",
                      "materijal": "Bukva",
                      "cena": 35000.0
                    }
                  ]
                }
              ]
            }
          ]
        },
        {
          "name": "Jane Smith",
          "orderLists": [
            {
              "orders": [
                {
                  "popust": 5.0,
                  "products": [
                    {
                      "name": "Fotelja Comfort",
                      "materijal": "Eco koža",
                      "cena": 28000.0
                    },
                    {
                      "name": "Tabure Mini",
                      "materijal": "Štof",
                      "cena": 8000.0
                    },
                    {
                      "name": "Polica Wood",
                      "materijal": "Hrast",
                      "cena": 12000.0
                    }
                  ]
                }
              ]
            }
          ]
        },
        {
          "name": "Mike Johnson",
          "orderLists": [
            {
              "orders": [
                {
                  "popust": 20.0,
                  "products": [
                    {
                      "name": "Krevet King",
                      "materijal": "Bukva",
                      "cena": 45000.0
                    },
                    {
                      "name": "Noćni stočić Basic",
                      "materijal": "Medijapan",
                      "cena": 9000.0
                    }
                  ]
                },
                {
                  "popust": 0.0,
                  "products": [
                    {
                      "name": "Ormar Sliding",
                      "materijal": "Iverica",
                      "cena": 55000.0
                    }
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
