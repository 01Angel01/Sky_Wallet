import 'package:flutter/material.dart';
import 'package:skywallet/Modules/Variables/Theme.dart';
import 'package:skywallet/Pages/SubMenus/LoginPage/index.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nama = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
          bottom: false,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            children: [
              Image.asset('assets/images/regis.png',
                  height: 301, width: 335, fit: BoxFit.fill),
              const SizedBox(
                height: 71,
              ),
              Text(
                "SELAMAT DATANG",
                style: selamatTextStyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Mari catat pemasukan dan pengeluaranmu tiap hari",
                style: kataTextStyle.copyWith(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "Lalu lihatlah perkembangan uangmu tiap bulannya",
                style: kataTextStyle.copyWith(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 47,
              ),
              SizedBox(
                height: 61,
                width: 329,
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 21, 0, 155),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  onPressed: () {
                    // Tampilkan Register
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return StatefulBuilder(
                            builder:
                                (BuildContext context, StateSetter setState) {
                              return Wrap(
                                children: [
                                  // Bgaian modal
                                  Container(
                                    color: Colors.transparent,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: backregisColor,
                                          borderRadius: const BorderRadius.only(
                                              topRight: Radius.circular(45),
                                              topLeft: Radius.circular(45))),
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 33),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              height: 39,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Column(
                                                  children: [
                                                    const SizedBox(
                                                      height: 49,
                                                    ),
                                                    Text(
                                                      "REGISTER",
                                                      style: regisTextStyle
                                                          .copyWith(
                                                              fontSize: 48,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: const Color
                                                                      .fromARGB(
                                                                  255,
                                                                  77,
                                                                  53,
                                                                  228)),
                                                    ),
                                                  ],
                                                ),
                                                const Spacer(),
                                                Center(
                                                    child: InkWell(
                                                  onTap: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Image.asset(
                                                    'assets/images/arrow.png',
                                                    height: 41,
                                                    width: 41,
                                                  ),
                                                ))
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Nama*",
                                              style: kataTextStyle.copyWith(
                                                  fontSize: 16,
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                            const SizedBox(
                                              height: 18,
                                            ),
                                            Container(
                                              width: double.infinity,
                                              height: 35,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(32),
                                                border: Border.all(
                                                    width: 3,
                                                    color: const Color.fromARGB(
                                                        255, 77, 53, 228)),
                                                color: Colors.white,
                                              ),
                                              child: TextField(
                                                controller: nama,
                                                style: const TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 77, 53, 228)),
                                                decoration: InputDecoration(
                                                  contentPadding:
                                                      const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 14,
                                                          vertical: 10),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            32),
                                                    borderSide:
                                                        const BorderSide(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    77,
                                                                    53,
                                                                    228)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Username*",
                                              style: kataTextStyle.copyWith(
                                                  fontSize: 16,
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                            const SizedBox(
                                              height: 18,
                                            ),
                                            Container(
                                              width: double.infinity,
                                              height: 35,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(32),
                                                border: Border.all(
                                                    width: 3,
                                                    color: const Color.fromARGB(
                                                        255, 77, 53, 228)),
                                                color: Colors.white,
                                              ),
                                              child: TextField(
                                                controller: username,
                                                style: const TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 77, 53, 228)),
                                                decoration: InputDecoration(
                                                  contentPadding:
                                                      const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 14,
                                                          vertical: 10),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            32),
                                                    borderSide:
                                                        const BorderSide(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    77,
                                                                    53,
                                                                    228)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Password*",
                                              style: kataTextStyle.copyWith(
                                                  fontSize: 16,
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                            const SizedBox(
                                              height: 18,
                                            ),
                                            Container(
                                              width: double.infinity,
                                              height: 35,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(32),
                                                border: Border.all(
                                                    width: 3,
                                                    color: const Color.fromARGB(
                                                        255, 77, 53, 228)),
                                                color: Colors.white,
                                              ),
                                              child: TextField(
                                                controller: password,
                                                style: const TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 77, 53, 228)),
                                                decoration: InputDecoration(
                                                  contentPadding:
                                                      const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 14,
                                                          vertical: 10),
                                                  suffixIcon: InkWell(
                                                    onTap: () {
                                                      //ketika icon di tekan
                                                    },
                                                    child: const Icon(Icons
                                                        .visibility_outlined),
                                                  ),
                                                  suffixIconColor:
                                                      const Color.fromARGB(
                                                          255, 77, 53, 228),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            32),
                                                    borderSide:
                                                        const BorderSide(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    77,
                                                                    53,
                                                                    228)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 38,
                                            ),
                                            Container(
                                              height: 61,
                                              width: 329,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(32),
                                                border: Border.all(
                                                  width: 2,
                                                  color: const Color.fromARGB(
                                                      255, 21, 0, 155),
                                                ),
                                              ),
                                              child: ElevatedButton(
                                                style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      const Color.fromARGB(
                                                          255, 21, 0, 155),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            32),
                                                  ),
                                                ),
                                                child: Text(
                                                  "REGISTER",
                                                  style:
                                                      regisTextStyle.copyWith(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: const Color
                                                                  .fromARGB(255,
                                                              254, 254, 254)),
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 38,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Sudah mempunyai akun ?",
                                                  style: kataTextStyle.copyWith(
                                                      color: kataColor,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const LoginPage()),
                                                    );
                                                  },
                                                  child: Text(
                                                    "Login sekarang",
                                                    style:
                                                        kataTextStyle.copyWith(
                                                            color: kataColor,
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: defaultMargin,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              );
                            },
                          );
                        });
                  },
                  child: Text(
                    "Buat Akun",
                    style: regisTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              Container(
                height: 61,
                width: 329,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  border: Border.all(
                    width: 2,
                    color: const Color.fromARGB(255, 77, 53, 228),
                  ),
                ),
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                  child: Text(
                    "Login",
                    style: regisTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 21, 0, 155)),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
