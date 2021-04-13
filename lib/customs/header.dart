import 'package:examplefinanceui/customs/expense_chart.dart';
import 'package:examplefinanceui/models/expense.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Header extends StatelessWidget {
  static List<charts.Series<Expense, String>> _series = [
    charts.Series<Expense, String>(
        id: "Expense",
        domainFn: (Expense expense, _) => expense.category,
        measureFn: (Expense expense, _) => expense.value,
        labelAccessorFn: (Expense expense, _) => '\$${expense.value}',
        colorFn: (Expense expense, _) =>
            charts.ColorUtil.fromDartColor(expense.color),
        data: [
          Expense("Business", 149.99, Color(0xff40bad5)),
          Expense("Meals", 143.40, Color(0xffe8505b)),
          Expense("Gifs", 49.99, Color(0xfffe91ca)),
          Expense("Gaming", 27.99, Color(0xfff6d743)),
          Expense("Entertaintment", 34.99, Color(0xfff57b51))
        ]),
  ];
  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final mediaQuery = MediaQuery.of(context);

    return Container(
      width: double.infinity,
      height: mediaQuery.size.height * .4,
      color: primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 150,
                child: ExpenseChart(
                  seriesList: _series,
                  animate: true,
                )),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    side: BorderSide(width: 2, color: Colors.white),
                  ),
                  onPressed: () {},
                  child: Container(
                    width: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.playlist_add,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text("Add Transaction",
                            style: TextStyle(
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                ),
                TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.teal,
                      backgroundColor: Colors.white,
                      //onPrimary: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(18))),
                    ),
                    onPressed: () {},
                    child: Container(
                      width: 90,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Reports",
                              style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.bold)),
                          Icon(Icons.navigate_next, color: Colors.blueGrey),
                        ],
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
