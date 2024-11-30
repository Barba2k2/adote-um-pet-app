part of '../adopt_info_page.dart';

class _ChooseAdoptionTypeRow extends StatefulWidget {
  @override
  State<_ChooseAdoptionTypeRow> createState() => _ChooseAdoptionTypeRowState();
}

class _ChooseAdoptionTypeRowState extends State<_ChooseAdoptionTypeRow> {
  Map<String, bool> buttonStates = {
    'macho': false,
    'femea': false,
    'ambos': false,
  };

  void toggleSelection(String selected) {
    setState(() {
      buttonStates.updateAll((key, value) => false);

      buttonStates[selected] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Qual sexo?',
          style: theme.textTheme.titleSmall,
        ),
        const Gap(8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SelectableButtonDs(
                width: 100,
                height: 30,
                isSelected: buttonStates['macho']!,
                onPressed: () => toggleSelection('macho'),
                title: 'Macho',
              ),
              const Gap(10),
              SelectableButtonDs(
                width: 100,
                height: 30,
                isSelected: buttonStates['femea']!,
                onPressed: () => toggleSelection('femea'),
                title: 'Fêmea',
              ),
              const Gap(10),
              SelectableButtonDs(
                width: 100,
                height: 30,
                isSelected: buttonStates['ambos']!,
                onPressed: () => toggleSelection('ambos'),
                title: 'Ambos',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
