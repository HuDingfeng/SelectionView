//
//  SelectionView.m
//  hdftest
//
//  Created by 胡定锋Mac on 15/10/10.
//  Copyright © 2015年 hdf-mac. All rights reserved.
//

#import "SelectionView.h"

@implementation SelectionView{
    
    UIView *selectlayer;
}
-(void)drawRect:(CGRect)rect{
    
    selectlayer = [UIView new];
    
    for (UIButton*button in self.subviews) {
        
        UIButton *button1 = (UIButton*)[self viewWithTag:10];
        selectlayer.frame = button1.frame;
        
        button.layer.cornerRadius = 5.0;
        button.layer.borderWidth = 1.0f;
        button.layer.borderColor = [UIColor lightGrayColor].CGColor;
        button.backgroundColor = [UIColor whiteColor];
        
        selectlayer.layer.cornerRadius = 5.0;
        selectlayer.layer.borderWidth = 1.0f;
        selectlayer.layer.borderColor = [UIColor blueColor].CGColor;

        [self addSubview:selectlayer];

    }
}
- (IBAction)click:(id)sender {
    UIButton *button = (UIButton *)sender;
    selectlayer.frame = button.frame;
    [self.delegate choose:button.titleLabel.text];
}
@end
