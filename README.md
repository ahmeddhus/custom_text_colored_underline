# Custom Text Colored Underline widget

A custom underline widget that fit according to `Text` width.

![Example image](https://github.com/ahmeddhus/custom_text_colored_underline/blob/master/images/widget_screenshot.png)

----
# How to use it?

          CustomTextColoredUnderline(
            textSpan:TextSpan(
              text: 'Grab The Best Deal On ',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Smartphones',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

----

# How it works?

Using `LayoutBuilder` and inside its `builder` function, we create `TextPainter` object and pass `TextSpan` and  to it.
we get `TextPainter` and use it to set our underline width.

----
# You can run the project on Zapp using [this](https://zapp.run/github/ahmeddhus/custom_text_colored_underline)

> To learn how to use Zapp! check out the [documentation](https://docs.zapp.run)

----

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

