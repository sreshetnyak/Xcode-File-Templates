# Xcode_File_Templates
Xcode File Templates for automatic files creating 

Templates Contains:
===============
- Classic MVVM Templates
- Base Project Setup Templates (extensions and network & database managers)
- MVVM + Repository Pattern Templates 
- MVVM + Repository Tests
- MVVM + Repository Pattern Templates for separate device development

Template Requirements:
===============
- Swinject | https://github.com/Swinject/Swinject | Dependency injection framework for Swift with iOS/macOS/Linux
- RxSwift | https://github.com/ReactiveX/RxSwift | Reactive Programming in Swift
- Realm | https://github.com/realm/realm-cocoa | Realm is a mobile database: a replacement for Core Data & SQLite
- Moya | https://github.com/Moya/Moya | Network abstraction layer written in Swift

Templates Description:
==============

Base Project Setup:
----- 
- Common and useful Extension
- Base Network Layer
- Realm Storage Manager
- Routing system (including animators & transitions)
- StoryboardInitializable & CellInizializable

---------------------
Classic MVVM Templates:
-----
- ViewModel.swift
- ViewController.swift
- View.storyboard
- Builder.swift

---------------------
MVVM + Repository Pattern Templates:
-----
Base:
- ViewModel.swift
- ViewController.swift
- View.storyboard
- Builder.swift
- Router.swift
- Route.swift
- Repository.swift

Base:
- ViewModelTests.swift

---------------------
MVVM + Repository Pattern Templates for separate device development: 
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

Builder files has got possibility for manage current device type.


Setup Guide:
===============
- Go to direction ~/Library/Developer/Xcode/ and set folders with templates
- If direction ~/Library/Developer/Xcode/ already has folder Templates and File Templates -> just use the following folder named MVVM Templates and paste it into File Templates folder.



Usage guide:
===============
- CMD+N -> MVVM Templates
- New -> File -> MVVM Templates
