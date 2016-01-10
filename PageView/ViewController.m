//
//  ViewController.m
//  PageView
//
//  Created by Tom on 16/1/10.
//  Copyright © 2016年 tom. All rights reserved.
//

#import "ViewController.h"
#import "PageView.h"

@interface ViewController ()<PageViewDelegate>
@property (weak, nonatomic) IBOutlet PageView *pageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [_pageView setTitles:@[@"vc1", @"vc2", @"vc3"]];
    UIViewController * vc1 = [UIViewController new];
    vc1.view.backgroundColor = [UIColor redColor];
    UIViewController * vc2 = [UIViewController new];
    vc2.view.backgroundColor = [UIColor yellowColor];
    UIViewController * vc3 = [UIViewController new];
    vc3.view.backgroundColor = [UIColor greenColor];
    [_pageView setViewControllers:@[vc1, vc2, vc3]];
    _pageView.delegate = self;
}

-(void)onPageViewTabChange:(NSInteger)index{
    NSLog(@"%ld", (long)index);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
