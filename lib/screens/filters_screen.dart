import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/providers/myprovider.dart';
import 'package:provider/provider.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  Widget _buildSwitchListTile(
    String title,
    String description,
    bool currentValue,
    Function? updateValue(bool),
  ) {
    return Wrap(
      children: [
        CheckboxListTile(
          activeColor: Color(0xFF9e2a2b),
          
          
          
          title: Text(title,),
          value: currentValue,
          subtitle: Text(
            description,
            style: TextStyle(fontSize: 12,color:Colors.grey),
          ),
          onChanged: updateValue,
        ),
        Divider()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, bool?> currentFilters =
        Provider.of<promeal>(context, listen: true).filters;

    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selection.',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildSwitchListTile(
                  'Gluten-free',
                  'Only include gluten-free meals.',
                  currentFilters['gluten']!,
                  (newValue) {
                    setState(
                      () {
                        currentFilters['gluten'] = newValue;
                      },
                    );
                    Provider.of<promeal>(context, listen: false).setFilters();
                    return null;
                  },
                ),
                _buildSwitchListTile(
                    'Lactose-free',
                    'Only include lactose-free meals.',
                    currentFilters['lactose']!, (newValue) {
                  setState(
                    () => {currentFilters['lactose'] = newValue},
                  );
                  Provider.of<promeal>(context, listen: false).setFilters();
                  return null;
                }),
                _buildSwitchListTile(
                  'Vegetarian',
                  'Only include vegetarian meals.',
                  currentFilters['vegetarian']!,
                  (newValue) {
                    setState(
                      () {
                        currentFilters['vegetarian'] = newValue;
                      },
                    );
                    Provider.of<promeal>(context, listen: false).setFilters();
                    return null;
                  },
                ),
                _buildSwitchListTile(
                  'Vegan',
                  'Only include vegan meals.',
                  currentFilters['vegan']!,
                  (newValue) {
                    setState(
                      () {
                        currentFilters['vegan'] = newValue;
                      },
                    );
                    Provider.of<promeal>(context, listen: false).setFilters();
                    return null;
                  },
                ),
                _buildSwitchListTile(
                  'No-Eggs',
                  'Only include No-Eggs meals.',
                  currentFilters['egg']!,
                  (newValue) {
                    setState(
                      () {
                        currentFilters['egg'] = newValue;
                      },
                    );
                    Provider.of<promeal>(context, listen: false).setFilters();
                    return null;
                  },
                ),
                _buildSwitchListTile(
                  'No-Milk',
                  'Only include No-Milk meals.',
                  currentFilters['milk']!,
                  (newValue) {
                    setState(
                      () {
                        currentFilters['milk'] = newValue;
                      },
                    );
                    Provider.of<promeal>(context, listen: false).setFilters();
                    return null;
                  },
                ),
                _buildSwitchListTile(
                  'No-Fich',
                  'Only include No-Fich meals.',
                  currentFilters['fish']!,
                  (newValue) {
                    setState(
                      () {
                        currentFilters['fish'] = newValue;
                      },
                    );
                    Provider.of<promeal>(context, listen: false).setFilters();
                    return null;
                  },
                ),
                _buildSwitchListTile(
                  'No-Soy',
                  'Only include No-Soy meals.',
                  currentFilters['soy']!,
                  (newValue) {
                    setState(
                      () {
                        currentFilters['soy'] = newValue;
                      },
                    );
                    Provider.of<promeal>(context, listen: false).setFilters();
                    return null;
                  },
                ),
                _buildSwitchListTile(
                  'No-Wheat',
                  'Only include gluten-free meals.',
                  currentFilters['wheat']!,
                  (newValue) {
                    setState(
                      () {
                        currentFilters['wheat'] = newValue;
                      },
                    );
                    Provider.of<promeal>(context, listen: false).setFilters();
                    return null;
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
