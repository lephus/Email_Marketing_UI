import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class EmailMarketingEvent extends Equatable{
  const EmailMarketingEvent();
}
class EmailMarketingEventRequested extends EmailMarketingEvent{
  final String data;
  const EmailMarketingEventRequested({@required this.data}): assert (data != null);
  @override
  // TODO: implement props
  List<Object> get props => [data];
}
class EmailMarketingEventRequest extends EmailMarketingEvent{
  final String data;
  const EmailMarketingEventRequest({@required this.data}): assert (data != null);
  @override
  // TODO: implement props
  List<Object> get props => [data];
}