abstract class RegisterStates {}

class RegisterInitialState extends RegisterStates {}

class RegisterLoadingState extends RegisterStates {}
class RegisterSuccessState extends RegisterStates {}
class RegisterErrorState extends RegisterStates {}

class RegisterCreateSuccessState extends RegisterStates {}
class RegisterCreateErrorState extends RegisterStates {}

class RegisterChangePasswordVisibilityState extends RegisterStates {}