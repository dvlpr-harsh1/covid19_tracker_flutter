# 🦠 COVID-19 Live Tracker App (Flutter)

A Flutter application that tracks global and country-specific COVID-19 statistics using live data APIs from [disease.sh](https://disease.sh/).

---

## 📱 Features
- Real-time global stats (infected, deaths, recovered)
- Country-wise stats with flags
- REST API integration using `http` package
- Dynamic UI with loading states
- Model-based JSON parsing (`CovidCountry`, `CovidInfectedPeoples`)
- Detail screen with reusable widget for each stat
- Clean and responsive UI

---

## 🌐 API Source
- Base URL: `https://disease.sh/v3/covid-19/`
- Global stats: `https://disease.sh/v3/covid-19/all`
- Country-wise stats: `https://disease.sh/v3/covid-19/countries`

---

## 📦 Packages Used
- `http`
- `flutter_spinkit` *(optional for loading animations)*
- `intl`

---

## 🛠️ How It Works
- Makes GET requests to public APIs via `AppUrl` class
- Parses global data into `CovidInfectedPeoples`
- Parses country list into `CovidCountry` with nested `CountryInfo`
- Displays real-time stats in a `ListView` with flags
- On tap, navigates to detailed screen with:
  - Total cases
  - Today’s recovery
  - Critical & death counts
  - Country location (latitude & longitude)

---

## 💡 Code Highlights
- Safe `double` parsing using `(json['key'] as num?)?.toDouble()`
- `FutureBuilder` with fallback for empty/error states
- Stateless custom widget `CustomViewWidget` for info rows
- Navigation using `MaterialPageRoute`
- API separation using `AppUrl` constants

---

## 🔍 Screenshots
_Add app screenshots here (home list, detail screen, etc.)_

---

## 🧑‍💻 Author
**Harish Rajput**  
- [GitHub](https://github.com/dvlpr-harsh1)  
- [Portfolio](http://portfolio-9730.web.app)  
- [LinkedIn](https://linkedin.com/in/harish-rajput93072)
