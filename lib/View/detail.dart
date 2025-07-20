import 'package:covid_detail_app/Model/covid_contries.dart';
import 'package:covid_detail_app/Widgets/custom_view_widget.dart';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  CovidCountry country;
  Detail({required this.country, super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    CovidCountry country = widget.country;
    return Scaffold(
      appBar: AppBar(
        title: Text(country.country ?? 'Details'),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(16),
                child: Image.network(
                  country.countryInfo?.flag ?? '',
                  fit: BoxFit.cover,
                  height: 200,
                  width: double.infinity,
                  errorBuilder: (context, error, stackTrace) =>
                      Icon(Icons.flag_outlined, size: 100, color: Colors.grey),
                ),
              ),
              SizedBox(height: 70),

              CustomViewWidget(
                label: "Total Cases:",
                count: country.cases.toString(),
              ),
              CustomViewWidget(
                label: "Active Cases:",
                count: country.active.toString(),
              ),
              CustomViewWidget(
                label: "Recovered:",
                count: country.recovered.toString(),
                color: Colors.greenAccent,
              ),
              CustomViewWidget(
                label: "Recovered:",
                count: country.todayRecovered.toString(),
                color: Colors.greenAccent,
              ),
              CustomViewWidget(
                label: "Critical Cases:",
                count: country.critical.toString(),
                color: Colors.redAccent,
              ),

              CustomViewWidget(
                label: "Deaths:",
                count: country.deaths.toString(),
                color: Colors.redAccent,
              ),
              CustomViewWidget(
                label: "Latitude:",
                count: country.countryInfo!.lat.toString(),
              ),
              CustomViewWidget(
                label: "Longitude:",
                count: country.countryInfo!.long.toString(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
