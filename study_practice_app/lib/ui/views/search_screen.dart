import 'package:flutter/material.dart';
import 'package:study_practice_app/ui/utils/utils.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    List<String> recent = [
      "Education Fun & Always Gather Knowledge",
      "Education as a Human Right",
      "The Role of Education in Empowering...",
      "Business and Marketing Edu Platform",
      "Education Rights for Children",
      "The Impact of Education on Social...",
      "Education and Gender Equality",
    ];

    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 45,
          child: TextField(
            controller: searchController,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              hintText: 'Search...',
              prefixIcon: const Icon(Icons.search),
              suffixIcon: IconButton(
                icon: const Icon(Icons.close, size: 14),
                onPressed: () {
                  searchController.clear();
                },
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 10),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            ),
          ),
        ),
        toolbarHeight: 80,
        leading: IconButton(
          icon: const Icon(
            Icons.navigate_before,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Recent",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 10),
            ...recent.map((item) => ListTile(
                  title: Text(
                    item,
                    style: const TextStyle(fontSize: 14, color: colorGrey),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  trailing: const Icon(Icons.close, size: 15, color: colorGrey),
                )),
          ],
        ),
      ),
    );
  }
}
