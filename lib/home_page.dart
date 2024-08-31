import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF10397B),
        title: const Text(
          'Pesquisar',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          buildContainerPropaganda(),
          buildCardPacote(),
        ],
      ),
    );
  }

  buildContainerPropaganda() {
    return Container(
      margin: const EdgeInsets.all(16),
      color: const Color(0xFFAD00D5), // Colors.deepPurple,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              children: [
                const Text(
                  'Top destinos mais buscados',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  'Corre que tá rolando muita promoção',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'EU QUERO!',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Image.network(
            'https://img.freepik.com/fotos-gratis/casal-multirracial-com-bola-posando-na-praia_23-2148137988.jpg',
            height: 180,
          ),
        ],
      ),
    );
  }

  buildCardPacote() {
    return InkWell(
      child: Card(
          color: Colors.white,
          margin: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                  'https://www.viagenscinematograficas.com.br/wp-content/uploads/2019/03/Cancun-Melhores-Praias-Riviera-Maya-Capa.jpg'),
              const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pacote Cancún 2024',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Aéreo + Hotel All inclusive'),
                    Row(
                      children: [
                        Icon(Icons.wb_sunny_outlined, size: 20),
                        SizedBox(width: 4),
                        Text('5 Diárias'),
                        SizedBox(width: 8),
                        Icon(Icons.person, size: 20),
                        SizedBox(width: 4),
                        Text('1 Pessoa'),
                      ],
                    ),
                    Text('A partir de R\$ 6816'),
                    Text(
                      'R\$ 3.749',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFD6C00),
                      ),
                    ),
                    Text(
                      'Cancelamento Grátis',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.green),
                    ),
                  ],
                ),
              ),
            ],
          )),
      onTap: () {
        // Navegar para DetailPage
      },
    );
  }
}
