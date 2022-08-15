# MotoCheck

[motocheck.ng](http://www.motocheck.ng/). 
<br>


<p align="center">
    <img src="https://user-images.githubusercontent.com/50449937/184442976-d8dba382-1470-4b26-bede-c90b1c59e146.jpg" width="240" height="480">
    <img src="https://user-images.githubusercontent.com/50449937/184443085-1de29429-090d-4239-9013-16535a500a34.jpg" width="240" height="480">
    <img src="https://user-images.githubusercontent.com/50449937/184443447-aead014e-7f12-4709-b633-64ab3b6c1043.jpg" width="240" height="480">
</p>

## About MotoCheck
A nationwide network of auto centres and automobile engineers powered by proprietary software

### Services

* Vehicle Inspection
* Auto Repair & Maintenance
* Driver recruitment and onboarding and more

## Flutter

Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase.

This project is built with flutter.

To check if you have flutter installed, run

```
flutter doctor 
```
if you don't have flutter installed and setup, follow this: [How to setup Flutter](https://docs.flutter.dev/get-started/install)


## How to Use 

**Step 1:**

Download or clone this repo by using the link below:

```
https://github.com/JustineUgo/motocheck.git
```

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies: 

```
flutter pub get 
```

**Step 3:**

Connect your mobile phone or emulator and run this command:

```
flutter run
```

## Details

* Framewort: [Flutter](https://flutter.dev/) > 2.5 with Null Safety
* Architectural pattern: MVC(Model-View-Controller)

## Folder Structure
Here is the core folder structure which flutter provides.

```
flutter-app/
|- android
|- assets
|- build
|- ios
|- lib
|- test
|- web
```

Here is the folder structure we have been using in this project

```
lib/app
|- custom/
|- modules/
|- routes/
|- utils/
```

Now, lets dive into the lib folder which has the main code for the application.

```
1- custom - Contains custom widgets extracted and used in the app.
2- modules - Contains the code for the home module. 
3- routes.dart — This file contains all the routes for your application.
4- utils - The folder housed the utilities for the project, e.g colors, theme, images etc.
```


### Main

This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.



## Conclusion

I will be happy to answer any questions that you may have on this project. 🙂

If you liked my work, don’t forget to ⭐ star the repo.
