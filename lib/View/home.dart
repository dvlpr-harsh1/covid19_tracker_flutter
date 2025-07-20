import 'dart:convert';
import 'package:covid_detail_app/Model/covid_contries.dart';
import 'package:covid_detail_app/View/detail.dart';
import 'package:covid_detail_app/utils/app_url.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Future<List<CovidCountry>> contries;
  Future<List<CovidCountry>> fetchContries() async {
    final response = await http.get(Uri.parse(AppUrl.countries));
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);

      return data.map((json) => CovidCountry.fromJson(json)).toList();
    } else {
      return [];
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    contries = fetchContries();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('All Contries')),
      body: FutureBuilder(
        future: contries,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(color: Colors.white),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                snapshot.error.toString(),
                style: TextStyle(color: Colors.white),
              ),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(
              child: Text(
                'No Data Found',
                style: TextStyle(color: Colors.white),
              ),
            );
          }
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              var country = snapshot.data![index];
              return ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => Detail(country: country)),
                  );
                },
                leading: Image.network(
                  country.countryInfo!.flag.toString(),
                  // country['countryInfo']["flag"].toString(),
                  width: 40,
                  height: 40,
                  fit: BoxFit.contain,
                ),
                title: Text(
                  country.country.toString(),
                  // country['country'].toString(),
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  country.cases.toString(),
                  // country['cases'].toString(),
                  style: TextStyle(color: Colors.white),
                ),
                // trailing: Text(
                //   country['countryInfo']['_id'].toString(),
                //   style: TextStyle(color: Colors.white),
                // ),
              );
            },
          );
        },
      ),
    );
  }
}
