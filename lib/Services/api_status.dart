

class Success{
  int code;
  Object response;
  Success({this.code,this.response});
}

class Failure{
  int code;
  Object errorResponse;
  Failure({this.code,this.errorResponse});
}

class TestimonyError {
  int code;
  Object message;

  TestimonyError({this.code, this.message});
}
