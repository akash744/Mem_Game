# Mobile Development Workshop 2022

## Flutter Installation

### MacOS
*Coming soon*
### Windows

1 Download the flutter SDK from https://docs.flutter.dev/get-started/install/windows and unzip it

![](./readme/1.JPG)

![](./readme/2.JPG)

2 Add Flutter to the PATH environment variable

From the Start search bar (Shortcut: `win` + `s`), enter ‘env’ and select Edit environment variables for your account.

![](./readme/3.PNG)

Under User variables check if there is an entry called Path.

- If the entry exists, you can follow the instructions and add the full path of **flutter\bin** in the pop up `Edit environment variable` window.

![](./readme/4.PNG)

- Or after clicking `Edit`, the **Edit User Variable** window pops up, then you append the full path to **flutter\bin** using `;` as a separator from existing values.

![](./readme/5.PNG)

- Or if the entry does not exist, you can click on `New..` and create the new entry.

![](./readme/5_1.PNG)

***Trick*** - the full path of **flutter\bin** can be copy from the address bar in the File Explorer

![](./readme/6.gif)

3 Check if adding successfully

If you have configured it successfully, by typing 
```bash
flutter --version
```
in the command prompt, you should be able to see the version information of flutter

![](./readme/7.PNG)

> Q: What if I did not configure it successfully?

Say there is something went wrong in your path and something like this shows up.

![](./readme/8.PNG)

Well, imagine you might already felt tired with the path configuration process. It is equivalent to use the full path of `flutter.bat` as a command directly in the command prompt. In my case,

```bat
D:\DEVS\flutter_windows_3.0.5-stable\flutter\bin\flutter.bat --version
```

is the same assets
```bat
flutter --version
```
 
![](./readme/9.PNG)

## VS Code Configuration

1 Install Visual Studio Code
Select the right edition of VS Code for your device from https://code.visualstudio.com/

![](./readme/11.PNG)

2. Install Flutter Extension

![](./readme/10.gif)