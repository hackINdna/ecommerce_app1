import 'package:ecommerce_app1/Models/meals.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app1/dummy_data.dart';

class MealsPage extends StatelessWidget {

  static const routename = '/mealsPage';

  @override
  Widget build(BuildContext context) {

    final result = ModalRoute.of(context)!.settings.arguments as Map;
    final id = result['id'];

    final newData = DUMMY_MEALS.firstWhere((meals) => meals.id == id);




    return Scaffold(
      appBar: AppBar(
        title: Text(newData.title)
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0,0,0,10),
          child: Column(
            children: <Widget>[
              Container(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  newData.imageUrl,
                  fit: BoxFit.cover,
                  ),
              ),
              const SizedBox(height: 10.0),
              basicTitleSection('Ingredients'),
              const SizedBox(height: 20.0),
              basicContainer(ListView.builder(
                itemCount: newData.ingredients.length,
                itemBuilder: (context, index){
                  return Card(
                    color: Colors.orange[100],
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        newData.ingredients[index],
                      ),
                    ),
                  );
                },
              )),
              const SizedBox(height: 20.0),
              basicTitleSection('Steps'),
              const SizedBox(height: 20.0),
              basicContainer(ListView.builder(
                itemCount: newData.steps.length,
                itemBuilder: (context, index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.orange[400],
                      child: Text(
                        '# ${index + 1}',
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    title: Text(
                      newData.steps[index],
                    ),
                  );
                },
              ),),
            ],
          ),
        ),
      ),
    );
  }

  Widget basicContainer(child) {
    return Container(
          padding: const EdgeInsets.symmetric(
            vertical: 4.0,
            horizontal: 4.0,
          ),
          height: 150,
          width: 300,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.shade300,
            ),
            borderRadius: BorderRadius.circular(10)
          ),
          child: child,
        );
  }

  

  Widget basicTitleSection(String text) {
    return Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 23.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
  }
}
