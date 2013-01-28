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
int shou=0;
int answear=0;
int keisan=0;
double w=0;
double s=0;
double r=0;


- (IBAction)AC:(id)sender { //ACボタン：すべての変数を初期化する
    x=0;
    y=0;
    z=0;
    n=1;
    shou=0;
    answear=0;
    keisan=0;
    w=0;
    s=0;
    r=0;
            [[self screen] setText:[NSString stringWithFormat:@"%d",0]];

}

- (IBAction)minas:(id)sender { //マイナスの演算プログラム
    if(keisan==0){ //一番最初にマイナス演算を押したとき
        keisan=1; //入力したxの値を読み込む
        n=1;
        shou=0;
        [[self screen] setText:[NSString stringWithFormat:@"%g",x]];
        answear=2; //equalの演算プログラムをanswearが2にスイッチする
        y=0;
    }
    else{ //一回以上演算をしていたとき
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

- (IBAction)kake:(id)sender { //掛ける演算
    if(keisan==0){
        keisan=1;
        n=1;
        shou=0;
        [[self screen] setText:[NSString stringWithFormat:@"%g",x]];
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

- (IBAction)waru:(id)sender { //割る演算プログラム
    if(keisan==0){
        keisan=1;
        n=1;
        shou=0;
        [[self screen] setText:[NSString stringWithFormat:@"%g",x]];
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

- (IBAction)plus:(id)sender { //足す演算プログラム
    if(keisan==0){
        keisan=1;
        n=1;
        shou=0;
     [[self screen] setText:[NSString stringWithFormat:@"%g",x]];
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

- (IBAction)equal:(id)sender { //計算結果を出す
    switch(answear){
        case 1: //足し算の場合
            z=x+y;
            [[self screen] setText:[NSString stringWithFormat:@"%g",z]];
            x=z;
            y=0;
            keisan=0;
            break;
            
        case 2: //引き算の場合
            z=x-y;
            [[self screen] setText:[NSString stringWithFormat:@"%g",z]];
            x=z;
            y=0;
            keisan=0;
        break;
            
        case 3: //かけ算の場合
            z=x*y;
            [[self screen] setText:[NSString stringWithFormat:@"%g",z]];
            x=z;
            y=0;
            keisan=0;
        break;
            
        case 4: //割り算の場合
            z=x/y;
            [[self screen] setText:[NSString stringWithFormat:@"%g",z]];
            x=z;
            y=0;
            keisan=0;
        break;
    }
}

- (IBAction)nine:(id)sender { //9のボタンを押したときの操作
    switch (keisan) {
        case 0: //演算子を押す前の値の入力
            if(shou == 0){ //小数点を押していないとき
                x=x*10+9; //元の数を十倍してその値を足す
                [[self screen] setText:[NSString stringWithFormat:@"%g",x]];
            }
            
            else if(shou == 1){ //小数点を押しているとき
                w=9*pow(10,(-n)); //押した値を１０分の１する
                s=w+x; //１０分の１した値をもとの値に足す
                [[self screen] setText:[NSString stringWithFormat:@"%g",s]];
                x=s;
                n=n+1;
            }
            break;
            
        case 1: //演算子を押した後の値の入力
            if(shou == 0){
                y=y*10+9;
                [[self screen] setText:[NSString stringWithFormat:@"%g",y]];
            }
            
            else if(shou == 1){
                w=9*pow(10,(-n));
                r=w+y;
                [[self screen] setText:[NSString stringWithFormat:@"%g",r]];
                y=r;
                n=n+1;
            }
            
            break;
    }
}

- (IBAction)eight:(id)sender { //8を押したときの操作
    switch (keisan) {
        case 0:
            if(shou == 0){
                x=x*10+8;
                [[self screen] setText:[NSString stringWithFormat:@"%g",x]];
            }
            
            else if(shou == 1){
                w=8*pow(10,(-n));
                s=w+x;
                [[self screen] setText:[NSString stringWithFormat:@"%g",s]];
                x=s;
                n=n+1;
            }
            break;
            
        case 1:
            if(shou == 0){
                y=y*10+8;
                [[self screen] setText:[NSString stringWithFormat:@"%g",y]];
            }
            
            else if(shou == 1){
                w=8*pow(10,(-n));
                r=w+y;
                [[self screen] setText:[NSString stringWithFormat:@"%g",r]];
                y=r;
                n=n+1;
            }
            
            break;
    }
}

- (IBAction)seven:(id)sender { //7を押したときの操作
    switch (keisan) {
        case 0:
            if(shou == 0){
                x=x*10+7;
                [[self screen] setText:[NSString stringWithFormat:@"%g",x]];
            }
            
            else if(shou == 1){
                w=7*pow(10,(-n));
                s=x+w;
                [[self screen] setText:[NSString stringWithFormat:@"%g",s]];
                x=s;
                n=n+1;
            }
            break;
            
        case 1:
            if(shou == 0){
                y=y*10+7;
                [[self screen] setText:[NSString stringWithFormat:@"%g",y]];
            }
            
            else if(shou == 1){
                w=7*pow(10,(-n));
                r=w+y;
                [[self screen] setText:[NSString stringWithFormat:@"%g",r]];
                y=r;
                n=n+1;
            }
            
            break;
    }
}

- (IBAction)six:(id)sender { //6を押したときの操作
    switch (keisan) {
        case 0:
            if(shou == 0){
                x=x*10+6;
                [[self screen] setText:[NSString stringWithFormat:@"%g",x]];
            }
            
            else if(shou == 1){
                w=6*pow(10,(-n));
                s=w+x;
                [[self screen] setText:[NSString stringWithFormat:@"%g",s]];
                x=s;
                n=n+1;
            }
            break;
            
        case 1:
            if(shou == 0){
                y=y*10+6;
                [[self screen] setText:[NSString stringWithFormat:@"%g",y]];
            }
            
            else if(shou == 1){
                w=6*pow(10,(-n));
                r=w+y;
                [[self screen] setText:[NSString stringWithFormat:@"%g",r]];
                y=r;
                n=n+1;
            }
            
            break;
    }
}

- (IBAction)five:(id)sender { //5を押したときの操作
    switch (keisan) {
        case 0:
            if(shou == 0){
                x=x*10+5;
                [[self screen] setText:[NSString stringWithFormat:@"%g",x]];
            }
            
            else if(shou == 1){
                w=5*pow(10,(-n));
                s=w+x;
                [[self screen] setText:[NSString stringWithFormat:@"%g",s]];
                x=s;
                n=n+1;
            }
            break;
            
        case 1:
            if(shou == 0){
                y=y*10+5;
                [[self screen] setText:[NSString stringWithFormat:@"%g",y]];
            }
            
            else if(shou == 1){
                w=5*pow(10,(-n));
                r=w+y;
                [[self screen] setText:[NSString stringWithFormat:@"%g",r]];
                y=r;
                n=n+1;
            }
            
            break;
    }
}

- (IBAction)four:(id)sender { //4を押したときの操作
    switch (keisan) {
        case 0:
            if(shou == 0){
                x=x*10+4;
                [[self screen] setText:[NSString stringWithFormat:@"%g",x]];
            }
            
            else if(shou == 1){
                w=4*pow(10,(-n));
                s=w+x;
                [[self screen] setText:[NSString stringWithFormat:@"%g",s]];
                x=s;
                n=n+1;
            }
            break;
            
        case 1:
            if(shou == 0){
                y=y*10+4;
                [[self screen] setText:[NSString stringWithFormat:@"%g",y]];
            }
            
            else if(shou == 1){
                w=4*pow(10,(-n));
                r=w+y;
                [[self screen] setText:[NSString stringWithFormat:@"%g",r]];
                y=r;
                n=n+1;
            }
            
            break;
    }
}

- (IBAction)three:(id)sender { //3を押したときの操作
    switch (keisan) {
        case 0:
            if(shou == 0){
                x=x*10+3;
                [[self screen] setText:[NSString stringWithFormat:@"%g",x]];
            }
            
            else if(shou == 1){
                w=3*pow(10,(-n));
                s=w+x;
                [[self screen] setText:[NSString stringWithFormat:@"%g",s]];
                x=s;
                n=n+1;
            }
            break;
            
        case 1:
            if(shou == 0){
                y=y*10+3;
                [[self screen] setText:[NSString stringWithFormat:@"%g",y]];
            }
            
            else if(shou == 1){
                w=3*pow(10,(-n));
                r=w+y;
                [[self screen] setText:[NSString stringWithFormat:@"%g",r]];
                y=r;
                n=n+1;
            }
            
            break;
    }
}

- (IBAction)two:(id)sender { //2を押したときの操作
    switch (keisan) {
        case 0:
            if(shou == 0){
                x=x*10+2;
                [[self screen] setText:[NSString stringWithFormat:@"%g",x]];
            }
            
            else if(shou == 1){
                w=2*pow(10,(-n));
                s=w+x;
                [[self screen] setText:[NSString stringWithFormat:@"%g",s]];
                x=s;
                n=n+1;
            }
            break;
            
        case 1:
            if(shou == 0){
                y=y*10+2;
                [[self screen] setText:[NSString stringWithFormat:@"%g",y]];
            }
            
            else if(shou == 1){
                w=2*pow(10,(-n));
                r=w+y;
                [[self screen] setText:[NSString stringWithFormat:@"%g",r]];
                y=r;
                n=n+1;
            }
            
            break;
    }
}

- (IBAction)one:(id)sender { //1を押したときの操作
    switch (keisan) {
        case 0:
            if(shou == 0){
            x=x*10+1;
            [[self screen] setText:[NSString stringWithFormat:@"%g",x]];
            }
            
            else if(shou == 1){
                w=1*pow(10,(-n));
                s=w+x;
                [[self screen] setText:[NSString stringWithFormat:@"%g",s]];
                x=s;
                n=n+1;
            }
            break;
            
        case 1:
            if(shou == 0){
            y=y*10+1;
            [[self screen] setText:[NSString stringWithFormat:@"%g",y]];
            }
            
            else if(shou == 1){
                w=1*pow(10,(-n));
                r=w+y;
                [[self screen] setText:[NSString stringWithFormat:@"%g",r]];
                y=r;
                n=n+1;
            }
            
                break;
    }
}

- (IBAction)zero:(id)sender { //0を押したときの操作
    switch (keisan) {
        case 0:
            if(shou == 0){
                x=x*10;
                [[self screen] setText:[NSString stringWithFormat:@"%g",x]];
            }
            
            else if(shou == 1){
                w=0*pow(10,(-n));
                s=w+x;
                [[self screen] setText:[NSString stringWithFormat:@"%g",s]];
                x=s;
                n=n+1;
            }
            break;
            
        case 1:
            if(shou == 0){
                y=y*10;
                [[self screen] setText:[NSString stringWithFormat:@"%g",y]];
            }
            
            else if(shou == 1){
                w=0*pow(10,(-n));
                r=w+y;
                [[self screen] setText:[NSString stringWithFormat:@"%g",r]];
                y=r;
                n=n+1;
            }
            
            break;
    }
}

- (IBAction)dot:(id)sender { //小数点を押したときの操作
    shou=1; //shou変数を１にする
    [[self screen] setText:[NSString stringWithFormat:@"."]];
    
    /*switch (keisan){
        case 0:
            w=x*pow(10,(-n));
            s=w+x;
            [[self screen] setText:[NSString stringWithFormat:@"%g",s]];
            x=s;
            n=n+1;
            
        case 1:
            w=y*pow(10,(-n));
            r=w+y;
            [[self screen] setText:[NSString stringWithFormat:@"%g",r]];
            y=r;
            n=n+1;
    }*/
}


@end
