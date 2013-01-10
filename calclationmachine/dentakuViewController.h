//
//  dentakuViewController.h
//  calclationmachine
//
//  Created by 大久保　佑馬 on 12/10/23.
//  Copyright (c) 2012年 yuma ohkubo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface dentakuViewController : UIViewController{
    double x;
    double y;
    double z;
    int n;
    int shou;
    int answear;
    int keisan;
    double w;
    double s;
}
@property (weak, nonatomic) IBOutlet UITextField *screen;
@property enum{x,y} state;

- (IBAction)AC:(id)sender;
- (IBAction)minas:(id)sender;
- (IBAction)kake:(id)sender;
- (IBAction)waru:(id)sender;
- (IBAction)plus:(id)sender;
- (IBAction)equal:(id)sender;
- (IBAction)nine:(id)sender;
- (IBAction)eight:(id)sender;
- (IBAction)seven:(id)sender;
- (IBAction)six:(id)sender;
- (IBAction)five:(id)sender;
- (IBAction)four:(id)sender;
- (IBAction)three:(id)sender;
- (IBAction)two:(id)sender;
- (IBAction)one:(id)sender;
- (IBAction)zero:(id)sender;
- (IBAction)dot:(id)sender;

@end
