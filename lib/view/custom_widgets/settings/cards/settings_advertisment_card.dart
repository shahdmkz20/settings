import 'package:articles/model/settings/training_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/colors.dart';
import 'settings_job_image_contanier.dart';

class SettingsAdvertismentCard extends StatelessWidget {
  final void Function()? onTap;
  final TrainingModel trainingModel;
  const SettingsAdvertismentCard(
      {super.key, required this.trainingModel, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: Get.height * 0.4,
        margin: EdgeInsets.only(bottom: Get.height * 0.04),
        decoration: BoxDecoration(
            color: AppColors.primaryCardColor,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(6), topRight: Radius.circular(6)),
            border: Border.all(color: AppColors.colorIcon.withOpacity(0.4))),
        child: Column(
          children: [
            SettingsImageContainerWithStack(
                withBottomMargin: false,
                radius: 5,
                imageUrl: trainingModel.imageUrl),
            Container(
                height: Get.height * 0.09,
                margin: const EdgeInsets.only(top: 5),
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      textAlign: TextAlign.start,
                      trainingModel.title,
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontSize: 15),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const TextWithStyle(text: 'التكلفة: '),
                        TextWithStyle(
                          text: trainingModel.details[2],
                        ),
                        const TextWithStyle(text: ' ل.س. '),
                        const Spacer(),
                        const InkWell(
                            child: TextWithStyle(
                          text: 'التفاصيل',
                          underLined: true,
                        )),
                      ],
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class TextWithStyle extends StatelessWidget {
  final String text;
  final bool underLined;
  const TextWithStyle({super.key, required this.text, this.underLined = false});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.displayMedium!.copyWith(
          color: AppColors.textGreyColor,
          decoration: underLined ? TextDecoration.underline : null),
    );
  }
}

class SettingsAdvertismentList extends StatelessWidget {
  final List<TrainingModel> trainingList;
  final Function(TrainingModel train) onTap;
  const SettingsAdvertismentList(
      {super.key, required this.trainingList, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.8,
      child: ListView.builder(
          itemCount: trainingList.length,
          itemBuilder: (context, index) {
            return SettingsAdvertismentCard(
              trainingModel: trainingList[index],
              onTap: () {
                onTap(trainingList[index]);
              },
            );
          }),
    );
  }
}
