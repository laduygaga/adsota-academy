import 'package:flutter/material.dart';
import 'image.dart';

class Button extends StatelessWidget {
	final String? label;
	final String? icon;
	final void Function()? onPressed;

	const Button({Key? key, this.label, this.icon, this.onPressed}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(51.0),
                  side: const BorderSide(color: Colors.red)
                )
              )
            ),          onPressed: onPressed,
						child: Row(
							mainAxisAlignment: MainAxisAlignment.center,
							children: [
								if (icon != null)
									Padding(
										padding: const EdgeInsets.only(right: 10),
										child: OTAImage(
											path: icon!,
											widthImage: 16,
											heightImage: 30,
										),
									),
								if (label != null)
									Text(label!),
							],
						)
          );
	}
}
