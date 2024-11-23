import 'package:flight_app/customLibs/styleMedia/appStyle.dart';
import 'package:flight_app/customLibs/widgets/appLayoutBuilderWidget.dart';
import 'package:flight_app/customLibs/widgets/bigCircle.dart';
import 'package:flight_app/customLibs/widgets/bigDot.dart';
import 'package:flight_app/customLibs/widgets/textStyleFourth.dart';
import 'package:flight_app/customLibs/widgets/textStyleThird.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.83,
      height: 289,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        padding: const EdgeInsets.symmetric(horizontal: 15),

        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21)
                )
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const TextStyleThird(text: "NYC"),
                      Expanded(child: Container()),

                      BigDot(),

                      Expanded(
                          child: Stack(
                            children: [
                              const SizedBox(
                                height: 24,
                                child: AppLayoutBuilderWidget(randomDivider: 6),
                              ),
                              SizedBox(
                                child: Center(
                                  child: Transform.rotate(
                                      angle: 1.6,
                                      child: const Icon(
                                        Icons.local_airport_rounded,
                                        color: Colors.white,
                                      )),
                                ),
                              )
                            ],
                          )),

                      BigDot(),

                      Expanded(child: Container()),
                      const TextStyleThird(text: "LDN"),
                    ],
                  ),

                  const SizedBox(height: 3,),

                  Row(
                    children: [
                      const SizedBox(
                          width: 100, child: TextStyleFourth(text: "New-York")),
                      Expanded(child: Container()),
                      const TextStyleFourth(text: "8H 30M"),
                      Expanded(child: Container()),
                      const SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: "London", align: TextAlign.end,),
                      )
                    ],
                  )
                ],
              ),
            ),

            Container(
              color: AppStyles.ticketOrange,
              child: const Row(
                children: [
                  BigCircle(
                    isRight: false,
                  ),
                  Expanded(
                      child: AppLayoutBuilderWidget(
                        randomDivider: 16,
                        width: 8,
                      )),
                  BigCircle(
                    isRight: true,
                  ),
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketOrange,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Text("1 May",
                              style: AppStyles.headLineStyle3.copyWith(
                                color: Colors.white,
                              )),
                          Text("1 May",
                              style: AppStyles.headLineStyle3.copyWith(
                                color: Colors.white,
                              )),
                        ],
                      )


                      /*Expanded(child: Container()),
                      Text("8:00 AM",
                          style: AppStyles.headLineStyle3.copyWith(
                            color: Colors.white,
                          )),
                      Expanded(child: Container()),
                      Text("23",
                          style: AppStyles.headLineStyle3.copyWith(
                            color: Colors.white,
                          ))*/
                    ],
                  ),
                  const SizedBox(height: 3,),
                  /*Row(
                    children: [
                      Text(
                        "Date",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "Departure Time",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "Number",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      )
                    ],
                  )*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
