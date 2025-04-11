import 'package:api_fetch_data/data/provider/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<void> _refreshData() async {
    await Provider.of<PostProvider>(context, listen: false).fatchUsers();
  }

  @override
  void initState() {
    super.initState();
    _refreshData();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PostProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fetch Data',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey.withOpacity(0.2),
      ),
      body: provider.isLoading
          ? const Center(child: CircularProgressIndicator())
          : RefreshIndicator(
              onRefresh: _refreshData,
              child: ListView.separated(
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: provider.posts.length,
                itemBuilder: (context, index) {
                  final post = provider.posts[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.blueGrey.withOpacity(0.2),
                          child: Text(
                            post.id.toString(),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ),
                        title: Text(post.name.toString()),
                        subtitle: Text(post.email.toString()),
                        trailing: const Badge(
                          label: Text('new'),
                          backgroundColor: Colors.blue,
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(height: 3),
              ),
            ),
    );
  }
}
