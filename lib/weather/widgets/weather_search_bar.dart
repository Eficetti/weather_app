import 'package:flutter/material.dart';

class WeatherSearchBar extends StatelessWidget {
  const WeatherSearchBar({required this.searchController, super.key});

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 64),
            child: Text(
              'Weather',
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            height: 30,
            width: 370,
            padding: const EdgeInsets.only(left: 20),
            child: SearchBar(
              leading: const Icon(Icons.search, color: Colors.grey),
              controller: searchController,
              hintText: 'Search for a city or airport',
              hintStyle: MaterialStateProperty.all(
                const TextStyle(
                  color: Colors.grey,
                ),
              ),
              backgroundColor: MaterialStateProperty.all(
                const Color(0xFF2E335A),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
