//
//  ViewController.m
//  demoForXib
//
//  Created by Pro on 2018/7/21.
//  Copyright © 2018年 Pro. All rights reserved.
//

#import "NewXibTestView.h"
#import "ViewController.h"

@interface ViewController ()

//newXibView
@property (nonatomic,strong) NewXibTestView * infoView;

@property (nonatomic,strong) NSTimer * timer;

@property (nonatomic,assign) int value;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    self.infoView = [[NewXibTestView alloc] initWithFrame:CGRectMake(15, 100, [UIScreen mainScreen].bounds.size.width - 30, 100)];
    [self.view addSubview:self.infoView];
    
    self.timer =[NSTimer scheduledTimerWithTimeInterval:1.0f
    
                                                       target:self
    
                                                     selector:@selector(timerMethod)     userInfo:nil
    
                                                      repeats:YES];
    
    _value = 1;
    
}

-(void)timerMethod
{
    _value += 1;
    NSLog(@"view comtroller %d  ",_value);
    self.infoView.timerString = [NSString stringWithFormat:@"%d",_value];
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.timer invalidate];
    self.timer = nil;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
