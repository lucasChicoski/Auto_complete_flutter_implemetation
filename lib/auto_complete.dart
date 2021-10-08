import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AutocompleteBasicExample extends StatelessWidget {
  const AutocompleteBasicExample({Key? key}) : super(key: key);

  static const List<String> _kOptions = <String>[
    'aardvark',
    'bobcat',
    'chameleon',
  ];

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      // Define o auto complete como um widget
      optionsBuilder: (TextEditingValue textEditingValue) {
        //configração da cortina de opções da pesquisa
        if (textEditingValue.text == '') {
          // caso o texto digitado for vaizo, será retornado uma lista vazia
          return const Iterable<
              String>.empty(); //O iterable interage com um List<>
        }
        //Caso Contrário será retornado uma lista com a letra ou palavra digiada
        return _kOptions.where((String option) {
          return option.contains(textEditingValue.text.toLowerCase());
        });
      },
      //A opção selecionada será imprimida
      onSelected: (String selection) {
        print('You just selected $selection');
      },
      // Nessa configuração, é possível editar alguns campos
      fieldViewBuilder: (
        BuildContext context,
        TextEditingController textEditingController, //configuração para aparecer as opções de pesquisa
        FocusNode focusNode,
        onSelected,
      ) {
        // retorna um widget, no caso um TextField
        //Aqui é possível realizar todas as configurações de design
        return TextField(
          controller: textEditingController,
          focusNode: focusNode,
        );
      },
    );
  }
}
