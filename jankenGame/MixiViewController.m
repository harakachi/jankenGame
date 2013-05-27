//
//  MixiViewController.m
//  jankenGame
//
//  Created by 原田 勝信 on 2013/05/24.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "MixiViewController.h"

@interface MixiViewController ()

@end

@implementation MixiViewController

UIImage *gu_img;
UIImage *ch_img;
UIImage *pa_img;

- (void)viewDidLoad
{

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.btn_retry_outlet.hidden = YES;
    self.label_kekka.text = @"";
    self.label_kekka.font = [UIFont boldSystemFontOfSize:30];
    self.label_kekka.textColor = [[UIColor alloc] initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    self.aite_image.image = nil;
    
    gu_img = [UIImage imageNamed:@"gu.png"];
    ch_img = [UIImage imageNamed:@"ch.png"];
    pa_img = [UIImage imageNamed:@"pa.png"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btn_pa:(id)sender {
    self.label_title.text = @"じゃんけん・・・ぽんっ！";
    
    srand(time(Nil));
    NSInteger kekka_rand;
    kekka_rand = rand() % 3;
    if (kekka_rand == 0) {
        self.aite_image.image = pa_img;
        self.label_kekka.text = @"あいこで・・・";
        
    } else if (kekka_rand == 1) {
        self.aite_image.image = gu_img;
        self.label_kekka.text = @"あなたのかちです！";
        self.label_kekka.textColor = [[UIColor alloc] initWithRed:0.0 green:0.0 blue:1.0 alpha:1.0];
        
        self.btn_gu_outlet.hidden = YES;
        self.btn_choki_outlet.hidden = YES;
        self.btn_pa_outlet.enabled = NO;
        self.btn_retry_outlet.hidden = NO;
        
    } else {
        self.aite_image.image = ch_img;
        self.label_kekka.text = @"あなたのまけです";
        self.label_kekka.textColor = [[UIColor alloc] initWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
        
        self.btn_gu_outlet.hidden = YES;
        self.btn_choki_outlet.hidden = YES;
        self.btn_pa_outlet.enabled = NO;
        self.btn_retry_outlet.hidden = NO;
    }
}

- (IBAction)btn_gu:(id)sender {
    self.label_title.text = @"じゃんけん・・・ぽんっ！";
    
    srand(time(Nil));
    NSInteger kekka_rand;
    kekka_rand = rand() % 3;
    if (kekka_rand == 0) {
        
        self.aite_image.image = gu_img;
        self.label_kekka.text = @"あいこで・・・";
        
    } else if (kekka_rand == 1) {
        self.aite_image.image = ch_img;
        self.label_kekka.text = @"あなたのかちです！";
        self.label_kekka.textColor = [[UIColor alloc] initWithRed:0.0 green:0.0 blue:1.0 alpha:1.0];
        
        
        self.btn_pa_outlet.hidden = YES;
        self.btn_choki_outlet.hidden = YES;
        self.btn_gu_outlet.enabled = NO;
        self.btn_retry_outlet.hidden = NO;
        
    } else {
        self.aite_image.image = pa_img;
        self.label_kekka.text = @"あなたのまけです";
        self.label_kekka.textColor = [[UIColor alloc] initWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
        
        self.btn_pa_outlet.hidden = YES;
        self.btn_choki_outlet.hidden = YES;
        self.btn_gu_outlet.enabled = NO;
        self.btn_retry_outlet.hidden = NO;
    }
}

- (IBAction)btn_choki:(id)sender {
    self.label_title.text = @"じゃんけん・・・ぽんっ！";
    
    srand(time(Nil));
    NSInteger kekka_rand;
    kekka_rand = rand() % 3;
    if (kekka_rand == 0) {
        self.aite_image.image = ch_img;
        self.label_kekka.text = @"あいこで・・・";
        
    } else if (kekka_rand == 1) {
        self.aite_image.image = pa_img;
        self.label_kekka.text = @"あなたのかちです！";
        self.label_kekka.textColor = [[UIColor alloc] initWithRed:0.0 green:0.0 blue:1.0 alpha:1.0];
        
        
        self.btn_gu_outlet.hidden = YES;
        self.btn_pa_outlet.hidden = YES;
        self.btn_choki_outlet.enabled = NO;
        self.btn_retry_outlet.hidden = NO;
        
    } else {
        self.aite_image.image = gu_img;
        self.label_kekka.text = @"あなたのまけです";
        self.label_kekka.textColor = [[UIColor alloc] initWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
        
        self.btn_gu_outlet.hidden = YES;
        self.btn_pa_outlet.hidden = YES;
        self.btn_choki_outlet.enabled = NO;
        self.btn_retry_outlet.hidden = NO;
    }

}

- (IBAction)btn_retry:(id)sender {
    
    self.label_title.text = @"じゃんけん・・・";
    self.label_kekka.text = @"";
    
    self.aite_image.image = nil;
    self.label_kekka.textColor = [[UIColor alloc] initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    
    
    self.btn_pa_outlet.hidden = NO;
    self.btn_choki_outlet.hidden = NO;
    self.btn_gu_outlet.hidden = NO;
    
    self.btn_gu_outlet.enabled = YES;
    self.btn_pa_outlet.enabled = YES;
    self.btn_choki_outlet.enabled = YES;
    
    self.btn_retry_outlet.hidden = YES;
    self.aite_image.image = nil;
}
@end
