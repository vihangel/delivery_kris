// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TicketController on _TicketControllerBase, Store {
  final _$loadingAtom = Atom(name: '_TicketControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$ticketsAtom = Atom(name: '_TicketControllerBase.tickets');

  @override
  List<TicketModel> get tickets {
    _$ticketsAtom.reportRead();
    return super.tickets;
  }

  @override
  set tickets(List<TicketModel> value) {
    _$ticketsAtom.reportWrite(value, super.tickets, () {
      super.tickets = value;
    });
  }

  final _$loadJsonDataAsyncAction =
      AsyncAction('_TicketControllerBase.loadJsonData');

  @override
  Future<void> loadJsonData() {
    return _$loadJsonDataAsyncAction.run(() => super.loadJsonData());
  }

  @override
  String toString() {
    return '''
loading: ${loading},
tickets: ${tickets}
    ''';
  }
}
