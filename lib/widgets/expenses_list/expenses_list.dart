import 'package:flutter/material.dart';

import 'package:expense_tracker/widgets/expenses_list/expenses_item.dart';
import 'package:expense_tracker/models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expenses, required this.onRemoveExpense});

  final List<Expense> expenses;
  final void Function(Expense expnse) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(expenses[index]),
        background: Card(
          child: Container(
            margin: const EdgeInsetsDirectional.symmetric(horizontal: 16),
            child: Row(
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color:
                        Theme.of(context).colorScheme.error.withOpacity(0.75),
                    borderRadius: const BorderRadius.horizontal(
                      left: Radius.circular(8),
                      right: Radius.circular(8),
                    ),
                  ),
                ),
                const Spacer(),
                const Icon(Icons.delete)
              ],
            ),
          ),
        ),
        onDismissed: (direction) {
          onRemoveExpense(expenses[index]);
        },
        child: ExpenseItem(
          expenses[index],
        ),
      ),
    );
  }
}
