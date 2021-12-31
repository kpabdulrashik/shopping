import 'package:ShoppingApp/controller/homePageController.dart';
import 'package:ShoppingApp/screens/login_success/login_success_screen.dart';
import 'package:flutter/material.dart';
import 'package:ShoppingApp/components/custom_surfix_icon.dart';
import 'package:ShoppingApp/components/default_button.dart';
import 'package:ShoppingApp/components/form_error.dart';
import 'package:ShoppingApp/screens/complete_profile/complete_profile_screen.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'deliverSuccess.dart';

class DeliveryForm extends StatefulWidget {
  @override
  _DeliveryFormState createState() => _DeliveryFormState();
}

class _DeliveryFormState extends State<DeliveryForm> {
  final _formKey = GlobalKey<FormState>();

  String? name;
  String? mobile;

  String? address;
  String? street;
  String? district;
  String? pincode;
  bool remember = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          builNameFormField(),
          SizedBox(height: getProportionateScreenHeight(10)),
          buildMobileFormField(),
          SizedBox(height: getProportionateScreenHeight(10)),
          buildAddressFormField(),
          SizedBox(height: getProportionateScreenHeight(10)),
          buildStreetFormField(),
          SizedBox(height: getProportionateScreenHeight(10)),
          buildPincodeFormField(),
          SizedBox(height: getProportionateScreenHeight(10)),
          buildDistrictFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Deliver",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // if all are valid then go to success screen
                Navigator.pushNamed(context, DeliverSuccessScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField builNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => name = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Name",
        hintText: "Enter your Name",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildMobileFormField() {
    return TextFormField(
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      keyboardType: TextInputType.number,
      onSaved: (newValue) => mobile = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Mobile",
        hintText: "Enter your Mobile",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => address = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kAddressNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kAddressNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Address",
        hintText: "Enter your Address",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildStreetFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => street = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kStreetNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kStreetNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Street",
        hintText: "Enter your Street",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildDistrictFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => district = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kDistrictNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kDistrictNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "District",
        hintText: "Enter your District",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildPincodeFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      onSaved: (newValue) => pincode = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kCodeNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kCodeNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Pin code",
        hintText: "Enter your Pincode",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
