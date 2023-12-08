abstract class UserEvent {
  const UserEvent();
}

class LoginEvent extends UserEvent {
  final String? email;
  final String? password;

  const LoginEvent({
    this.email,
    this.password,
  });
}

class RegisterEvent extends UserEvent {
  final String? username;
  final String? email;
  final String? password;

  const RegisterEvent({
    this.username,
    this.email,
    this.password,
  });
}