//
//  ViewController.m
//  本地html加载实验
//
//  Created by 张祎 on 16/5/3.
//  Copyright © 2016年 张祎. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>
@interface ViewController ()
@property(nonatomic, strong) WKWebView *wkWebView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /*两种加载html的方法*/
    
    //1
    
    NSURL *baseURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] bundlePath]];
    self.wkWebView = [[WKWebView alloc]initWithFrame:CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 64)];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"];
    NSString *html = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    [self.view addSubview:self.wkWebView];
    [self.wkWebView loadHTMLString:html baseURL:baseURL];
    
    //2
    
//    self.wkWebView = [[WKWebView alloc]initWithFrame:CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 64)];
//    NSURL *url = [[NSBundle mainBundle]URLForResource:@"index" withExtension:@"html"];
//    [self.wkWebView loadRequest:[NSURLRequest requestWithURL:url]];
//    [self.view addSubview:self.wkWebView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
