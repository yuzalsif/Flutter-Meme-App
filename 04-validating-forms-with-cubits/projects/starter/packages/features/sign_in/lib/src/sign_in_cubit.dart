import 'package:domain_models/domain_models.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_fields/form_fields.dart';
import 'package:user_repository/user_repository.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit({
    required this.userRepository,
  }) : super(
          const SignInState(),
        );

  final UserRepository userRepository;

  void onEmailChanged(String newValue) {
    final previousScreenState = state;
    final previousEmailState = previousScreenState.email;
    final shouldValidate = previousEmailState.invalid;
    final newEmailState = shouldValidate
        ? Email.validated(
            newValue,
          )
        : Email.unvalidated(
            newValue,
          );

    final newScreenState = state.copyWith(
      email: newEmailState,
    );

    emit(newScreenState);
  }

  void onEmailUnfocused() {
      final previousScreenState = state;
      final previousEmailState = previousScreenState.email;
      final previousEmailValue = previousEmailState.value;

      final newEmailState = Email.validated(
        previousEmailValue,
      );
      final newScreenState = previousScreenState.copyWith(
        email: newEmailState,
      );
      emit(newScreenState);
    }

    void onPasswordChanged(String newValue){
      // TODO: Handle the user changing the value of the password
    }

    void onPasswordUnfocused() {
      // TODO: Handle the user taking the focus out if the password field
    }

    void onSubmit() async {
      // TODO: Handle the submit button's tap.
    }
}
