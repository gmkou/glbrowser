//
//  WKViewController.h
//  glbrowser
//
//  Created by Kousuke Nagano on 2012/09/06.
//  Copyright (c) 2012年 Kousuke Nagano. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WKViewController : UIViewController
{
    IBOutlet UIWebView *webView;
}
- (IBAction)openButtonPress:(id)sender;

@property (nonatomic, retain) IBOutlet UIWebView *webView;

@end
