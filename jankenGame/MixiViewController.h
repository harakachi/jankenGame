//
//  MixiViewController.h
//  jankenGame
//
//  Created by 原田 勝信 on 2013/05/24.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MixiViewController : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *label_title;
// @property (weak, nonatomic) IBOutlet UILabel *label_taisen_aite;
@property (weak, nonatomic) IBOutlet UILabel *label_kekka;
@property (weak, nonatomic) IBOutlet UIButton *btn_pa_outlet;
@property (weak, nonatomic) IBOutlet UIButton *btn_choki_outlet;
@property (weak, nonatomic) IBOutlet UIButton *btn_gu_outlet;
@property (weak, nonatomic) IBOutlet UIButton *btn_retry_outlet;
@property (weak, nonatomic) IBOutlet UIImageView *aite_image;
- (IBAction)btn_pa:(id)sender;
- (IBAction)btn_gu:(id)sender;
- (IBAction)btn_choki:(id)sender;
- (IBAction)btn_retry:(id)sender;



@end
