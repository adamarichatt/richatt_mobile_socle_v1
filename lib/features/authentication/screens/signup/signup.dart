import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:richatt_mobile_socle_v1/utils/constants/colors.dart';
import 'package:richatt_mobile_socle_v1/utils/constants/sizes.dart';
import 'package:richatt_mobile_socle_v1/utils/constants/text_strings.dart';
import 'package:richatt_mobile_socle_v1/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(RSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                RTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: RSizes.spaceBtwSections,
              ),

              //Form
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                              labelText: RTexts.firstName,
                              prefixIcon: Icon(Iconsax.user),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: RSizes.spaceBtwInputFields,
                        ),
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                              labelText: RTexts.lastName,
                              prefixIcon: Icon(Iconsax.user),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: RSizes.spaceBtwInputFields,
                    ),
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: RTexts.username,
                        prefixIcon: Icon(Iconsax.user_edit),
                      ),
                    ),
                    const SizedBox(
                      height: RSizes.spaceBtwInputFields,
                    ),
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: RTexts.email,
                        prefixIcon: Icon(Iconsax.direct),
                      ),
                    ),
                    const SizedBox(
                      height: RSizes.spaceBtwInputFields,
                    ),
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: RTexts.phoneNo,
                        prefixIcon: Icon(Iconsax.call),
                      ),
                    ),
                    const SizedBox(
                      height: RSizes.spaceBtwInputFields,
                    ),
                    TextFormField(
                      obscureText: true,
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: RTexts.password,
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),
                    const SizedBox(
                      height: RSizes.spaceBtwSections,
                    ),

                    // Terms and Condition Checkbox
                    Row(
                      children: [
                        SizedBox(
                          child: Checkbox(value: true, onChanged: (value) {}),
                        ),
                        const SizedBox(width: RSizes.spaceBtwItems),
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(
                              text: '${RTexts.iAgreeTo} ',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            TextSpan(
                              text: '${RTexts.privacyPolicy} ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .apply(
                                    color:
                                        dark ? RColors.white : RColors.primary,
                                    decoration: TextDecoration.underline,
                                    decorationColor:
                                        dark ? RColors.white : RColors.primary,
                                  ),
                            ),
                            TextSpan(
                              text: '${RTexts.and} ',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            TextSpan(
                              text: '${RTexts.termsOfUse} ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .apply(
                                    color:
                                        dark ? RColors.white : RColors.primary,
                                    decoration: TextDecoration.underline,
                                    decorationColor:
                                        dark ? RColors.white : RColors.primary,
                                  ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: RSizes.spaceBtwSections,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(RTexts.createAccount)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
