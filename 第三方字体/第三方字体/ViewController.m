//
//  ViewController.m
//  第三方字体
//
//  Created by a on 2019/8/20.
//  Copyright © 2019 刘雨春. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.、
    
    
    self.view.backgroundColor = [UIColor orangeColor];
    UILabel *textLabel = [[UILabel alloc] init];
    textLabel.text = @"我是新字体";
    textLabel.font = [UIFont fontWithName:@"字魂27号-布丁体" size:13];
    textLabel.frame = CGRectMake(20, 50, 100, 20);
    [self.view addSubview:textLabel];
    
//    AVAudioSession *session=[AVAudioSession sharedInstance];
//    NSError *sessionError;
//    [session setCategory:AVAudioSessionCategoryPlayAndRecord error:&sessionError];
    
    [[AVAudioSession sharedInstance] requestRecordPermission:^(BOOL granted) {
        // CALL YOUR METHOD HERE - as this assumes being called only once from user interacting with permission alert!
        if (granted) {
            // Microphone enabled code
        }
        else {
            // Microphone disabled code
        }
    }];
}


@end
