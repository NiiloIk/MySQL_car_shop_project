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

suomalaiset_etunimet = [
    "Mikko", "Anna", "Juha", "Minna", "Antti", "Sari", "Timo", "Satu", "Pekka", "Tiina",
    "Jari", "Heli", "Janne", "Kati", "Sami", "Eija", "Marko", "Riikka", "Jussi", "Marika",
    "Tapani", "Maria", "Ville", "Hanna", "Kari", "Laura", "Petri", "Susanna", "Tomi", "Anu",
    "Heikki", "Sirpa", "Seppo", "Pirjo", "Tero", "Tarja", "Matti", "Sanna", "Jouni", "Anne",
    "Juhani", "Outi", "Vesa", "Leena", "Ilkka", "Paula", "Ari", "Kirsi", "Timo", "Elina"
]

suomalaiset_sukunimet = [
    "Virtanen", "Korhonen", "Mäkinen", "Nieminen", "Mäkelä", "Hämäläinen", "Laine", "Heikkinen",
    "Koskinen", "Järvinen", "Lehtonen", "Lehtinen", "Saarinen", "Salminen", "Heinonen", "Lahtinen",
    "Tuominen", "Salo", "Rantanen", "Karjalainen", "Rinne", "Mattila", "Miettinen", "Peltonen",
    "Seppälä", "Savolainen", "Hiltunen", "Laitinen", "Mikkonen", "Aaltonen", "Eronen", "Nurmi",
    "Toivonen", "Salmi", "Kinnunen", "Turunen", "Väisänen", "Lindholm", "Anttila", "Laaksonen",
    "Räsänen", "Ahonen", "Nyman", "Koivisto", "Harju", "Lampinen", "Ojala", "Pitkänen", "Kangas"
]

kadunnimet = [
    "Esimerkkikatu", "Asematie", "Koulukatu", "Puistotie", "Rantatie", "Metsäpolku", "Kirkkokatu",
    "Lehtikuja", "Sepäntie", "Välskärintie", "Kivimäentie", "Aurinkotie", "Pajatie", "Rautatienkatu",
    "Riihitie", "Veneentekijäntie", "Tammikuja", "Kesäkatu", "Kuusitie", "Valkosipulikuja",
    "Haapatie", "Pihlajatie", "Puronvarsi", "Kultakuja", "Ruusukatu", "Kukkatie", "Sipulikuja",
    "Kastanjatie", "Apilakuja", "Pellavatie", "Ruispolku", "Nokkostie", "Ryynikatu", "Omenatie",
    "Vihertie", "Tähtikuja", "Katajatie", "Sinikuja", "Mansikkatie", "Karpalotie", "Lumikuja",
    "Tulppaanimäki", "Orvokkikuja", "Vanamojärventie", "Kielokuja", "Kevätpolku", "Sateenkaarenkatu",
    "Vesakkotie", "Aurorankuja"
]

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


def return_new_car():
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
    print()
    return [manufacturer, model, price, distance, shop_id]

def return_new_customer():
    etunimi = random.choice(suomalaiset_etunimet)
    sukunimi = random.choice(suomalaiset_sukunimet)
    osoite = random.choice(kadunnimet) + " " + str(random.randint(1, 100))
    print("-- listätään osoite ja asiakas")
    print(f"INSERT INTO carshop.address (city, street) VALUES ('{kaupunki}', '{osoite}');")
    print(f'SET @address_id = (SELECT address_id FROM carshop.address WHERE street = "{osoite}" AND city = "{kaupunki}" LIMIT 1);')
    print(f'INSERT INTO carshop.customer (first_name, last_name,  address_id)\n\tVALUES ("{etunimi}", "{sukunimi}", @address_id);\n')
    return [etunimi, sukunimi, osoite]
 
#  [manufacturer, model, price, distance, shop_id]
def print_selling_car(n = 5):
    for i in range(n):
        employee_id = random.choice(employee_id_list)
        customer_info = return_new_customer()
        car_info = return_new_car()
        print("-- haetaan asiakkaan ja auton id ostoa varten")
        print(f'SET @customer_id = (SELECT customer_id FROM carshop.customer \n\tWHERE address_id = @address_id AND first_name = "{customer_info[0]}" AND last_name = "{customer_info[1]}" LIMIT 1);')
        print(f'SET @car_id = (SELECT car_id FROM carshop.car \n\tWHERE manufacturer = "{car_info[0]}" AND model = "{car_info[1]}" AND buy_price = {car_info[2]} AND distance_traveled = {car_info[3]} AND shop_id = {car_info[4]});')


        price = f"SET @price = (SELECT list_price FROM carshop.car WHERE car_id = @car_id LIMIT 1);"
        if random.randint(0, 1): # Myyjä saattaa myydä auton kalliimmalla
            added_price = random.randint(200, 2000)
            price = f"SET @price = (SELECT list_price + {added_price} FROM carshop.car WHERE car_id = @car_id LIMIT 1);"
            
        print(price, "\n")
        print("-- ostetaan auto")
        print(f"INSERT INTO carshop.sales (car_id, employee_id, customer_id, price_sold) VALUES (@car_id, {employee_id}, @customer_id, @price);")
        print(f"UPDATE carshop.car SET is_sold = 1 WHERE car_id = @car_id;")
        print()

print_selling_car(9)