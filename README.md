# CocoaPDFCreator
With CocoaPDFCreator, you can create a paginated PDF right in a Swift Mac app. CocoaPDFCreator uses NSWebView and NSPrintOperation to convert an HTML String to a PDF, right in Swift.

CocoaPDFCreator only works on Macs; if you are looking for PDF creation for iOS, [use this code](https://gist.github.com/nyg/b8cd742250826cb1471f) instead.

Requirements
--
------------

 - [x] Swift 3
 - [x] OS X Yosemite (10.10) or newer
 - [x] Xcode 8

Installation
--
------------
Download the project and copy `CocoaPDFCreator.swift` to your project.

Usage
--
------------
Once you have CocoaPDFCreator.swift as a file in your project, it's dead simple to make a PDF.

    let htmlString = "<font face=\"Futura\" color=\"SlateGray\"><h2>Hello World</h2></font>" // replace Hello World with the string of a text view or any other custom string
    CreatePDF(htmlString: htmlString)

You can go as intense as you want with the HTML: images, fonts, colors, headers, paragraph text, and more are supported. With that one line of code, a save dialog box will appear for the user, and a paginated PDF will be created from the HTML string with whatever name and save destination the user selects.

Acknowledgements
--
------------
Made with ❤️ in NYC by [Henry Stern](one-studio.tumblr.com).


Note about Sandboxing
--
------------
If your Mac app uses sandboxing as a capability, make sure File Access type `User Selected File` is set to `Read/Write`, or else the PDF will not be able to save.

If you have any questions, you can email me at <a href="one.studio@outlook.com">one.studio@outlook.com</a>.



