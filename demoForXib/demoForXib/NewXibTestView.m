//
//  NewXibTestView.m
//  demoForXib
//
//  Created by Pro on 2018/7/21.
//  Copyright © 2018年 Pro. All rights reserved.
//

#import "NewXibTestView.h"

@implementation NewXibTestView

- (instancetype)initWithFrame:(CGRect)frame {

    self = [super initWithFrame:frame];
    self = [[[NSBundle mainBundle] loadNibNamed:@"NewXibTestView" owner:self options:nil] lastObject];
    if (self) {
        self.frame = frame;
    }
    return self;
}

-(void)setTimerString:(NSString *)timerString
{
    
    NSLog(@"view timerstring  %@  ",timerString);

    _timerString = timerString;
    _timerLabel.text = _timerString;
}



@end
