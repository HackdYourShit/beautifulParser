import Cocoa

class YDWindowController: NSWindowController {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
        if let ydwindow = window, let screen = window?.screen {
        
            ydwindow.title = "YDWindowController"
            ydwindow.minSize = NSSize(width: 410, height: 400 )
            
            let offsetFromLeftOfScreen: CGFloat = 300
            let offsetFromTopOfScreen: CGFloat = 300

            let screenRect = screen.visibleFrame
            let newOriginY = screenRect.maxY - ydwindow.frame.height - offsetFromTopOfScreen
            ydwindow.setFrameOrigin(NSPoint(x: offsetFromLeftOfScreen, y: newOriginY))
        }
    }
}