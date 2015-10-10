//
//  SelectionView.h
//  hdftest
//
//  Created by 胡定锋Mac on 15/10/10.
//  Copyright © 2015年 hdf-mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SelectionViewDelegate<NSObject>

-(void)choose:(NSString *)info;

@end

@interface SelectionView : UIView

@property(nonatomic,assign) id <SelectionViewDelegate> delegate;

@end
