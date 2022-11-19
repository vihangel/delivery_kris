import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_kris/app/data/models/ticket/ticket_model.dart';

final db = FirebaseFirestore.instance;

class TesteCrud {
  void testeCrud({name, subTitle, value}) async {
    final docRef = db.collection('tickets').doc();
    TicketModel appt = TicketModel(
      title: name,
      subTitle: subTitle,
      value: value,
    );

    await docRef.set(appt.toJson()).then(
        (value) => log("Appointment booked successfully!"),
        onError: (e) => log("Error booking appointment: $e"));
  }
  // Future<void> addTicket(TicketModel ticket) {
  //   return db
  //       .collection('tickets')
  //       .add(ticket.toMap())
  //       .then((value) => log('Ticket Added'))
  //       .catchError((error) => log('Failed to add ticket: $error'));
  // }

  // Future<void> updateTicket(TicketModel ticket) {
  //   return db
  //       .collection('tickets')
  //       .doc(ticket.id)
  //       .update(ticket.toMap())
  //       .then((value) => log('Ticket Updated'))
  //       .catchError((error) => log('Failed to update ticket: $error'));
  // }

  // Future<void> deleteTicket(String id) {
  //   return db
  //       .collection('tickets')
  //       .doc(id)
  //       .delete()
  //       .then((value) => log('Ticket Deleted'))
  //       .catchError((error) => log('Failed to delete ticket: $error'));
  // }

  // Future<List<TicketModel>> getTickets() async {
  //   List<TicketModel> tickets = [];
  //   await db.collection('tickets').get().then((querySnapshot) {
  //     querySnapshot.docs.forEach((result) {
  //       tickets.add(TicketModel.fromMap(result.data()));
  //     });
  //   });
  //   return tickets;
  // }
}
