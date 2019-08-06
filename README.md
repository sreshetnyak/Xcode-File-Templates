# Xcode_File_Templates
Xcode File Templates for automatic files creating 

Templates Contains:
===============
- Classic MVVM Templates;
- MVVM + Repository Pattern Templates;
- MVVM + Repository Pattern Templates for separate device development; 

Template Requirements:
===============
- Swinject | https://github.com/Swinject/Swinject | Dependency injection framework for Swift with iOS/macOS/Linux
- RxSwift | https://github.com/ReactiveX/RxSwift | Reactive Programming in Swift


Templates Description:
==============

Classic MVVM Templates:
-----
- ViewModel.swift
- ViewController.swift
- View.storyboard
- Builder.swift

---------------------
MVVM + Repository Pattern Templates
-----
- ViewModel.swift
- ViewController.swift
- View.storyboard
- Builder.swift
- Router.swift
- Route.swift
- Repository.swift

---------------------
MVVM + Repository Pattern Templates for separate device development; 
-----

Base Module:
- ViewModel.swift
- Builder.swift
- Router.swift
- Route.swift
- Repository.swift

Device Modules:
- DeviceViewController.swift
- DeviceView.storyboard
s
Builder files has got possibility for manage current device type.


Setup Guide:
===============
- Go to direction ~/Library/Developer/Xcode/ and set folders with templates
- If direction ~/Library/Developer/Xcode/ already has folder Templates and File Templates -> just use the following folder named MVVM Templates and paste it into File Templates folder.



Usage guide:
===============
- CMD+N -> MVVM Templates
- New -> File -> MVVM Templates
