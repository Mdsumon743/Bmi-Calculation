import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controllers/BMIController.dart';
import 'SecBtn.dart';

class WeightSelector extends StatelessWidget {
  const WeightSelector({super.key});

  @override
  Widget build(BuildContext context) {
    BMIConroller bmiConroller = Get.put(BMIConroller());
    return Container(
      padding:const  EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      height: 200,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Weight",
                style: TextStyle(
                  fontSize: 15,
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                ),
              ),
            ],
          ),
        const   SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "${bmiConroller.weight.value}",
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SecBtn(
                onpress: () {
                  bmiConroller.weight.value++;
                },
                icon: Icons.add,
              ),
              SecBtn(
                onpress: () {
                  bmiConroller.weight.value--;
                },
                icon: Icons.minimize,
              )
            ],
          ),
        ],
      ),
    );
  }
}
