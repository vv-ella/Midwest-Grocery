import 'package:flutter/material.dart';

class OrdersScreen extends StatefulWidget {
  final List<Map<String, dynamic>> orders;

  const OrdersScreen({
    Key? key,
    required this.orders,
  }) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  late List<Map<String, dynamic>> orders;

  @override
  void initState() {
    super.initState();
    // Mock data if none provided
    orders = widget.orders.isNotEmpty
        ? widget.orders
        : [
            {
              'customer': 'vera ella',
              'method': 'Delivery - Cash on Delivery',
              'status': 'Pending',
              'cancellable': true,
            },
          ];
  }

  void cancelOrder(int index) {
    setState(() {
      orders[index]['status'] = 'Cancelled';
      orders[index]['cancellable'] = false;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Order has been cancelled.'),
        backgroundColor: Colors.red,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orders'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Customer: ${order['customer']}',
                    style:
                        const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                Text('Method: ${order['method']}',
                    style: const TextStyle(fontSize: 14, color: Colors.grey)),
                const SizedBox(height: 20),
                OrderStatusWidget(status: order['status']),
                const SizedBox(height: 10),
                if (order['cancellable'] && order['status'] != 'Delivered')
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: () => cancelOrder(index),
                    icon: const Icon(Icons.cancel),
                    label: const Text('Cancel Order'),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class OrderStatusWidget extends StatelessWidget {
  final String status;

  const OrderStatusWidget({Key? key, required this.status}) : super(key: key);

  int getStepStatus(String currentStatus) {
    switch (currentStatus) {
      case 'Pending':
        return 1;
      case 'Processing':
        return 2;
      case 'Delivered':
        return 3;
      case 'Cancelled':
        return 0;
      default:
        return 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentStep = getStepStatus(status);
    final List<String> steps = ['Pending', 'Processing', 'Delivered'];

    if (status == 'Cancelled') {
      return const Text(
        'Order Cancelled',
        style: TextStyle(color: Colors.red, fontSize: 16),
      );
    }

    return Column(
      children: List.generate(steps.length, (index) {
        return OrderStep(
          stepNumber: index + 1,
          label: steps[index],
          isActive: (index + 1) <= currentStep,
        );
      }),
    );
  }
}

class OrderStep extends StatelessWidget {
  final int stepNumber;
  final String label;
  final bool isActive;

  const OrderStep({
    Key? key,
    required this.stepNumber,
    required this.label,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color circleColor = isActive ? Colors.green : Colors.grey;
    final Color textColor = isActive ? Colors.black : Colors.grey;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: 12,
              backgroundColor: circleColor,
              child: Text(
                '$stepNumber',
                style: const TextStyle(fontSize: 12, color: Colors.white),
              ),
            ),
            if (stepNumber != 3)
              Container(
                height: 40,
                width: 2,
                color: Colors.grey[400],
              ),
          ],
        ),
        const SizedBox(width: 10),
        Padding(
          padding: const EdgeInsets.only(top: 2.0),
          child: Text(
            label,
            style: TextStyle(fontSize: 16, color: textColor),
          ),
        ),
      ],
    );
  }
}