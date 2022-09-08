import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:reviewtu_app/constants/app_colors.dart';

class DialogHolderWidget extends StatefulWidget {
  const DialogHolderWidget({
    Key? key,
    required this.route,
    required this.builder,
    required this.onDismissed,
  }) : super(key: key);

  final String route;
  final Widget builder;
  final Function(DismissDirection) onDismissed;

  @override
  State<StatefulWidget> createState() => _DialogHolderWidget();
}

class _DialogHolderWidget extends State<DialogHolderWidget> {
  late ScrollController _scrollController;
  bool popFlag = false;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_listenToScrollOffset);
    super.initState();
  }

  void _listenToScrollOffset() {
    if (_scrollController.offset <= -100 && !popFlag) {
      popFlag = true;
      widget.onDismissed(DismissDirection.down);
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_listenToScrollOffset);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        widget.onDismissed(DismissDirection.down);
        return SynchronousFuture<bool>(false);
      },
      child: Container(
        margin: const EdgeInsets.only(top: 50),
        padding: const EdgeInsets.only(top: 5),
        child: Dismissible(
          key: Key(widget.route),
          resizeDuration: null,
          onDismissed: widget.onDismissed,
          direction: DismissDirection.down,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              border: Border.all(
                color: AppColors.white,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: PrimaryScrollController(
              controller: _scrollController,
              child: widget.builder,
            ),
          ),
        ),
      ),
    );
  }
}
