import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{

  const CustomAppBar({super.key});

  // widget
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromRGBO(40, 40, 40, 1),
      automaticallyImplyLeading: false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(12)
        )
      ),
      title: Padding(padding: const EdgeInsetsGeometry.only(top: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/Baekilmong_Logo.png',
            height: 50,
            fit: BoxFit.contain),

            const SizedBox(width: 10),
            const Text(
              "Daydream Co., Ltd.",
              style: TextStyle(
                color: Colors.white
              ),
            )
        ],
      ),)
    
    );
  }

  // size
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 15);
}

