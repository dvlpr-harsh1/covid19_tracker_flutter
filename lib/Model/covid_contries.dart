class CovidCountry {
  int? updated;
  String? country;
  CountryInfo? countryInfo;
  int? cases;
  int? todayCases;
  int? deaths;
  int? todayDeaths;
  int? recovered;
  int? todayRecovered;
  int? active;
  int? critical;
  double? casesPerOneMillion;
  double? deathsPerOneMillion;
  int? tests;
  double? testsPerOneMillion;
  int? population;
  String? continent;
  int? oneCasePerPeople;
  int? oneDeathPerPeople;
  int? oneTestPerPeople;
  double? activePerOneMillion;
  double? recoveredPerOneMillion;
  double? criticalPerOneMillion;

  CovidCountry({
    this.updated,
    this.country,
    this.countryInfo,
    this.cases,
    this.todayCases,
    this.deaths,
    this.todayDeaths,
    this.recovered,
    this.todayRecovered,
    this.active,
    this.critical,
    this.casesPerOneMillion,
    this.deathsPerOneMillion,
    this.tests,
    this.testsPerOneMillion,
    this.population,
    this.continent,
    this.oneCasePerPeople,
    this.oneDeathPerPeople,
    this.oneTestPerPeople,
    this.activePerOneMillion,
    this.recoveredPerOneMillion,
    this.criticalPerOneMillion,
  });

  CovidCountry.fromJson(Map<String, dynamic> json) {
    updated = json['updated'];
    country = json['country'];
    countryInfo = json['countryInfo'] != null
        ? CountryInfo.fromJson(json['countryInfo'])
        : null;
    cases = json['cases'];
    todayCases = json['todayCases'];
    deaths = json['deaths'];
    todayDeaths = json['todayDeaths'];
    recovered = json['recovered'];
    todayRecovered = json['todayRecovered'];
    active = json['active'];
    critical = json['critical'];

    // Safe double parsing
    casesPerOneMillion = (json['casesPerOneMillion'] as num?)?.toDouble();
    deathsPerOneMillion = (json['deathsPerOneMillion'] as num?)?.toDouble();
    tests = json['tests'];
    testsPerOneMillion = (json['testsPerOneMillion'] as num?)?.toDouble();
    population = json['population'];
    continent = json['continent'];
    oneCasePerPeople = json['oneCasePerPeople'];
    oneDeathPerPeople = json['oneDeathPerPeople'];
    oneTestPerPeople = json['oneTestPerPeople'];
    activePerOneMillion = (json['activePerOneMillion'] as num?)?.toDouble();
    recoveredPerOneMillion = (json['recoveredPerOneMillion'] as num?)
        ?.toDouble();
    criticalPerOneMillion = (json['criticalPerOneMillion'] as num?)?.toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['updated'] = updated;
    data['country'] = country;
    if (countryInfo != null) {
      data['countryInfo'] = countryInfo!.toJson();
    }
    data['cases'] = cases;
    data['todayCases'] = todayCases;
    data['deaths'] = deaths;
    data['todayDeaths'] = todayDeaths;
    data['recovered'] = recovered;
    data['todayRecovered'] = todayRecovered;
    data['active'] = active;
    data['critical'] = critical;
    data['casesPerOneMillion'] = casesPerOneMillion;
    data['deathsPerOneMillion'] = deathsPerOneMillion;
    data['tests'] = tests;
    data['testsPerOneMillion'] = testsPerOneMillion;
    data['population'] = population;
    data['continent'] = continent;
    data['oneCasePerPeople'] = oneCasePerPeople;
    data['oneDeathPerPeople'] = oneDeathPerPeople;
    data['oneTestPerPeople'] = oneTestPerPeople;
    data['activePerOneMillion'] = activePerOneMillion;
    data['recoveredPerOneMillion'] = recoveredPerOneMillion;
    data['criticalPerOneMillion'] = criticalPerOneMillion;
    return data;
  }
}

class CountryInfo {
  int? iId;
  String? iso2;
  String? iso3;
  double? lat;
  double? long;
  String? flag;

  CountryInfo({this.iId, this.iso2, this.iso3, this.lat, this.long, this.flag});

  CountryInfo.fromJson(Map<String, dynamic> json) {
    iId = json['_id'];
    iso2 = json['iso2'];
    iso3 = json['iso3'];
    lat = (json['lat'] as num?)?.toDouble();
    long = (json['long'] as num?)?.toDouble();
    flag = json['flag'];
  }
   Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = iId;
    data['iso2'] = iso2;
    data['iso3'] = iso3;
    data['lat'] = lat;
    data['long'] = long;
    data['flag'] = flag;
    return data;
  }
}
