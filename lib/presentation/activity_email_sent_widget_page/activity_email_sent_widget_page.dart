import '../activity_email_sent_widget_page/widgets/activity_item_widget.dart';
import 'controller/activity_email_sent_widget_controller.dart';
import 'models/activity_email_sent_widget_model.dart';
import 'models/activity_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hbs/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ActivityEmailSentWidgetPage extends StatelessWidget {
  ActivityEmailSentWidgetController controller = Get.put(
      ActivityEmailSentWidgetController(ActivityEmailSentWidgetModel().obs));

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: getPadding(
                right: 10,
              ),
              child: Text(
                "lbl_today".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtAvenirNextLTProDemi18.copyWith(),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 16,
              ),
              child: Obx(
                () => ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.activityEmailSentWidgetModelObj.value
                      .activityItemList.length,
                  itemBuilder: (context, index) {
                    ActivityItemModel model = controller
                        .activityEmailSentWidgetModelObj
                        .value
                        .activityItemList[index];
                    return ActivityItemWidget(
                      model,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
