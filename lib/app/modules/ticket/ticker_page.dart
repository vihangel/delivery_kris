import 'package:delivery_kris/app/modules/ticket/ticket_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/resources/colors.dart';
import '../../shared/widget/ticket/ticket.dart';

final controller = Modular.get<TicketController>();

class TicketPage extends StatefulWidget {
  const TicketPage({Key? key}) : super(key: key);

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  @override
  void initState() {
    super.initState();
    controller.loadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Observer(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(4.0),
            child: Container(
              color: ColorsApp.gray,
              height: 1.0,
              width: size.width * 0.9,
            ),
          ),
          foregroundColor: ColorsApp.white,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Modular.to.pop();
            },
            icon: const Icon(
              Icons.close,
              color: ColorsApp.white,
            ),
          ),
        ),
        body: controller.loading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Padding(
                padding: EdgeInsets.only(top: 40.w, left: 20.w, right: 20.w),
                child: ListView.builder(
                  itemCount: controller.tickets.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Ticket(
                        subTitle: controller.tickets[index].subTitle!,
                        title: controller.tickets[index].title!,
                        value: controller.tickets[index].value!,
                      ),
                    );
                  },
                ),
              ),
      );
    });
  }
}
