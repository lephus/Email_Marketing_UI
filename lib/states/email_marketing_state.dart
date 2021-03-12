import 'package:email_marketing/models/email_marketing.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
abstract class EmailMarketingState extends Equatable{
  const EmailMarketingState();
@override
  // TODO: implement props
  List<Object> get props => [];
}

class EmailMarketingInitial extends EmailMarketingState{}
class EmailMarketingLoading extends EmailMarketingState{}
class EmailMarketingSuccess extends EmailMarketingState{
  final EmailMarketing emailMarketing;
  const EmailMarketingSuccess({@required this.emailMarketing}):
      assert(emailMarketing != null);
  @override
  // TODO: implement props
  List<Object> get props => [];
}
class EmailMarketingFailure extends EmailMarketingState{}
