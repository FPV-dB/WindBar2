//
//  WorldCities.swift
//  WindBar2
//
//  Created by FPV-dB
//  Comprehensive world coverage including remote locations
//

import Foundation

public struct CountryData {
    let flag: String
    let cities: [String]
    
    public init(flag: String, cities: [String]) {
        self.flag = flag
        self.cities = cities
    }
}

let WorldCities: [String: [String: CountryData]] = [

    // -------------------------
    // 🌍 EUROPE
    // -------------------------
    "Europe": [
        "Austria": CountryData(flag: "🇦🇹", cities: [
            "Graz", "Innsbruck", "Linz", "Salzburg", "Vienna"
        ]),
        "Belgium": CountryData(flag: "🇧🇪", cities: [
            "Antwerp", "Brussels", "Bruges", "Ghent", "Liege", "Charleroi"
        ]),
        "Bulgaria": CountryData(flag: "🇧🇬", cities: [
            "Sofia", "Plovdiv", "Varna", "Burgas"
        ]),
        "Croatia": CountryData(flag: "🇭🇷", cities: [
            "Zagreb", "Split", "Rijeka", "Dubrovnik"
        ]),
        "Czechia": CountryData(flag: "🇨🇿", cities: [
            "Brno", "Ostrava", "Plzeň", "Prague"
        ]),
        "Denmark": CountryData(flag: "🇩🇰", cities: [
            "Aalborg", "Aarhus", "Copenhagen", "Odense"
        ]),
        "Estonia": CountryData(flag: "🇪🇪", cities: [
            "Tallinn", "Tartu"
        ]),
        "Finland": CountryData(flag: "🇫🇮", cities: [
            "Espoo", "Helsinki", "Oulu", "Tampere", "Rovaniemi"
        ]),
        "France": CountryData(flag: "🇫🇷", cities: [
            "Bordeaux", "Lille", "Lyon", "Marseille", "Nice", "Paris", "Toulouse", "Strasbourg", "Nantes", "Montpellier"
        ]),
        "Germany": CountryData(flag: "🇩🇪", cities: [
            "Berlin", "Bremen", "Cologne", "Dortmund", "Dresden",
            "Frankfurt", "Hamburg", "Hannover", "Leipzig", "Munich", "Stuttgart", "Nuremberg", "Düsseldorf"
        ]),
        "Greece": CountryData(flag: "🇬🇷", cities: [
            "Athens", "Heraklion", "Patras", "Thessaloniki"
        ]),
        "Hungary": CountryData(flag: "🇭🇺", cities: [
            "Budapest", "Debrecen", "Szeged", "Miskolc"
        ]),
        "Iceland": CountryData(flag: "🇮🇸", cities: [
            "Reykjavik", "Akureyri"
        ]),
        "Ireland": CountryData(flag: "🇮🇪", cities: [
            "Cork", "Dublin", "Galway", "Limerick"
        ]),
        "Italy": CountryData(flag: "🇮🇹", cities: [
            "Bologna", "Florence", "Genoa", "Milan", "Naples", "Palermo", "Rome", "Turin", "Venice", "Bari", "Catania"
        ]),
        "Latvia": CountryData(flag: "🇱🇻", cities: [
            "Riga", "Daugavpils"
        ]),
        "Lithuania": CountryData(flag: "🇱🇹", cities: [
            "Vilnius", "Kaunas"
        ]),
        "Netherlands": CountryData(flag: "🇳🇱", cities: [
            "Amsterdam", "Eindhoven", "Rotterdam", "The Hague", "Utrecht", "Groningen"
        ]),
        "Norway": CountryData(flag: "🇳🇴", cities: [
            "Bergen", "Oslo", "Stavanger", "Trondheim", "Tromsø", "Longyearbyen"
        ]),
        "Poland": CountryData(flag: "🇵🇱", cities: [
            "Gdańsk", "Katowice", "Kraków", "Łódź", "Poznań", "Szczecin", "Warsaw", "Wrocław"
        ]),
        "Portugal": CountryData(flag: "🇵🇹", cities: [
            "Braga", "Faro", "Lisbon", "Porto", "Coimbra"
        ]),
        "Romania": CountryData(flag: "🇷🇴", cities: [
            "Bucharest", "Cluj-Napoca", "Timișoara", "Iași"
        ]),
        "Russia": CountryData(flag: "🇷🇺", cities: [
            "Moscow", "Saint Petersburg", "Novosibirsk", "Yekaterinburg", "Kazan", "Vladivostok", "Murmansk", "Yakutsk"
        ]),
        "Serbia": CountryData(flag: "🇷🇸", cities: [
            "Belgrade", "Novi Sad", "Niš"
        ]),
        "Slovakia": CountryData(flag: "🇸🇰", cities: [
            "Bratislava", "Košice"
        ]),
        "Slovenia": CountryData(flag: "🇸🇮", cities: [
            "Ljubljana", "Maribor"
        ]),
        "Spain": CountryData(flag: "🇪🇸", cities: [
            "Alicante", "Barcelona", "Bilbao", "Madrid", "Malaga", "Seville", "Valencia", "Zaragoza"
        ]),
        "Sweden": CountryData(flag: "🇸🇪", cities: [
            "Gothenburg", "Malmö", "Stockholm", "Uppsala", "Kiruna"
        ]),
        "Switzerland": CountryData(flag: "🇨🇭", cities: [
            "Basel", "Bern", "Geneva", "Lausanne", "Zurich"
        ]),
        "Ukraine": CountryData(flag: "🇺🇦", cities: [
            "Kyiv", "Kharkiv", "Odesa", "Dnipro", "Lviv"
        ]),
        "United Kingdom": CountryData(flag: "🇬🇧", cities: [
            "Belfast", "Birmingham", "Bristol", "Cardiff", "Edinburgh",
            "Glasgow", "Leeds", "Liverpool", "London", "Manchester", "Newcastle"
        ])
    ],

    // -------------------------
    // 🌏 ASIA
    // -------------------------
    "Asia": [
        "Afghanistan": CountryData(flag: "🇦🇫", cities: [
            "Kabul", "Kandahar", "Herat"
        ]),
        "Armenia": CountryData(flag: "🇦🇲", cities: [
            "Yerevan"
        ]),
        "Azerbaijan": CountryData(flag: "🇦🇿", cities: [
            "Baku"
        ]),
        "Bahrain": CountryData(flag: "🇧🇭", cities: [
            "Manama"
        ]),
        "Bangladesh": CountryData(flag: "🇧🇩", cities: [
            "Dhaka", "Chittagong", "Khulna", "Rajshahi"
        ]),
        "Bhutan": CountryData(flag: "🇧🇹", cities: [
            "Thimphu", "Paro"
        ]),
        "Brunei": CountryData(flag: "🇧🇳", cities: [
            "Bandar Seri Begawan"
        ]),
        "Cambodia": CountryData(flag: "🇰🇭", cities: [
            "Phnom Penh", "Siem Reap", "Battambang"
        ]),
        "China": CountryData(flag: "🇨🇳", cities: [
            "Beijing", "Chengdu", "Chongqing", "Guangzhou", "Hangzhou",
            "Nanjing", "Shanghai", "Shenzhen", "Tianjin", "Wuhan", "Xi'an", "Harbin", "Urumqi", "Lhasa"
        ]),
        "Georgia": CountryData(flag: "🇬🇪", cities: [
            "Tbilisi", "Batumi"
        ]),
        "Hong Kong": CountryData(flag: "🇭🇰", cities: [
            "Hong Kong"
        ]),
        "India": CountryData(flag: "🇮🇳", cities: [
            "Ahmedabad", "Bangalore", "Chennai", "Delhi", "Hyderabad",
            "Jaipur", "Kolkata", "Mumbai", "Pune", "Surat", "Lucknow", "Kochi"
        ]),
        "Indonesia": CountryData(flag: "🇮🇩", cities: [
            "Bandung", "Jakarta", "Makassar", "Medan", "Surabaya", "Bali", "Yogyakarta"
        ]),
        "Iran": CountryData(flag: "🇮🇷", cities: [
            "Tehran", "Isfahan", "Mashhad", "Shiraz"
        ]),
        "Iraq": CountryData(flag: "🇮🇶", cities: [
            "Baghdad", "Basra", "Erbil", "Mosul"
        ]),
        "Israel": CountryData(flag: "🇮🇱", cities: [
            "Jerusalem", "Tel Aviv", "Haifa", "Beersheba"
        ]),
        "Japan": CountryData(flag: "🇯🇵", cities: [
            "Fukuoka", "Hiroshima", "Kobe", "Kyoto", "Nagoya",
            "Osaka", "Sapporo", "Sendai", "Tokyo", "Yokohama", "Okinawa"
        ]),
        "Jordan": CountryData(flag: "🇯🇴", cities: [
            "Amman", "Aqaba"
        ]),
        "Kazakhstan": CountryData(flag: "🇰🇿", cities: [
            "Almaty", "Nur-Sultan", "Shymkent"
        ]),
        "Kuwait": CountryData(flag: "🇰🇼", cities: [
            "Kuwait City"
        ]),
        "Kyrgyzstan": CountryData(flag: "🇰🇬", cities: [
            "Bishkek", "Osh"
        ]),
        "Laos": CountryData(flag: "🇱🇦", cities: [
            "Vientiane", "Luang Prabang"
        ]),
        "Lebanon": CountryData(flag: "🇱🇧", cities: [
            "Beirut", "Tripoli"
        ]),
        "Malaysia": CountryData(flag: "🇲🇾", cities: [
            "George Town", "Johor Bahru", "Kuala Lumpur", "Kuching"
        ]),
        "Maldives": CountryData(flag: "🇲🇻", cities: [
            "Malé"
        ]),
        "Mongolia": CountryData(flag: "🇲🇳", cities: [
            "Ulaanbaatar"
        ]),
        "Myanmar": CountryData(flag: "🇲🇲", cities: [
            "Yangon", "Mandalay", "Naypyidaw"
        ]),
        "Nepal": CountryData(flag: "🇳🇵", cities: [
            "Kathmandu", "Pokhara"
        ]),
        "North Korea": CountryData(flag: "🇰🇵", cities: [
            "Pyongyang"
        ]),
        "Oman": CountryData(flag: "🇴🇲", cities: [
            "Muscat", "Salalah"
        ]),
        "Pakistan": CountryData(flag: "🇵🇰", cities: [
            "Karachi", "Lahore", "Islamabad", "Faisalabad", "Peshawar"
        ]),
        "Palestine": CountryData(flag: "🇵🇸", cities: [
            "Gaza", "Ramallah"
        ]),
        "Philippines": CountryData(flag: "🇵🇭", cities: [
            "Cebu", "Davao", "Manila", "Quezon City"
        ]),
        "Qatar": CountryData(flag: "🇶🇦", cities: [
            "Doha"
        ]),
        "Saudi Arabia": CountryData(flag: "🇸🇦", cities: [
            "Riyadh", "Jeddah", "Mecca", "Medina", "Dammam"
        ]),
        "Singapore": CountryData(flag: "🇸🇬", cities: [
            "Singapore"
        ]),
        "South Korea": CountryData(flag: "🇰🇷", cities: [
            "Busan", "Daegu", "Daejeon", "Gwangju", "Incheon", "Seoul", "Ulsan"
        ]),
        "Sri Lanka": CountryData(flag: "🇱🇰", cities: [
            "Colombo", "Kandy", "Galle"
        ]),
        "Syria": CountryData(flag: "🇸🇾", cities: [
            "Damascus", "Aleppo"
        ]),
        "Taiwan": CountryData(flag: "🇹🇼", cities: [
            "Hsinchu", "Kaohsiung", "Taichung", "Tainan", "Taipei"
        ]),
        "Tajikistan": CountryData(flag: "🇹🇯", cities: [
            "Dushanbe"
        ]),
        "Thailand": CountryData(flag: "🇹🇭", cities: [
            "Bangkok", "Chiang Mai", "Pattaya", "Phuket"
        ]),
        "Turkey": CountryData(flag: "🇹🇷", cities: [
            "Istanbul", "Ankara", "Izmir", "Antalya", "Bursa"
        ]),
        "Turkmenistan": CountryData(flag: "🇹🇲", cities: [
            "Ashgabat"
        ]),
        "United Arab Emirates": CountryData(flag: "🇦🇪", cities: [
            "Abu Dhabi", "Dubai", "Sharjah"
        ]),
        "Uzbekistan": CountryData(flag: "🇺🇿", cities: [
            "Tashkent", "Samarkand", "Bukhara"
        ]),
        "Vietnam": CountryData(flag: "🇻🇳", cities: [
            "Hanoi", "Ho Chi Minh City", "Da Nang", "Hue"
        ]),
        "Yemen": CountryData(flag: "🇾🇪", cities: [
            "Sana'a", "Aden"
        ])
    ],

    // -------------------------
    // 🌏 OCEANIA & PACIFIC
    // -------------------------
    "Oceania": [
        "Australia": CountryData(flag: "🇦🇺", cities: [
            "Adelaide", "Brisbane", "Canberra", "Darwin", "Hobart",
            "Melbourne", "Perth", "Sydney", "Gold Coast", "Newcastle"
        ]),
        "Fiji": CountryData(flag: "🇫🇯", cities: [
            "Suva", "Nadi"
        ]),
        "New Caledonia": CountryData(flag: "🇳🇨", cities: [
            "Nouméa"
        ]),
        "New Zealand": CountryData(flag: "🇳🇿", cities: [
            "Auckland", "Christchurch", "Hamilton", "Wellington", "Queenstown"
        ]),
        "Papua New Guinea": CountryData(flag: "🇵🇬", cities: [
            "Port Moresby"
        ]),
        "Samoa": CountryData(flag: "🇼🇸", cities: [
            "Apia"
        ]),
        "Tonga": CountryData(flag: "🇹🇴", cities: [
            "Nuku'alofa"
        ]),
        "Vanuatu": CountryData(flag: "🇻🇺", cities: [
            "Port Vila"
        ])
    ],

    // -------------------------
    // 🌎 NORTH AMERICA
    // -------------------------
    "North America": [
        "Bahamas": CountryData(flag: "🇧🇸", cities: [
            "Nassau"
        ]),
        "Barbados": CountryData(flag: "🇧🇧", cities: [
            "Bridgetown"
        ]),
        "Belize": CountryData(flag: "🇧🇿", cities: [
            "Belize City"
        ]),
        "Canada": CountryData(flag: "🇨🇦", cities: [
            "Calgary", "Edmonton", "Montreal", "Ottawa", "Toronto", "Vancouver", "Quebec City", "Winnipeg", "Halifax"
        ]),
        "Costa Rica": CountryData(flag: "🇨🇷", cities: [
            "San José", "Puerto Limón"
        ]),
        "Cuba": CountryData(flag: "🇨🇺", cities: [
            "Havana", "Santiago de Cuba"
        ]),
        "Dominican Republic": CountryData(flag: "🇩🇴", cities: [
            "Santo Domingo", "Santiago", "Punta Cana"
        ]),
        "El Salvador": CountryData(flag: "🇸🇻", cities: [
            "San Salvador"
        ]),
        "Greenland": CountryData(flag: "🇬🇱", cities: [
            "Nuuk", "Ilulissat"
        ]),
        "Guatemala": CountryData(flag: "🇬🇹", cities: [
            "Guatemala City", "Antigua"
        ]),
        "Haiti": CountryData(flag: "🇭🇹", cities: [
            "Port-au-Prince"
        ]),
        "Honduras": CountryData(flag: "🇭🇳", cities: [
            "Tegucigalpa", "San Pedro Sula"
        ]),
        "Jamaica": CountryData(flag: "🇯🇲", cities: [
            "Kingston", "Montego Bay"
        ]),
        "Mexico": CountryData(flag: "🇲🇽", cities: [
            "Guadalajara", "Mexico City", "Monterrey", "Puebla", "Tijuana", "Cancún"
        ]),
        "Nicaragua": CountryData(flag: "🇳🇮", cities: [
            "Managua"
        ]),
        "Panama": CountryData(flag: "🇵🇦", cities: [
            "Panama City"
        ]),
        "Puerto Rico": CountryData(flag: "🇵🇷", cities: [
            "San Juan", "Ponce"
        ]),
        "Trinidad and Tobago": CountryData(flag: "🇹🇹", cities: [
            "Port of Spain"
        ]),
        "United States": CountryData(flag: "🇺🇸", cities: [
            "Atlanta", "Boston", "Chicago", "Dallas", "Denver", "Detroit",
            "Houston", "Las Vegas", "Los Angeles", "Miami", "Minneapolis",
            "New York", "Philadelphia", "Phoenix", "San Diego",
            "San Francisco", "Seattle", "Washington D.C.", "Portland", "Austin", "Anchorage", "Honolulu"
        ])
    ],

    // -------------------------
    // 🌎 SOUTH AMERICA
    // -------------------------
    "South America": [
        "Argentina": CountryData(flag: "🇦🇷", cities: [
            "Buenos Aires", "Córdoba", "Mendoza", "Rosario", "Ushuaia"
        ]),
        "Bolivia": CountryData(flag: "🇧🇴", cities: [
            "La Paz", "Santa Cruz", "Sucre"
        ]),
        "Brazil": CountryData(flag: "🇧🇷", cities: [
            "Belo Horizonte", "Brasília", "Curitiba", "Fortaleza", "Porto Alegre",
            "Recife", "Rio de Janeiro", "Salvador", "São Paulo", "Manaus"
        ]),
        "Chile": CountryData(flag: "🇨🇱", cities: [
            "Antofagasta", "Concepción", "Santiago", "Valparaíso", "Punta Arenas"
        ]),
        "Colombia": CountryData(flag: "🇨🇴", cities: [
            "Barranquilla", "Bogotá", "Cali", "Medellín", "Cartagena"
        ]),
        "Ecuador": CountryData(flag: "🇪🇨", cities: [
            "Quito", "Guayaquil", "Cuenca"
        ]),
        "French Guiana": CountryData(flag: "🇬🇫", cities: [
            "Cayenne"
        ]),
        "Guyana": CountryData(flag: "🇬🇾", cities: [
            "Georgetown"
        ]),
        "Paraguay": CountryData(flag: "🇵🇾", cities: [
            "Asunción"
        ]),
        "Peru": CountryData(flag: "🇵🇪", cities: [
            "Arequipa", "Cusco", "Lima", "Trujillo"
        ]),
        "Suriname": CountryData(flag: "🇸🇷", cities: [
            "Paramaribo"
        ]),
        "Uruguay": CountryData(flag: "🇺🇾", cities: [
            "Montevideo", "Punta del Este"
        ]),
        "Venezuela": CountryData(flag: "🇻🇪", cities: [
            "Caracas", "Maracaibo", "Valencia"
        ])
    ],

    // -------------------------
    // 🌍 AFRICA
    // -------------------------
    "Africa": [
        "Algeria": CountryData(flag: "🇩🇿", cities: [
            "Algiers", "Oran", "Constantine"
        ]),
        "Angola": CountryData(flag: "🇦🇴", cities: [
            "Luanda"
        ]),
        "Benin": CountryData(flag: "🇧🇯", cities: [
            "Cotonou", "Porto-Novo"
        ]),
        "Botswana": CountryData(flag: "🇧🇼", cities: [
            "Gaborone"
        ]),
        "Burkina Faso": CountryData(flag: "🇧🇫", cities: [
            "Ouagadougou"
        ]),
        "Cameroon": CountryData(flag: "🇨🇲", cities: [
            "Yaoundé", "Douala"
        ]),
        "Ivory Coast": CountryData(flag: "🇨🇮", cities: [
            "Abidjan", "Yamoussoukro"
        ]),
        "Democratic Republic of Congo": CountryData(flag: "🇨🇩", cities: [
            "Kinshasa", "Lubumbashi"
        ]),
        "Egypt": CountryData(flag: "🇪🇬", cities: [
            "Alexandria", "Cairo", "Giza", "Port Said", "Luxor", "Aswan"
        ]),
        "Ethiopia": CountryData(flag: "🇪🇹", cities: [
            "Addis Ababa", "Dire Dawa"
        ]),
        "Ghana": CountryData(flag: "🇬🇭", cities: [
            "Accra", "Kumasi", "Tamale"
        ]),
        "Kenya": CountryData(flag: "🇰🇪", cities: [
            "Kisumu", "Mombasa", "Nairobi"
        ]),
        "Libya": CountryData(flag: "🇱🇾", cities: [
            "Tripoli", "Benghazi"
        ]),
        "Madagascar": CountryData(flag: "🇲🇬", cities: [
            "Antananarivo"
        ]),
        "Mali": CountryData(flag: "🇲🇱", cities: [
            "Bamako", "Timbuktu"
        ]),
        "Mauritius": CountryData(flag: "🇲🇺", cities: [
            "Port Louis"
        ]),
        "Morocco": CountryData(flag: "🇲🇦", cities: [
            "Casablanca", "Fez", "Marrakesh", "Rabat", "Tangier"
        ]),
        "Mozambique": CountryData(flag: "🇲🇿", cities: [
            "Maputo"
        ]),
        "Namibia": CountryData(flag: "🇳🇦", cities: [
            "Windhoek"
        ]),
        "Niger": CountryData(flag: "🇳🇪", cities: [
            "Niamey"
        ]),
        "Nigeria": CountryData(flag: "🇳🇬", cities: [
            "Abuja", "Benin City", "Enugu", "Ibadan", "Kano", "Lagos", "Port Harcourt"
        ]),
        "Rwanda": CountryData(flag: "🇷🇼", cities: [
            "Kigali"
        ]),
        "Senegal": CountryData(flag: "🇸🇳", cities: [
            "Dakar"
        ]),
        "Seychelles": CountryData(flag: "🇸🇨", cities: [
            "Victoria"
        ]),
        "South Africa": CountryData(flag: "🇿🇦", cities: [
            "Cape Town", "Durban", "Johannesburg", "Pretoria", "Port Elizabeth"
        ]),
        "Sudan": CountryData(flag: "🇸🇩", cities: [
            "Khartoum"
        ]),
        "Tanzania": CountryData(flag: "🇹🇿", cities: [
            "Dar es Salaam", "Dodoma", "Zanzibar"
        ]),
        "Tunisia": CountryData(flag: "🇹🇳", cities: [
            "Tunis", "Sfax"
        ]),
        "Uganda": CountryData(flag: "🇺🇬", cities: [
            "Kampala"
        ]),
        "Zambia": CountryData(flag: "🇿🇲", cities: [
            "Lusaka"
        ]),
        "Zimbabwe": CountryData(flag: "🇿🇼", cities: [
            "Harare", "Bulawayo"
        ])
    ],

    // -------------------------
    // 🧊 ANTARCTICA & POLAR
    // -------------------------
    "Antarctica & Arctic": [
        "Antarctica": CountryData(flag: "🇦🇶", cities: [
            "McMurdo Station (US)",
            "Amundsen-Scott South Pole Station (US)",
            "Palmer Station (US)",
            "Rothera Station (UK)",
            "Casey Station (Australia)",
            "Davis Station (Australia)",
            "Mawson Station (Australia)",
            "Vostok Station (Russia)",
            "Concordia Station (France/Italy)",
            "Dumont d'Urville Station (France)",
            "Syowa Station (Japan)",
            "Halley Station (UK)",
            "Neumayer Station (Germany)",
            "Troll Station (Norway)",
            "Princess Elisabeth Station (Belgium)"
        ]),
        "Arctic Research": CountryData(flag: "❄️", cities: [
            "Alert, Nunavut (Canada)",
            "Eureka, Nunavut (Canada)",
            "Ny-Ålesund (Norway)",
            "Longyearbyen (Norway)",
            "Barrow/Utqiaġvik (US)",
            "Qaanaaq (Greenland)",
            "Tiksi (Russia)",
            "Pevek (Russia)"
        ])
    ]
]
