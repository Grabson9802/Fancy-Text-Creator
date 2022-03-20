//
//  ViewController.h
//  FancyTextCreator
//
//  Created by Krystian Grabowy on 19/03/2022.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    CGFloat fontSize;
    BOOL state;
}

@property (strong, nonatomic) UIImageView *imageView;
@property (strong, nonatomic) UILabel *label;
@property (strong, nonatomic) UITextField *textField;
@property (strong, nonatomic) UIButton *buttonGreen;
@property (strong, nonatomic) UIButton *buttonBlue;
@property (strong, nonatomic) UIButton *buttonRed;
@property (strong, nonatomic) UIButton *buttonFont1;
@property (strong, nonatomic) UIButton *buttonFont2;
@property (strong, nonatomic) UIButton *buttonFont3;
@property (strong, nonatomic) UIButton *buttonFont4;
@property (strong, nonatomic) UIButton *shadowButton;
@property (strong, nonatomic) UIButton *buttonSmall;
@property (strong, nonatomic) UIButton *buttonMedium;
@property (strong, nonatomic) UIButton *buttonLarge;

@end

