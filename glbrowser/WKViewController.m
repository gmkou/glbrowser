//
//  WKViewController.m
//  glbrowser
//
//  Created by Kousuke Nagano on 2012/09/06.
//  Copyright (c) 2012年 Kousuke Nagano. All rights reserved.
//

#import "WKViewController.h"

@interface WKViewController ()

@end

@implementation WKViewController

@synthesize webView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    webView.scalesPageToFit = YES;
    webView.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
    
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://code.google.com/p/webglsamples/"]]];
    //Enable WebGL
    id webDocumentView = [webView performSelector:@selector(_browserView)];
    id backingWebView = [webDocumentView performSelector:@selector(webView)];
    [backingWebView setValue:[NSNumber numberWithBool:YES] forKey:@"WebGLEnabled"];
}

- (IBAction)openButtonPress:(id)sender{
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://code.google.com/p/webglsamples/"]]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
