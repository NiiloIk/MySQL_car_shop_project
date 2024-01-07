import random

car_models = {
    "Toyota": ["Camry", "Corolla", "Rav4", "Prius", "Highlander"],
    "Volkswagen": ["Golf", "Jetta", "Passat", "Tiguan", "Atlas"],
    "Ford": ["F-150", "Focus", "Escape", "Mustang", "Explorer"],
    "Chevrolet": ["Silverado", "Equinox", "Malibu", "Tahoe", "Traverse"],
    "Honda": ["Accord", "Civic", "CR-V", "Pilot", "Odyssey"],
    "Nissan": ["Altima", "Rogue", "Sentra", "Pathfinder", "Murano"],
    "BMW": ["3 Series", "5 Series", "X3", "X5", "7 Series"],
    "Mercedes-Benz": ["C-Class", "E-Class", "GLC", "GLE", "S-Class"],
    "Audi": ["A3", "A4", "Q5", "Q7", "A6"],
    "Hyundai": ["Elantra", "Tucson", "Santa Fe", "Sonata", "Kona"]
}

car_descriptions = {
    "huono": [
        "Autolla on useita teknisiä ongelmia ja se tarvitsee suuren korjauksen.",
        "Maalipinta on naarmuinen ja ruosteinen.",
        "Sisätilat ovat likaiset ja kuluneet."
    ],
    "normaali": [
        "Autolla ei ole suuria teknisiä ongelmia ja se toimii hyvin.",
        "Pieniä käytön jälkiä on nähtävissä, mutta ei merkittäviä vikoja.",
        "Sisätilat ovat siistit ja hyväkuntoiset."
    ],
    "hyvä": [
        "Auto on erinomaisessa kunnossa ja hyvin huollettu.",
        "Ei teknisiä vikoja ja erittäin vähän käytön jälkiä.",
        "Sisätilat ovat erittäin siistit ja lähes uudenveroiset."
    ]
}


def print_car_list(n = 5):
    for i in range(1, n+1):
        shop_id = random.randint(1, 3)

        if shop_id == 1:
            kaupunki = "Hyvinkää"
            employee_id_list = [1, 8, 9, 10] 
        elif shop_id == 2:
            kaupunki = "Riihimäki"
            employee_id_list = [5, 6, 7]
        else:
            kaupunki = "Turku"
            employee_id_list = list(range(11, 24))

        manufacturer = random.choice(list(car_models.keys()))
        model = random.choice(car_models[manufacturer])
        year = random.randint(2000, 2023)
        price = random.randint(500, 30000)
        list_price = price + random.randint(1000, 10000)
        description = ""
        distance = abs(((2023 - year) *19573) + random.randint(-5000, 5000))
        print("-- lisätään auto")
        if random.randint(0,1):
            if price <= 1000:
                description += random.choice(car_descriptions["huono"])
            elif price >= 20000:
                description += random.choice(car_descriptions["hyvä"])
            else:
                description += random.choice(car_descriptions["hyvä"])
            print("INSERT INTO carshop.car (manufacturer, model, manufacturing_year, distance_traveled, buy_price, list_price, is_sold, " +
                f"shop_id, description) \n\tVALUES ('{manufacturer}', '{model}', {year}, {distance}, {price}, {list_price}, 0, {shop_id}, '{description}');")
        else:
            print("INSERT INTO carshop.car (manufacturer, model, manufacturing_year, distance_traveled, buy_price, list_price, is_sold, shop_id) " +
                f"\n\tVALUES ('{manufacturer}', '{model}', {year}, {distance}, {price}, {list_price}, 0, {shop_id});")


print_car_list()