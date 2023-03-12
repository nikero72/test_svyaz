import 'package:flutter/material.dart';
import 'package:test_svyaz/const/app_color.dart';
import 'package:test_svyaz/const/app_text_style.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(height: 50),
          ProfileWidgetHeader(),
          SizedBox(height: 16),
          ProfileWidgetAvatar(),
          SizedBox(height: 25),
          ProfileWidgetFields()
        ],
      ),
    );
  }
}

class ProfileWidgetHeader extends StatelessWidget {
  const ProfileWidgetHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Профиль',
      style: AppTextStyle().mainHeader,
    );
  }
}

class ProfileWidgetAvatar extends StatelessWidget {
  const ProfileWidgetAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
            'assets/images/avatar.png',
            width: 80,
            height: 80
        ),
        const SizedBox(width: 24),
        SizedBox(
          width: 167,
          child: Text(
            'Введите своё имя и при желании добавьте фото профиля',
            style: AppTextStyle().bookYear,
          ),
        )
      ],
    );
  }
}

class ProfileWidgetFields extends StatelessWidget {
  const ProfileWidgetFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(0),
          height: 56,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor().bookBackground
          ),
          child: TextFormField(
            initialValue: 'Анна',
            style: AppTextStyle().profileEntered,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(16, 9, 0, 9),
              border: InputBorder.none,
              labelText: 'Имя',
              labelStyle: AppTextStyle().profileLabel,
              floatingLabelStyle: AppTextStyle().profileFloatingLabel,
            ),
          ),
        ),
        const SizedBox(height: 12),
        Container(
          margin: const EdgeInsets.all(0),
          height: 56,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor().bookBackground
          ),
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(16, 9, 0, 9),
              border: InputBorder.none,
              labelText: 'Фамилия',
              labelStyle: AppTextStyle().profileLabel,
              floatingLabelStyle: AppTextStyle().profileFloatingLabel,
            ),
          ),
        ),
        const SizedBox(height: 12),
        Container(
          margin: const EdgeInsets.all(0),
          height: 56,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor().bookBackground
          ),
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(16, 9, 0, 9),
              border: InputBorder.none,
              labelText: 'Email',
              labelStyle: AppTextStyle().profileLabel,
              floatingLabelStyle: AppTextStyle().profileFloatingLabel,
            ),
          ),
        ),
        const SizedBox(height: 12),
        Container(
          margin: const EdgeInsets.all(0),
          height: 56,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor().bookBackground
          ),
          child: TextFormField(
            initialValue: '+ 7 (900) 900-09-90',
            style: AppTextStyle().profileEntered,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(16, 9, 0, 9),
              border: InputBorder.none,
              labelText: 'Номер телефона',
              labelStyle: AppTextStyle().profileLabel,
              floatingLabelStyle: AppTextStyle().profileFloatingLabel,
            ),
          ),
        ),
      ],
    );
  }
}