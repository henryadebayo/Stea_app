

class Success{
  int code;
  Object response;
  Success({this.code,this.response});
}

class Failure{
  int code;
  Object errorresponse;
  Failure({this.code,this.errorresponse});
}

class TestimonyError {
  int code;
  Object message;

  TestimonyError({this.code, this.message})
}
