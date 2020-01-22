import Foundation

struct Template {
    var root: String
    var templatesNames: [String]
}

let templates: [Template] = [
    Template(root: "Templates/File Template/MVVM + Repository Base Templates", templatesNames: ["MVVM + Repository Base.xctemplate", "MVVM + Repository Tests.xctemplate"]),
    Template(root: "Templates/File Template/Base Project Setup", templatesNames: ["Base Network Layer.xctemplate", "Base Project Extensions.xctemplate", "Base Project Inits.xctemplate", "Realm Storage Manager.xctemplate", "Routing.xctemplate"]),
    Template(root: "Templates/File Template/MVVM Templates", templatesNames: ["MVVM Module.xctemplate"])
]

let destinationRelativePath = "/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project Templates/iOS/Application"

func printInConsole(_ message:Any){
    print("====================================")
    print("\(message)")
    print("====================================")
}

func moveTemplate() {
    
    let fileManager = FileManager.default
    let destinationPath = bash(command: "xcode-select", arguments: ["--print-path"]).appending(destinationRelativePath)

    templates.forEach { templateModel in
        templateModel.templatesNames.forEach { templateName in
            do {
                if !fileManager.fileExists(atPath:"\(destinationPath)/\(templateName)"){
                    
                    try fileManager.copyItem(atPath: "\(templateModel.root)/\(templateName)", toPath: "\(destinationPath)/\(templateName)")
                    
                    printInConsole("✅  Template installed succesfully 🎉. Enjoy it 🙂")
                    
                } else {
                    
                    try _ = fileManager.replaceItemAt(URL(fileURLWithPath:"\(destinationPath)/\(templateName)"), withItemAt: URL(fileURLWithPath: "\(templateModel.root)/\(templateName)"))
                    printInConsole("✅  Template already exists. So has been replaced succesfully 🎉. Enjoy it 🙂")
                }
            }
            catch let error as NSError {
                printInConsole("❌  Ooops! Something went wrong 😡 : \(error.localizedFailureReason!)")
            }
        }
    }
    
}

func shell(launchPath: String, arguments: [String]) -> String {
    let task = Process()
    task.launchPath = launchPath
    task.arguments = arguments
    
    let pipe = Pipe()
    task.standardOutput = pipe
    task.launch()
    
    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    let output = String(data: data, encoding: String.Encoding.utf8)!
    if output.count > 0 {
        
        let lastIndex = output.index(before: output.endIndex)
        return String(output[output.startIndex ..< lastIndex])
    }
    return output
}

func bash(command: String, arguments: [String]) -> String {
    let whichPathForCommand = shell(launchPath: "/bin/bash", arguments: [ "-l", "-c", "which \(command)" ])
    return shell(launchPath: whichPathForCommand, arguments: arguments)
}

moveTemplate()
