import 'package:daily/pages/edit_profile_page/appBar_editprofile_page.dart';
import 'package:daily/pages/edit_profile_page/change_avatar_editProfile.dart';
import 'package:daily/pages/edit_profile_page/tff_base_editProfile.dart';
import 'package:daily/provider/profile_provider.dart';
import 'package:daily/stream/edit_info_user_stream.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EditProfilePage extends StatefulWidget {
  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _provinceController = TextEditingController();
  TextEditingController _countryController = TextEditingController();
  TextEditingController _addressController = TextEditingController();

  EditInfoStream _editInfoStream = EditInfoStream();

  @override
  void initState() {
    super.initState();
    var profileProvider =
        Provider.of<ProfileProvider>(context, listen: false).infoUser;
    _nameController.text = profileProvider.name;
    _emailController.text = profileProvider.email;
    _phoneController.text = profileProvider.phonenumber;
    _countryController.text = profileProvider.country;
    _provinceController.text = profileProvider.province;
    _addressController.text = profileProvider.address;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _nameController.addListener(() {
      _editInfoStream.isValidName(_nameController.text);
    });
    _emailController.addListener(() {
      _editInfoStream.isValidEmail(_emailController.text);
    });
    _phoneController.addListener(() {
      _editInfoStream.isValidPhone(_phoneController.text);
    });
    _countryController.addListener(() {
      _editInfoStream.isValidCountry(_countryController.text);
    });
    _provinceController.addListener(() {
      _editInfoStream.isValidProvince(_provinceController.text);
    });
    _addressController.addListener(() {
      _editInfoStream.isValidAddress(_addressController.text);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _nameController.dispose();
    _phoneController.dispose();
    _countryController.dispose();
    _provinceController.dispose();
    _addressController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarEditProfilePage(),
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xff12175E),
                          width: 1.0,
                        ),
                      ),
                      child: ClipOval(
                        child: Consumer<ProfileProvider>(
                          builder: (context, imageUrl, child) {
                            if (imageUrl.image == null) {
                              return Image.asset(
                                "assets/images/avatar1.png",
                                fit: BoxFit.cover,
                              );
                            }
                            return Image.file(
                              imageUrl.image,
                              fit: BoxFit.cover,
                            );
                          },
                        ),
                      ),
                    ),
                    ChangeAvatarEditProfilePage(),
                  ],
                ),
              ),
              StreamBuilder(
                  stream: _editInfoStream.nameStream,
                  builder: (context, snapshot1) {
                    return TxtFFEditProfileBase(
                      controller: _nameController,
                      label: "Tên",
                      errorText: snapshot1.hasError ? snapshot1.error : null,
                    );
                  }),
              StreamBuilder(
                  stream: _editInfoStream.emailStream,
                  builder: (context, snapshot2) {
                    return TxtFFEditProfileBase(
                      controller: _emailController,
                      label: "Email",
                      errorText: snapshot2.hasError ? snapshot2.error : null,
                    );
                  }),
              StreamBuilder(
                  stream: _editInfoStream.phoneStream,
                  builder: (context, snapshot3) {
                    return TxtFFEditProfileBase(
                      controller: _phoneController,
                      label: "Số điện thoại",
                      errorText: snapshot3.hasError ? snapshot3.error : null,
                    );
                  }),
              StreamBuilder(
                  stream: _editInfoStream.countryStream,
                  builder: (context, snapshot4) {
                    return TxtFFEditProfileBase(
                      controller: _countryController,
                      label: "Đất nước",
                      errorText: snapshot4.hasError ? snapshot4.error : null,
                    );
                  }),
              StreamBuilder(
                  stream: _editInfoStream.provinceStream,
                  builder: (context, snapshot5) {
                    return TxtFFEditProfileBase(
                      controller: _provinceController,
                      label: "Tỉnh/Thành phố",
                      errorText: snapshot5.hasError ? snapshot5.error : null,
                    );
                  }),
              StreamBuilder(
                  stream: _editInfoStream.addressStream,
                  builder: (context, snapshot6) {
                    return TxtFFEditProfileBase(
                      controller: _addressController,
                      label: "Địa chỉ",
                      errorText: snapshot6.hasError ? snapshot6.error : null,
                    );
                  }),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Consumer<ProfileProvider>(
                  builder: (context, save, child) {
                    return Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff858FE9),
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () async {
                          await save.boolsave == false
                              ? save.saveProfileData(
                                  name: _nameController.text,
                                  email: _emailController.text,
                                  phone: _phoneController.text,
                                  country: _countryController.text,
                                  province: _provinceController.text,
                                  address: _addressController.text,
                                )
                              : save.editButton();
                          await save.getDataCard();
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Xác nhận",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
