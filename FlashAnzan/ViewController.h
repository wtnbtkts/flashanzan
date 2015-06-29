//
//  ViewController.h
//  FlashAnzan
//
//  Created by Takatoshi Watanabe on 2015/06/27.
//  Copyright (c) 2015年 渡辺 貴俊. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    IBOutlet UILabel *label;
    IBOutlet UITextField *textField;
    NSTimer *timer;
    int count;
    int sum;
}

- (IBAction)ok;

@end
