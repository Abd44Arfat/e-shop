import 'package:asroo_store/core/style/images/app_images.dart';
import 'package:asroo_store/features/admin/dashboard/presentation/widgets/dashboard_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashBoardBody extends StatelessWidget {
  const DashBoardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
      
      child: RefreshIndicator(
        onRefresh: ()async{},
        child: ListView(
          children:  [
        //products
      const  DashboardContainer(image:AppImages.productsDrawer , title: 'products', number: '0', isLoading: false,
      ),
      SizedBox(height: 20.h),
        //categories
        DashboardContainer(image:AppImages.categoriesDrawer , title: 'categories', number: '0', isLoading: false,),
              SizedBox(height: 20.h),

        // users
        DashboardContainer(image:AppImages.usersDrawer , title: 'Users', number: '0', isLoading: false,)


        
            
          ],
        ),
      ),
    );
  }
}
