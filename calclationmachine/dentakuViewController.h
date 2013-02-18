//
//  dentakuViewController.h
//  calclationmachine
//
//  Created by 大久保　佑馬 on 12/10/23.
//  Copyright (c) 2012年 yuma ohkubo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StateMachine.h"


@interface dentakuViewController : UIViewController{
    
    
    double A;
    double B;
    
}
@property StateMachine* model;

@property enum {x,y} state;
@property (weak, nonatomic) IBOutlet UILabel *result;
- (IBAction)zero:(id)sender;//0
- (IBAction)dot:(id)sender;//小数点
- (IBAction)equal:(id)sender;//=
- (IBAction)one:(id)sender;//1
- (IBAction)two:(id)sender;//2
- (IBAction)three:(id)sender;//3
- (IBAction)four:(id)sender;//4
- (IBAction)five:(id)sender;//5
- (IBAction)six:(id)sender;//6
- (IBAction)plus:(id)sender;//+
- (IBAction)seven:(id)sender;//7
- (IBAction)eight:(id)sender;//8
- (IBAction)nine:(id)sender;//9
- (IBAction)minus:(id)sender;//-
- (IBAction)AC:(id)sender;//AC
- (IBAction)waru:(id)sender;//÷
- (IBAction)multiply:(id)sender;//×
@end