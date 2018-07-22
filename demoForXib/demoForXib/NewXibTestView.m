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
        [self initSomeSubViews];
    }
    return self;
}

-(void)initSomeSubViews
{
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width ,self.frame.size.height)];
    label.textAlignment = NSTextAlignmentCenter;
    _timeLabel = label;
    [self addSubview:_timeLabel];
    
}

-(void)setTimerString:(NSString *)timerString
{
    
    NSLog(@"view timerstring  %@  ",timerString);
    _timerString = timerString;
    _timeLabel.text = _timerString;
}



@end
