import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_search_delegate.dart';

class SearchAppBar extends StatefulWidget {
  const SearchAppBar({super.key});

  @override
  State<SearchAppBar> createState() => _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {
  TextEditingController searchController = TextEditingController();
  Icon icon = Icon(Icons.search);
  Color color = const Color.fromRGBO(217, 4, 41, 1);
  @override
  Widget build(BuildContext context) {
    return Container(
          height: 40,
          // margin: const EdgeInsets.only(bottom: 20),
          padding: const EdgeInsets.only(right: 20.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    offset: const Offset(0, 5),
                    blurRadius: 5)
              ]),
          child: TextField(
              autocorrect: false,
              controller: searchController,
              onSubmitted: (value) {
                showSearch(context: context, delegate: CustomSearchDelegate());
              },
              onEditingComplete: () {
                icon = Icon(Icons.search);
                FocusScope.of(context).unfocus();
                setState(() {});
              },
              onTapOutside: (event) {
                icon = Icon(Icons.search);
                FocusScope.of(context).unfocus();
              },
              onTap: () {
                showSearch(context: context, delegate: CustomSearchDelegate());
                icon = Icon(Icons.search, color: color);
                setState(() {});
              },
              // keyboardType: '',
              // obscureText: 'asd',
              decoration: InputDecoration(
                  prefixIcon: icon,
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                  hintText: 'Buscar Servicio')),
        );
  }
}
