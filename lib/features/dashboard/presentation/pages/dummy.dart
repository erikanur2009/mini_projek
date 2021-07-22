import 'package:flutter/material.dart';
import 'package:mini_project/config/stringresource.dart';
import 'package:mini_project/theme/color.dart';
import 'package:mini_project/theme/textstyle.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class Dummy extends StatelessWidget {
  Dummy({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormBuilderState>();

  var options = ["Option 1", "Option 2", "Option 3"];
  var provinsi = [
    "Jawa Timur",
    "Bali",
    "Sumatera Barat",
    "Sumatera Selatan",
    "Jawa Tengah",
    "Jawa Barat",
    "DKI Jakarta"
  ];
  var kota = [
    "	Kota Magelang",
    "Kota Pekalongan",
    "Kota Salatiga",
  ];

  var kecamatan = [
    "larangan",
    "Batur",
    "Kalibening",
  ];

  var kelurahan = [
    "cipadu",
    "cipadu jaya",
    "gaga",
    "Joho",
  ];

  var rt = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
  ];

  var rw = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).copyWith().size.height / 1.5,
            height: 200,
            color: ColorPalette.gray300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_left_outlined,
                        color: ColorPalette.black,
                      ),
                      Text(StringResources.TEXT_APP_TITLE,
                          textAlign: TextAlign.right,
                          style: TextStyle(color: Colors.red))
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Formulir Data Diri",
                        style: TextPalette.secondaryTxtStyle,
                      ),
                      Text(
                        "Mohon Untuk Melengkapi Data Diri Anda",
                        style: TextPalette.altTextStyle,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 4,
          ),
          FormBuilder(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 15, right: 25, bottom: 15, left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nama*",
                    style: TextPalette.fieldStyle,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  FormBuilderTextField(
                    name: 'name',
                    textAlign: TextAlign.left,
                    decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorPalette.gray300),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorPalette.gray300,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      fillColor: ColorPalette.gray300,
                      filled: true,
                      // prefixIcon: Align(
                      //   alignment: Alignment.centerRight,
                      //   child: const Icon(
                      //     Icons.person,
                      //     color: Colors.green,
                      //   ),
                      // ),
                    ),
                    // onChanged: _onChanged,
                    // valueTransformer: (text) => num.tryParse(text),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(context),
                      FormBuilderValidators.maxLength(context, 25),
                    ]),
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Jenis Kelamin*",
                    style: TextPalette.fieldStyle,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  FormBuilderRadioGroup(
                    decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorPalette.gray300),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorPalette.gray300,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    name: 'jenis_kelamin',
                    validator: FormBuilderValidators.required(context),
                    options: ['Laki - Laki', 'Perempuan']
                        .map((lang) => FormBuilderFieldOption(value: lang))
                        .toList(growable: false),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Tempat*",
                    style: TextPalette.fieldStyle,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  FormBuilderTextField(
                    name: 'tempat',
                    textAlign: TextAlign.left,
                    decoration: new InputDecoration(
                      contentPadding: const EdgeInsets.all(2),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorPalette.gray300),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorPalette.gray300,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      fillColor: ColorPalette.gray300,
                      filled: true,
                    ),
                    // onChanged: _onChanged,
                    // valueTransformer: (text) => num.tryParse(text),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(context),
                      FormBuilderValidators.maxLength(context, 25),
                    ]),
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Tanggal Lahir",
                    style: TextPalette.fieldStyle,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  FormBuilderDateTimePicker(
                    name: 'date',
                    // onChanged: _onChanged,
                    inputType: InputType.date,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorPalette.gray300),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorPalette.gray300,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      fillColor: ColorPalette.gray300,
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.date_range,
                        color: Colors.black,
                      ),
                    ),
                    // initialTime: TimeOfDay(hour: 8, minute: 0),
                    initialValue: DateTime.now(),
                    enabled: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Alamat KTP",
                    style: TextPalette.fieldStyle,
                  ),
                  Divider(
                    color: ColorPalette.gray300,
                    height: 10,
                    thickness: 2,
                    indent: 105,
                    endIndent: 0,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Jalan",
                    style: TextPalette.fieldStyle,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  FormBuilderTextField(
                    name: 'jalan',
                    textAlign: TextAlign.left,
                    decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorPalette.gray300),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorPalette.gray300,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      fillColor: ColorPalette.gray300,
                      filled: true,
                    ),
                    // onChanged: _onChanged,
                    // valueTransformer: (text) => num.tryParse(text),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(context),
                      FormBuilderValidators.maxLength(context, 25),
                    ]),
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Provinsi",
                    style: TextPalette.fieldStyle,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  FormBuilderDropdown(
                    name: 'povinsi',
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorPalette.gray300),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorPalette.gray300,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      fillColor: ColorPalette.gray300,
                      filled: true,
                    ),
                    // initialValue: 'Male',
                    allowClear: true,
                    hint: Text('Select Provinsi'),
                    validator: FormBuilderValidators.compose(
                        [FormBuilderValidators.required(context)]),
                    items: provinsi
                        .map((provinsi) => DropdownMenuItem(
                              value: provinsi,
                              child: Text('$provinsi'),
                            ))
                        .toList(),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Kota/Kabupaten",
                    style: TextPalette.fieldStyle,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  FormBuilderDropdown(
                    name: 'kota',
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorPalette.gray300),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorPalette.gray300,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      fillColor: ColorPalette.gray300,
                      filled: true,
                    ),

                    // initialValue: 'Male',
                    allowClear: true,
                    hint: Text('Select Kota'),
                    validator: FormBuilderValidators.compose(
                        [FormBuilderValidators.required(context)]),
                    items: kota
                        .map((kota) => DropdownMenuItem(
                              value: kota,
                              child: Text('$kota'),
                            ))
                        .toList(),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Kecamatan",
                    style: TextPalette.fieldStyle,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  FormBuilderDropdown(
                    name: 'kecamatan',
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorPalette.gray300),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorPalette.gray300,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      fillColor: ColorPalette.gray300,
                      filled: true,
                    ),
                    // initialValue: 'Male',
                    allowClear: true,
                    hint: Text('Select kecamatan'),
                    validator: FormBuilderValidators.compose(
                        [FormBuilderValidators.required(context)]),
                    items: kecamatan
                        .map((kecamatan) => DropdownMenuItem(
                              value: kecamatan,
                              child: Text('$kecamatan'),
                            ))
                        .toList(),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Kelurahan/Desa",
                    style: TextPalette.fieldStyle,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  FormBuilderDropdown(
                    name: 'kelurahan',
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorPalette.gray300),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorPalette.gray300,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      fillColor: ColorPalette.gray300,
                      filled: true,
                    ),
                    // initialValue: 'Male',
                    allowClear: true,
                    hint: Text('Select kelurahan'),
                    validator: FormBuilderValidators.compose(
                        [FormBuilderValidators.required(context)]),
                    items: kota
                        .map((kelurahan) => DropdownMenuItem(
                              value: kelurahan,
                              child: Text('$kelurahan'),
                            ))
                        .toList(),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                    child: Row(
                      children: [
                        Flexible(
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 5, 95, 10),
                                // padding: const EdgeInsets.fromLTRB(left, top, right, bottom)
                                child: Text(
                                  "RT",
                                ),
                              ),
                              FormBuilderDropdown(
                                name: 'rt',
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: ColorPalette.gray300),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: ColorPalette.gray300,
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  fillColor: ColorPalette.gray300,
                                  filled: true,
                                ),
                                // initialValue: 'Male',
                                allowClear: true,
                                hint: Text('Select Rt'),
                                validator: FormBuilderValidators.compose(
                                    [FormBuilderValidators.required(context)]),
                                items: rt
                                    .map((rt) => DropdownMenuItem(
                                          value: rt,
                                          child: Text('$rt'),
                                        ))
                                    .toList(),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15.0,
                          height: 20.0,
                        ),
                        Flexible(
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 60, 10),
                                // padding: const EdgeInsets.fromLTRB(left, top, right, bottom)
                                child: Text(
                                  "RW",
                                ),
                              ),
                              FormBuilderDropdown(
                                name: 'rw',
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: ColorPalette.gray300),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: ColorPalette.gray300,
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  fillColor: ColorPalette.gray300,
                                  filled: true,
                                ),
                                // initialValue: 'Male',
                                allowClear: true,
                                hint: Text('Select RW'),
                                validator: FormBuilderValidators.compose(
                                    [FormBuilderValidators.required(context)]),
                                items: rw
                                    .map((rw) => DropdownMenuItem(
                                          value: rw,
                                          child: Text('$rw'),
                                        ))
                                    .toList(),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                      ],
                    ),

                    // Expanded(
                    //   child: Column(
                    //     children: [
                    //       SizedBox(
                    //         height: 8,
                    //       ),
                    //       Text(
                    //         "Kota/Kabupaten",
                    //         style: TextPalette.fieldStyle,
                    //       ),
                    //       FormBuilderDropdown(
                    //         name: 'kota-kabupaten',
                    //         decoration: InputDecoration(
                    //           focusedBorder: OutlineInputBorder(
                    //             borderSide:
                    //                 BorderSide(color: ColorPalette.gray300),
                    //             borderRadius: BorderRadius.circular(20.0),
                    //           ),
                    //           enabledBorder: OutlineInputBorder(
                    //             borderSide: BorderSide(
                    //               color: ColorPalette.gray300,
                    //             ),
                    //             borderRadius: BorderRadius.circular(20.0),
                    //           ),
                    //           fillColor: ColorPalette.gray300,
                    //           filled: true,
                    //         ),
                    //         // initialValue: 'Male',
                    //         allowClear: true,
                    //         hint: Text('Select Kota/Kabupaten'),
                    //         validator: FormBuilderValidators.compose(
                    //             [FormBuilderValidators.required(context)]),
                    //         items: kota
                    //             .map((kota) => DropdownMenuItem(
                    //                   value: kota,
                    //                   child: Text('$kota'),
                    //                 ))
                    //             .toList(),
                    //       ),
                    //     ],
                    //   ),
                    // )
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
