//
//  ViewController.m
//  FlashAnzan
//
//  Created by Takatoshi Watanabe on 2015/06/27.
//  Copyright (c) 2015年 渡辺 貴俊. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	timer = [NSTimer scheduledTimerWithTimeInterval:1
                                             target:self
                                           selector:@selector(rand)
                                           userInfo:nil
                                            repeats:YES];
}

- (void)rand{
    count = count + 1;
    if(count <= 3){
        int random;
        random = arc4random() % 100;
        sum = sum + random;
        label.text = [NSString stringWithFormat:@"%d", random];
    }else{
        label.text = @"答えは？";
        [timer invalidate];
    }
}

- (IBAction)ok{
    if(textField.text.intValue == sum){
        label.text = @"正解！";
    }else{
        label.text = @"残念！";
    }
}

@end
