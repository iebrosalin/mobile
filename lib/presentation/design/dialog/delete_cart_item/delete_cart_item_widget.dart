import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:catalog_app/presentation/design/application_design.dart';
import 'package:catalog_app/domain/bloc/dialog/delete_cart_item_bloc.dart';
import 'package:catalog_app/domain/model/cart_item.dart';
import 'package:catalog_app/internal/dependencies/application_component.dart';

class DeleteCartItemWidget extends StatefulWidget {
  final CartItem _cartItem;

  DeleteCartItemWidget(this._cartItem);

  @override
  _DeleteCartItemWidgetState createState() => _DeleteCartItemWidgetState();
}

class _DeleteCartItemWidgetState extends State<DeleteCartItemWidget>{
  final DeleteCartItemBloc _deleteCartItemBloc = CartModule.deleteCartItemBloc();

  @override
  void initState() {
    _deleteCartItemBloc.dispatch(DeleteCartItemInitEvent(widget._cartItem.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      builder: (context) => _deleteCartItemBloc,
      child: BlocBuilder<DeleteCartItemBloc, DeleteCartItemState>(
        builder: (context, state) {
          if(state is DeleteCartItemInitState) {
            return _getDialogAcceptDeleteItem();
          }
          if(state is DeleteCartItemApplyDeleteState){
            return _getDialogSuccessDeleteItem();
          }
          if(state is DeleteCartItemErrorState) {
            return _getDialogErrorDeleteItem();
          }
          return _getDialogErrorDeleteItem();
        },
      ),
    );
  }

  Widget _getDialogAcceptDeleteItem() {
    return PlatformAlertDialog(
      title: Text('Подвердите удаление'),
      actions: <Widget>[
        _getButtonBack('Назад'),
        _getButtonDelete('Удалить',_onDeleteCartItem),
      ],
    );
  }

  Widget _getButtonBack(String label) {
    return  PlatformDialogAction(
      android: (_) => MaterialDialogActionData(),
      ios: (_) => CupertinoDialogActionData(),
      child: PlatformText(
        label,
      ),
      onPressed: _onBack,
    );
  }

  Widget _getButtonDelete(String label, Function handler) {
    return  PlatformDialogAction(
    android: (_) => MaterialDialogActionData(),
      ios: (_) => CupertinoDialogActionData(),
      child: PlatformText(
        label,
        style: TextStyle(
          color: Colors.red,
        ),
      ),
      onPressed: handler,
    );
  }

  Widget _getDialogSuccessDeleteItem() {
    return PlatformAlertDialog(
      title: Text(''),
      content: Container(
        height: 50,
        child: Center(
          child: Text(
            'Товар успешно удалён',
          ),
        ),
      ),
      actions: <Widget>[
        PlatformDialogAction(
          android: (_) => MaterialDialogActionData(),
          ios: (_) => CupertinoDialogActionData(),
          child: PlatformText(
            'Продолжить покупки',
          ),
          onPressed: _onBack,
        ),
      ],
    );
  }

  Widget _getDialogErrorDeleteItem() {
    return PlatformAlertDialog(
      title: Text('Ошибка'),
      content: Container(
        height: 50,
        child: Center(
          child: Text('Произошла неизвестная ошибка'),
        ),
      ),
      actions: <Widget>[
        _getButtonBack('Вернуться назад'),
      ],
    );
  }

  void _onBack() {
    Navigator.pop(context);
  }

  void _onDeleteCartItem(int id) {
    _deleteCartItemBloc.dispatch(DeleteCartItemDeleteEvent());
  }
}
