import 'package:email_marketing/events/email_marketing_event.dart';
import 'package:email_marketing/models/email_marketing.dart';
import 'package:email_marketing/repositories/email_marketing_repositoty.dart';
import 'package:email_marketing/states/email_marketing_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailMarketingBloc extends Bloc<EmailMarketingEvent , EmailMarketingState>{
  final EmailMarketingRepository emailMarketingRepository;
  EmailMarketingBloc({@required this.emailMarketingRepository }):
      assert(emailMarketingRepository != null),
      super(EmailMarketingInitial());
  @override
  Stream<EmailMarketingState> mapEventToState(EmailMarketingEvent emailMarketingEvent) async*{
    // TODO: implement mapEventToState
      if(emailMarketingEvent is EmailMarketingEventRequested){
        yield EmailMarketingLoading();
        try{
        final EmailMarketing emailMarketing = (await emailMarketingRepository.fetchDate(emailMarketingEvent.data)) as EmailMarketing;
          yield EmailMarketingSuccess(emailMarketing: emailMarketing);
        }catch(exception) {
          yield EmailMarketingFailure();
        }
      }else if(emailMarketingEvent is EmailMarketingEventRequest){
        try{
          final EmailMarketing emailMarketing = (await emailMarketingRepository.fetchDate(emailMarketingEvent.data)) as EmailMarketing;
          yield EmailMarketingSuccess(emailMarketing: emailMarketing);
        }catch(exception) {
          yield EmailMarketingFailure();
        }
      }
  }

}