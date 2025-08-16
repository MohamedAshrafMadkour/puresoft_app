class StepData {
  final String title;
  final String subtitle;

  const StepData({required this.title, required this.subtitle});

  static const List<StepData> steps = [
    StepData(title: 'Delivered', subtitle: 'Estimated for 10 September, 2021'),
    StepData(
      title: 'Out for delivery',
      subtitle: 'Estimated for 10 September, 2021',
    ),
    StepData(
      title: 'Order shipped',
      subtitle: 'Estimated for 10 September, 2021',
    ),
    StepData(title: 'Confirmed', subtitle: 'Your order has been confirmed'),
    StepData(title: 'Order Placed', subtitle: 'We have received your order'),
  ];
}
