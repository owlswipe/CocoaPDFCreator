import Cocoa
import WebKit

public func CreatePDF(htmlString: String) {
   var webView = WebView()
   webView.mainFrame.loadHTMLString(htmlString, baseURL: nil)
   let when = DispatchTime.now() + 1
   DispatchQueue.main.asyncAfter(deadline: when) {
   let printOpts: [String : AnyObject] = [NSPrintJobDisposition:NSPrintSaveJob]
   let printInfo: NSPrintInfo = NSPrintInfo(dictionary: printOpts)
   printInfo.paperSize = NSMakeSize(595.22, 841.85)
   printInfo.topMargin = 10.0
   printInfo.leftMargin = 10.0
   printInfo.rightMargin = 10.0
   printInfo.bottomMargin = 10.0
   let printOp: NSPrintOperation = NSPrintOperation(view: self.webView.mainFrame.frameView.documentView, printInfo: printInfo)
   printOp.showsPrintPanel = false
   printOp.showsProgressPanel = false
   printOp.runOperation()
}
}
