//
//  dentakuViewController.m
//  calclationmachine
//
//  Created by 大久保　佑馬 on 12/10/23.
//  Copyright (c) 2012年 yuma ohkubo. All rights reserved.
//

#import "dentakuViewController.h"

@interface dentakuViewController ()

@end

@implementation dentakuViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

double x=0;
double y=0;
double z=0;
int n=1;
int shou;
int answear;
int keisan=0;
double w=0;
double s=0;


- (IBAction)AC:(id)sender {
    x=0;
    y=0;
    z=0;
    n=1;
    shou=0;
    answear=0;
    keisan=0;
    w=0;
    s=0;
            [[self screen] setText:[NSString stringWithFormat:@"%d",0]];

}

- (IBAction)minas:(id)sender {
    if(keisan==0){
        keisan=1;
        n=1;
        shou=0;
        [[self screen] setText:[NSString stringWithFormat:@"%d",0]];
        answear=2;
        y=0;
    }
    else{
        keisan=1;
        n=1;
        shou=0;
        answear=2;
        z=x-y;
        [[self screen] setText:[NSString stringWithFormat:@"%g",z]];
        x=z;
        y=0;
    }
}

- (IBAction)kake:(id)sender {
    if(keisan==0){
        keisan=1;
        n=1;
        shou=0;
        [[self screen] setText:[NSString stringWithFormat:@"%d",0]];
        answear=3;
        y=0;
    }
    else{
        keisan=1;
        n=1;
        shou=0;
        answear=3;
        z=x*y;
        [[self screen] setText:[NSString stringWithFormat:@"%g",z]];
        x=z;
        y=0;
    }
}

- (IBAction)waru:(id)sender {
    if(keisan==0){
        keisan=1;
        n=1;
        shou=0;
        [[self screen] setText:[NSString stringWithFormat:@"%d",0]];
        answear=4;
        y=0;
    }
    else{
        keisan=1;
        n=1;
        shou=0;
        answear=4;
        z=x/y;
        [[self screen] setText:[NSString stringWithFormat:@"%g",z]];
        x=z;
        y=0;
    }
}

- (IBAction)plus:(id)sender {
    if(keisan==0){
        keisan=1;
        n=1;
        shou=0;
     [[self screen] setText:[NSString stringWithFormat:@"%d",0]];
        answear=1;
        y=0;
    }
    else{
        keisan=1;
        n=1;
        shou=0;
        answear=1;
        z=x+y;
        [[self screen] setText:[NSString stringWithFormat:@"%g",z]];
        x=z;
        y=0;
    }
}

- (IBAction)equal:(id)sender {
    switch(answear){
        case 1:
            z=x+y;
            [[self screen] setText:[NSString stringWithFormat:@"%g",z]];
            x=z;
            y=0;
            keisan=1;
            break;
            
        case 2:
            z=x-y;
            [[self screen] setText:[NSString stringWithFormat:@"%g",z]];
            x=z;
            y=0;
            keisan=1;
        break;
            
        case 3:
            z=x*y;
            [[self screen] setText:[NSString stringWithFormat:@"%g",z]];
            x=z;
            y=0;
            keisan=1;
        break;
            
        case 4:
            z=x/y;
            [[self screen] setText:[NSString stringWithFormat:@"%g",z]];
            x=z;
            y=0;
            keisan=1;
        break;
    }
}

- (IBAction)nine:(id)sender {
    switch ([self state]) {
        case 0:
            x=x*10+9;
            [self setState:0];
            [[self screen] setText:[NSString stringWithFormat:@"%g",x]];
            
        case 1:
            y=y*10+9;
            [self setState:1];
            [[self screen] setText:[NSString stringWithFormat:@"%g",y]];            break;
    }
}

- (IBAction)eight:(id)sender {
    switch ([self state]) {
        case 0:
            x=x*10+8;
            [self setState:0];
            [[self screen] setText:[NSString stringWithFormat:@"%g",x]];
            
        case 1:
            y=y*10+8;
            [self setState:1];
            [[self screen] setText:[NSString stringWithFormat:@"%g",y]];         break;
    }
}

- (IBAction)seven:(id)sender {
    switch ([self state]) {
        case 0:
            x=x*10+7;
            [self setState:0];
            [[self screen] setText:[NSString stringWithFormat:@"%g",x]];
            
        case 1:
            y=y*10+7;
            [self setState:1];
            [[self screen] setText:[NSString stringWithFormat:@"%g",y]];             break;
    }
}

- (IBAction)six:(id)sender {
    switch ([self state]) {
        case 0:
            x=x*10+6;
            [self setState:0];
            [[self screen] setText:[NSString stringWithFormat:@"%g",x]];
            
        case 1:
            y=y*10+6;
            [self setState:1];
            [[self screen] setText:[NSString stringWithFormat:@"%g",y]];             break;
    }
}

- (IBAction)five:(id)sender {
    switch ([self state]) {
        case 0:
            x=x*10+5;
            [self setState:0];
            [[self screen] setText:[NSString stringWithFormat:@"%g",x]];
            
        case 1:
            y=y*10+5;
            [self setState:1];
            [[self screen] setText:[NSString stringWithFormat:@"%g",y]];             break;
    }
}

- (IBAction)four:(id)sender {
    switch ([self state]) {
        case 0:
            x=x*10+4;
            [self setState:0];
            [[self screen] setText:[NSString stringWithFormat:@"%g",x]];
            
        case 1:
            y=y*10+4;
            [self setState:1];
            [[self screen] setText:[NSString stringWithFormat:@"%g",y]];             break;
    }
}

- (IBAction)three:(id)sender {
    switch ([self state]) {
        case 0:
            x=x*10+3;
            [self setState:0];
            [[self screen] setText:[NSString stringWithFormat:@"%g",x]];
            
        case 1:
            y=y*10+3;
            [self setState:1];
            [[self screen] setText:[NSString stringWithFormat:@"%g",y]];             break;
    }
}

- (IBAction)two:(id)sender {
    switch ([self state]) {
        case 0:
            x=x*10+2;
            [self setState:0];
            [[self screen] setText:[NSString stringWithFormat:@"%g",x]];
            
        case 1:
            y=y*10+2;
            [self setState:1];
            [[self screen] setText:[NSString stringWithFormat:@"%g",y]];             break;
    }
}

- (IBAction)one:(id)sender {
    switch ([self state]) {
        case 0:
            x=x*10+1;
            [self setState:0];
            [[self screen] setText:[NSString stringWithFormat:@"%g",x]];
            
        case 1:
            y=y*10+1;
            [self setState:1];
            [[self screen] setText:[NSString stringWithFormat:@"%g",y]];             break;
    }
}

- (IBAction)zero:(id)sender {
    switch ([self state]) {
        case 0:
            x=x*10;
            [self setState:0];
            [[self screen] setText:[NSString stringWithFormat:@"%g",x]];
            
        case 1:
            y=y*10;
            [self setState:1];
            [[self screen] setText:[NSString stringWithFormat:@"%g",y]];             break;
    }
}

- (IBAction)dot:(id)sender {
}


@end
