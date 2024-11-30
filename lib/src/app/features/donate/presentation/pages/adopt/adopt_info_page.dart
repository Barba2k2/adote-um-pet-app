import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../routes.dart';

part 'widgets/choose_pet_type_row.dart';
part 'widgets/choose_pet_gender_row.dart';
part 'widgets/adoption_type_row.dart';

class AdoptInfoPage extends StatefulWidget {
  const AdoptInfoPage({super.key});

  @override
  State<AdoptInfoPage> createState() => _AdoptInfoPageState();
}

class _AdoptInfoPageState extends State<AdoptInfoPage> {
  final _locationPetController = TextEditingController();
  bool isButtonSelected = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(),
      drawer: CustomDrawerDS(
        userName: 'Mariana Oliveira',
        userLocation: 'Sao Paulo - SP',
        userImage: AppImages.catChoose,
        onAdoptTap: () => router.go('/adopt-info'),
        onAccountTap: () {},
        onDonateTap: () {},
        onPetinhaTap: () {},
        onMessagesTap: () {},
        onLogoutTap: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: 'Bem vinda, ',
                style: theme.textTheme.headlineSmall,
                children: [
                  TextSpan(
                    text: 'Mariana!',
                    style: theme.textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
            Text(
              'Encontre o seu amigo peludo.',
              style: theme.textTheme.labelSmall,
            ),
            const Gap(26),
            _ChoosePetTypeRow(),
            const Gap(26),
            _ChooseAdoptionTypeRow(),
            const Gap(26),
            _AdoptionTypeRow(),
            const Gap(26),
            Container(
              width: double.infinity,
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.primaryColor,
              ),
              child: const Center(
                child: Text('Slider'),
              ),
            ),
            const Gap(26),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Achar pet perto de sua localização',
                  style: theme.textTheme.titleSmall,
                ),
                const Gap(8),
                TextInputGrayDs(
                  label: 'Sua localização',
                  controller: _locationPetController,
                ),
              ],
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: PrimaryButtonDs(
                onPressed: () {},
                title: 'Adote seu pet',
                height: 36,
                width: double.maxFinite,
                borderRadius: 10,
              ),
            ),
            const Gap(46),
          ],
        ),
      ),
    );
  }
}
