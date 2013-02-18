//
//  StateMachine.h
//  calclationmachine
//
//  Created by 大久保　佑馬 on 13/02/18.
//  Copyright (c) 2013年 yuma ohkubo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StateMachine : NSObject{

double x;
double y;
double shou;
int answer;
double Z;
double w;
double s;


}

- (double)calc;
- (double)number:(double)a;
- (void)fugou:(double)b;
- (void)kansuu;
- (void)dot;


@end
