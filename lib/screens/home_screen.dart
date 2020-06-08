import 'package:flutter/material.dart';
import 'package:applojavirtual/tabs/home_tab.dart';
import 'package:applojavirtual/tabs/orders_tab.dart';
import 'package:applojavirtual/tabs/places_tab.dart';
import 'package:applojavirtual/tabs/products_tab.dart';
import 'package:applojavirtual/widgets/cart_button.dart';
import 'package:applojavirtual/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
          floatingActionButton: CartButton(),
        ),
        Scaffold(
          appBar: AppBar(
           // backgroundColor: Color.fromARGB(150, 51, 204, 51),
            title: Text("Produtos"),

            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: ProductsTab(),
          floatingActionButton: CartButton(),
        ),
        Scaffold(
          appBar: AppBar(
           // backgroundColor: Color.fromARGB(150, 51, 204, 51),
            title: Text("Lojas"),
            centerTitle: true,
          ),
          body: PlacesTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
           // backgroundColor: Color.fromARGB(150, 51, 204, 51),
            title: Text("Meus Pedidos"),
            centerTitle: true,
          ),
          body: OrdersTab(),
          drawer: CustomDrawer(_pageController),
        )
      ],
    );
  }
}
