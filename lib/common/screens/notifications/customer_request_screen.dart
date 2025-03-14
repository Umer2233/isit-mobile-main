import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:isit_app/common/controller/customer_request_days_time.dart';
import 'package:isit_app/common/custom_validity_button.dart';
import 'package:isit_app/common/custome_text_field.dart';
import 'package:isit_app/constants/app_colors.dart';
import 'package:provider/provider.dart';

import '../../../constants/app_fonts.dart';
import '../../../constants/app_sizes.dart';
import '../../custom_back_icon.dart';
import '../../text_styles.dart';

class CustomerRequestScreen extends StatefulWidget {
  const CustomerRequestScreen({super.key});

  @override
  State<CustomerRequestScreen> createState() => _CustomerRequestScreenState();
}

class _CustomerRequestScreenState extends State<CustomerRequestScreen> {

  TextEditingController reasonController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final provider =
        Provider.of<CustomerRequestWeekDaySelectionProvider>(context);
    return ChangeNotifierProvider(
        create: (_) => CustomerRequestWeekDaySelectionProvider(
              defaultDays: ['Mon', 'Tue', 'Wed'], // Static days for now
            ),
        child: Scaffold(
          backgroundColor: AppColors.lightGrey,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: AppSize.s60.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppSize.s24.w),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomBackIcon(),
                      Spacer(),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Customer Request',
                          style: getBoldStyle(
                              color: AppColors.textColor,
                              fontSize: FontSize.s18),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Spacer()
                    ],
                  ),
                ),
                SizedBox(
                  height: AppSize.s30.h,
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
                  width: Get.width,
                  height: MediaQuery.sizeOf(context).height * 1.1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppSize.s50.r),
                      topRight: Radius.circular(AppSize.s50.r),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColors.grey,
                        minRadius: 40,
                        maxRadius: 40,
                        child: Icon(Icons.person),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "John Doe",
                        style: getBoldStyle(
                            color: AppColors.darkBlue, fontSize: 18),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "About",
                        style: getBoldStyle(
                            color: AppColors.darkBlue, fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text("About Service dummy text description"),
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppSize.s22_5.r),
                            border:
                                Border.all(width: 1.w, color: AppColors.grey),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      AppColors.shadowColor.withOpacity(0.12),
                                  offset: Offset(0, 2.63.h),
                                  blurRadius: AppSize.s17_2.r,
                                  spreadRadius: 0)
                            ]),
                        child: TextFormField(
                          readOnly: true,
                          controller: null,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.location_on),
                            prefixIconColor: AppColors.darkBlue,
                            enabled: false,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: AppPadding.p15.w,
                                vertical: AppPadding.p15.h),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(AppSize.s22_5.r),
                                borderSide: BorderSide(color: AppColors.grey)),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(AppSize.s22_5.r),
                                borderSide: BorderSide(color: AppColors.grey)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(AppSize.s22_5.r),
                                borderSide: BorderSide(color: AppColors.grey)),
                            filled: true,
                            fillColor: AppColors.white,
                          ),
                          //style: TextStyle(fontSize: fontSize),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        height: 30,
                        decoration: BoxDecoration(
                            color: AppColors.darkBlue.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(color: AppColors.darkBlue)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Plumber",
                              style: TextStyle(color: AppColors.darkBlue),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        height: 55,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(AppSize.s22_5.r),
                            border: Border.all(width: 1.w, color: Colors.grey),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      AppColors.shadowColor.withOpacity(0.12),
                                  offset: Offset(0, 2.63.h),
                                  blurRadius: AppSize.s17_2.r,
                                  spreadRadius: 0)
                            ]),
                        child: Row(
                          children: [
                            Text("Tuesday"),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomValidityButton(
                              onPress: () {},
                              text: "Accept",
                              width: MediaQuery.sizeOf(context).width * 0.4),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            height: 40,
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            decoration: BoxDecoration(
                                color: AppColors.darkBlue.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(color: AppColors.darkBlue)),
                            child: Center(
                              child: Text(
                                "Reject",
                                style: TextStyle(color: AppColors.darkBlue),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child:
                            Consumer<CustomerRequestWeekDaySelectionProvider>(
                                builder: (context, provider, _) {
                          return ListView.builder(
                            itemCount: provider.selectedDays.length,
                            itemBuilder: (context, index) {
                              final day = provider.selectedDays[index];
                              final timeRange = provider.getTimeRange(day);
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    day,
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Row(
                                    children: [
                                      // Start Time Picker Button
                                      InkWell(
                                        onTap: () async {
                                          TimeOfDay? selectedTime =
                                              await showTimePicker(
                                            context: context,
                                            initialTime: timeRange.startTime,
                                          );
                                          if (selectedTime != null) {
                                            provider.setStartTime(
                                                day, selectedTime);
                                          }
                                        },
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 6, vertical: 5),
                                          decoration: BoxDecoration(
                                              color: Color(0xFFE3E3E5),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              border: Border.all(
                                                  color: Colors.black)),
                                          child: Text(
                                            timeRange.startTime.format(context),
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      Text("to"),
                                      // End Time Picker Button
                                      InkWell(
                                        onTap: () async {
                                          TimeOfDay? selectedTime =
                                              await showTimePicker(
                                            context: context,
                                            initialTime: timeRange.endTime,
                                          );
                                          if (selectedTime != null) {
                                            provider.setEndTime(
                                                day, selectedTime);
                                          }
                                        },
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 5),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 6, vertical: 5),
                                          decoration: BoxDecoration(
                                              color: Color(0xFFE3E3E5),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              border: Border.all(
                                                  color: Colors.black)),
                                          child: Text(
                                            timeRange.endTime.format(context),
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          );
                        }),
                      ),
                      CustomTextField(
                        minLines: 4,
                          maxLines: 4,
                          labelText: "Reason to Reschedule",
                          hintText: "Reason to Reschedule",
                          controller: reasonController),
                      SizedBox(height: 20),
                      CustomValidityButton(onPress: () {}, text: "Reschedule",
                          width: MediaQuery.sizeOf(context).width * 1),
                      SizedBox(height: 40),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
