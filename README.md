# flutter_autofill

A flutter autofilled password demo

# Screenshots

## Android
![alt text](https://github.com/myatminnaung/flutter_autofill_demo/blob/master/assets/screenshots/Screenshot%202022-02-28%20at%208.57.58%20PM.png)
![alt text](https://github.com/myatminnaung/flutter_autofill_demo/blob/master/assets/screenshots/Screenshot%202022-02-28%20at%208.58.08%20PM.png)
![alt text](https://github.com/myatminnaung/flutter_autofill_demo/blob/master/assets/screenshots/Screenshot%202022-02-28%20at%209.01.29%20PM.png)

## iOS
![alt text](https://github.com/myatminnaung/flutter_autofill_demo/blob/master/assets/screenshots/IMG_0009.PNG)
![alt text](https://github.com/myatminnaung/flutter_autofill_demo/blob/master/assets/screenshots/IMG_0011.PNG)

# Installing the AutoFill Service

Note: This step is only for testing on an emulator. If you have a physical device, you should be able to see autofill in action without having to follow these steps.
Download the service by using this link or by cloning the repository from GitHub:

```$ git clone https://github.com/android/input-samples.git```

Extract the downloaded zip file, navigate to AutofillFramework,and place it into C:\Users\name or the root folder. The extracted folder, AutofillFramework, contains the optimized autofill service.
Now, follow these steps:

1. Open Android Studio and click Import project (Gradle, Eclipse ADT, etc.)
2. In the Select Eclipse or Gradle Project to Import dialog, choose the folder where you downloaded the autofill service sample. Click OK.
3. Select afservice from the Run/Debug configuration dropdown and click the Run button.
4. Select your device from the Select Deployment Target dialog.


When you run afservice, you should automatically see the following screen. If this screen isn’t visible, open Settings and search for autofill service.

1. Scroll to the bottom and under the Enable/Disable section, toggle the “Set default Autofill service” to turn autofill on.

![alt text](https://github.com/myatminnaung/flutter_autofill_demo/blob/master/assets/screenshots/Screenshot%202022-03-01%20at%209.55.49%20AM.png)

2. On the following screen, choose “Debug Autofill Service”.

![alt text](https://github.com/myatminnaung/flutter_autofill_demo/blob/master/assets/screenshots/Screenshot%202022-02-28%20at%209.01.29%20PM.png)

3. Click OK in the Make sure you trust this app dialog.
4. On the original screen, tap “Add fake Autofill data”. Select the number of datasets that you would like to use for testing.

That’s it! Close the afservice folder and return to your project, launch the emulator and you should see autofill suggestions on your app. The number of visible suggestions is based on the number of fake datasets you added in the fourth step.

![alt text](https://github.com/myatminnaung/flutter_autofill_demo/blob/master/assets/screenshots/Screenshot%202022-02-28%20at%208.57.58%20PM.png)
![alt text](https://github.com/myatminnaung/flutter_autofill_demo/blob/master/assets/screenshots/Screenshot%202022-02-28%20at%208.58.08%20PM.png)


# Resources

- [How to implement autofill in your Flutter app](https://medium.com/swlh/how-to-implement-autofill-in-your-flutter-app-b43bddab1a97)

- [how to set up and use Sticky Password to autofill usernames and passwords in your favorite Android applications and browsers like Firefox](https://www.stickypassword.com/help/using-sticky-password-to-autofill-passwords-on-android-1127)

- [How to Enable or Change AutoFill Information on an iPhone](https://www.lifewire.com/change-autofill-information-on-iphone-4580493)

- [Flutter Tutorial - Autocomplete TextField & Autofill Services [2021] Android, iOS & Web](https://morioh.com/p/ea9ce68c7519)
With Flutter 2 Autofill Services are supported. Autofill TextFields comfortably in Flutter. Learn how to autofill name, autofill email, autofill address, autofill username, autofill password, autofill payment methods, etc., and combine multiple fields with Flutter Autofill Group.

[Source Code](https://github.com/JohannesMilke/autofill_example)

