import 'prisma_model.dart';

void main(List<String> args) {
  UserModel userModel = UserModel(
    id: 0,
    username: 'John Doe',
    password: 'johndoePassword',
    userType: UserTypeModel.developer,
  );

  userModel.id;
}
