import 'package:f_food_delivery/scr/presentation/root_scaffold_widget.dart';
import 'package:f_food_delivery/scr/presentation/widgets/square_button.dart';
import 'package:flutter/material.dart';

class DetailsRootWidget extends StatelessWidget {
  const DetailsRootWidget(
      {required this.topWidget,
      this.showCloseBtn = false,
      this.onTapClose,
      required this.bodyWidget,
      super.key});

  final Widget topWidget;
  final Widget bodyWidget;
  final bool showCloseBtn;
  final Function()? onTapClose;

  @override
  Widget build(BuildContext context) {
    return RootScaffoldWidget(
      child: SizedBox(
        // color: Colors.red,
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            SizedBox(
              height: 355,
              // color: Colors.blue,
              width: double.infinity,
              child: Stack(
                children: <Widget>[
                  topWidget,
                  showCloseBtn
                      ? Positioned(
                          top: 12,
                          left: 12,
                          child: SquareButton(
                            br: 15,
                            width: 30,
                            height: 30,
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.close,
                              size: 20,
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
            Positioned(
              top: 320,
              left: 0,
              right: 0,
              bottom: 0,
              child: Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: bodyWidget,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
