# Xcode File Templates
Xcode File Templates for automatic files creating

## Presented Templates:
- Base MVVM Templates
- Base Project Setup Templates (extensions and network & database managers)
- MVVM + Repository Pattern Templates 
- MVVM + Repository Tests

## Template Requirements:
- Swinject | https://github.com/Swinject/Swinject | Dependency injection framework for Swift with iOS/macOS/Linux
- RxSwift | https://github.com/ReactiveX/RxSwift | Reactive Programming in Swift
- Realm | https://github.com/realm/realm-cocoa | Realm is a mobile database: a replacement for Core Data & SQLite
- Moya | https://github.com/Moya/Moya | Network abstraction layer written in Swift

## Templates Contains:

### Base Project Setup:
- Common and useful Extension
- Base Network Layer
- Realm Storage Manager
- Routing system (including animators & transitions)
- StoryboardInitializable & CellInizializable

---------------------
### Base MVVM Templates:
- ViewModel.swift
- ViewController.swift
- View.storyboard
- Builder.swift

---------------------

### MVVM + Repository Pattern Templates:
**Base:**
- ViewModel.swift
- ViewController.swift
- View.storyboard
- Builder.swift
- Router.swift
- Route.swift
- Repository.swift

**Appendix | Unit Tests:**
- ViewModelTests.swift



## Setup Guide:

### Using script | With adding templates in one folder
Only need execute this command in terminal:

```
sudo swift install.swift
```

You should see one of such kind of output message:
``` 
✅  Template installed succesfully 🎉. Enjoy it 🙂"
✅  Template already exists. So has been replaced succesfully 🎉. Enjoy it 🙂
```

### Manual | With Saving Folder structure
1. Open folder Templates/File Template from downloaded or cloned repository. 
2. Go to direction ~/Library/Developer/Xcode/ and set folders with templates
3. If direction ~/Library/Developer/Xcode/ already has folder Templates and File Templates, just use the following folder named MVVM Templates and paste it into File Templates folder.

## Usage guide:
- CMD+N -> and choose Template which you need
- New -> File -> and choose Template which you need

## Author
-[ Ivan Fomenko](https://github.com/ivfomenko " Ivan Fomenko") 

