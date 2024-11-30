part of '../adopt_info_page.dart';

class _AdoptionTypeRow extends StatefulWidget {
  @override
  State<_AdoptionTypeRow> createState() => _AdoptionTypeRowState();
}

class _AdoptionTypeRowState extends State<_AdoptionTypeRow> {
  Map<String, bool> buttonStates = {
    'temporario': false,
    'permanente': false,
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
          'Tipo de adoção',
          style: theme.textTheme.titleSmall,
        ),
        const Gap(8),
        Row(
          children: [
            SelectableButtonDs(
              width: 100,
              height: 30,
              isSelected: buttonStates['temporario']!,
              onPressed: () => toggleSelection('temporario'),
              title: 'Temporário',
            ),
            const Gap(10),
            SelectableButtonDs(
              width: 100,
              height: 30,
              isSelected: buttonStates['permanente']!,
              onPressed: () => toggleSelection('permanente'),
              title: 'Permanente',
            ),
          ],
        ),
      ],
    );
  }
}
