import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/router/router.dart';
import 'package:oyan/src/core/services/injectable/injectable_service.dart';
import 'package:oyan/src/features/profile/domain/requests/get_profile_request.dart';
import 'package:oyan/src/features/profile/domain/requests/update_profile_requset.dart';
import 'package:oyan/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:oyan/src/features/profile/presentation/custrom_filled_button.dart';

class ChangeInformationPage extends StatefulWidget {
  const ChangeInformationPage({Key? key}) : super(key: key);

  @override
  State<ChangeInformationPage> createState() => _ProfileFormScreenState();
}

class _ProfileFormScreenState extends State<ChangeInformationPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController aboutMeController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    usernameController.dispose();
    aboutMeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileBloc>(),
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              iconTheme: const IconThemeData(color: Colors.black),
              centerTitle: false,
              title: Text(context.loc.changeInformation),
              titleTextStyle: GoogleFonts.openSans(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.loc.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: Color(0xff323232),
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      style: GoogleFonts.openSans(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      controller: nameController,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        disabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: const Color(0xFFF0F2FA),
                        hintText: context.loc.yourName,
                        hintStyle: GoogleFonts.openSans(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffA2ADD0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      context.loc.username,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: Color(0xff323232),
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      style: GoogleFonts.openSans(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      controller: usernameController,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        disabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: const Color(0xFFF0F2FA),
                        hintText: '@username',
                        hintStyle: GoogleFonts.openSans(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffA2ADD0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      context.loc.youCanUseTheCharactersAz09AndUnderscoresThe,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      context.loc.aboutMe,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: Color(0xff323232),
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      style: GoogleFonts.openSans(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      controller: aboutMeController,
                      maxLines: 5,
                      decoration: InputDecoration(
                        hintText: context.loc.tellUsABitAboutYourself,
                        hintStyle: GoogleFonts.openSans(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffA2ADD0),
                        ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        disabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: const Color(0xFFF0F2FA),
                      ),
                    ),
                    const Spacer(),
                    CustromFilledButton(
                      text: context.loc.save,
                      onPressed: () async {
                        context.read<ProfileBloc>().add(
                              ProfileEvent.updateProfile(
                                UpdateProfileRequest(
                                  username: st.getUsername() ?? '',
                                  name: nameController.text,
                                  bio: aboutMeController.text,
                                  avatar: 1,
                                ),
                              ),
                            );

                        await Future.delayed(const Duration(milliseconds: 500));

                        context.read<ProfileBloc>().add(
                              ProfileEvent.getProfile(
                                GetProfileRequest(username: st.getUsername() ?? ''),
                              ),
                            );

                        if (mounted) {
                          context.pop(true);
                        }
                      },
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
