:- module(response, [
  success_response/2,
  success_response/3,
  error_response/2,
  error_response/3
]).

:- use_module(library(http/http_json)).

success_response(Message, Data) :-
  reply_json_dict(_{
    success: true,
    message: Message,
    data: Data
  }).

success_response(Message, Data, StatusCode) :-
  reply_json_dict(_{
    success: true,
    message: Message,
    data: Data
  }, [status(StatusCode)]).

error_response(Message, StatusCode) :-
  reply_json_dict(_{
    success: false,
    message: Message,
    data: null
  }, [status(StatusCode)]).

error_response(Message, Data, StatusCode) :-
  reply_json_dict(_{
    success: false,
    message: Message,
    data: Data
  }, [status(StatusCode)]).