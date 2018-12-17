import Foundation

do {
    let log = "Coding/beautifulParser/beautiful_parser/not_on_repo/logs.txt"
    let home = FileManager.default.homeDirectoryForCurrentUser
    let file = home.appendingPathComponent(log)
    guard let logFile = YDSelectedFile(file: file) else {
        throw YDError.LogFileFailed
    }
    
    if let results = YDParseFile(logFileUrl: logFile.fileURL){
        let a = results.ydEnumerateResults()
        print(a)
    }
    
    exit(EXIT_SUCCESS)
}
catch {
    print(error.localizedDescription)
}
