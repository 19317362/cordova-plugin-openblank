//
//  CDVWKWebViewUIDelegate+OpenBlank.m
//  Nyheder
//
//  Created by Alejandro Paredes Alva on 09/03/16.
//
//

#import "CDVUIWebViewUIDelegate+OpenBlank.h"

@implementation CDVUIWebViewUIDelegate (OpenBlank)
- (UIWebView *)webView:(UIWebView *)webView createWebViewWithConfiguration:(UIWebViewConfiguration *)configuration forNavigationAction:(WKNavigationAction *)navigationAction windowFeatures:(WKWindowFeatures *)windowFeatures {
    if (!navigationAction.targetFrame.isMainFrame) {
      NSURL *url = [[navigationAction request] URL];
      UIApplication *application = [UIApplication sharedApplication];
      if ([application canOpenURL:url]) {
        [application openURL:url];
      }
    }
    return nil;
}
@end
