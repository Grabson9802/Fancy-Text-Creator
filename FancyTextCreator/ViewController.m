//
//  ViewController.m
//  FancyTextCreator
//
//  Created by Krystian Grabowy on 19/03/2022.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _imageView = [[UIImageView alloc]init];
    _label = [[UILabel alloc]init];
    _textField = [[UITextField alloc]init];
    _buttonGreen = [[UIButton alloc]init];
    _buttonBlue = [[UIButton alloc]init];
    _buttonRed = [[UIButton alloc]init];
    _buttonFont1 = [[UIButton alloc]init];
    _buttonFont2 = [[UIButton alloc]init];
    _buttonFont3 = [[UIButton alloc]init];
    _buttonFont4 = [[UIButton alloc]init];
    _shadowButton = [[UIButton alloc]init];
    _buttonSmall = [[UIButton alloc]init];
    _buttonMedium = [[UIButton alloc]init];
    _buttonLarge = [[UIButton alloc]init];
    
    [self.view addSubview:_imageView];
    [self.view addSubview:_label];
    [self.view addSubview:_textField];
    [self.view addSubview:_buttonGreen];
    [self.view addSubview:_buttonBlue];
    [self.view addSubview:_buttonRed];
    [self.view addSubview:_buttonFont1];
    [self.view addSubview:_buttonFont2];
    [self.view addSubview:_buttonFont3];
    [self.view addSubview:_buttonFont4];
    [self.view addSubview:_shadowButton];
    [self.view addSubview:_buttonSmall];
    [self.view addSubview:_buttonMedium];
    [self.view addSubview:_buttonLarge];
    
    [self setupImageView];
    [self setupLabel];
    [self setupTextField];
    [self setupGreenButton];
    [self setupBlueButton];
    [self setupRedButton];
    [self setupButtonFont1];
    [self setupButtonFont2];
    [self setupButtonFont3];
    [self setupButtonFont4];
    [self setupShadowButton];
    [self setupSmallButton];
    [self setupMediumButton];
    [self setupLargeButton];
}

-(void)setupImageView {
    _imageView.translatesAutoresizingMaskIntoConstraints = false;
    [_imageView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor].active = YES;
    [_imageView.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor].active = YES;
    [_imageView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = YES;
    [_imageView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active = YES;
    
    _imageView.image = [UIImage imageNamed:@"Background"];
}

-(void)setupLabel {
    _label.translatesAutoresizingMaskIntoConstraints = false;
    [_label.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor].active = true;
    [_label.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = true;
    [_label.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active = true;
    [_label.heightAnchor constraintEqualToConstant:self.view.frame.size.height / 3].active = true;
    
    _label.textAlignment = NSTextAlignmentCenter;
    _label.textColor = UIColor.blackColor;
    _label.text = @"label";
}

-(void)setupTextField {
    _textField.translatesAutoresizingMaskIntoConstraints = false;
    [_textField.topAnchor constraintEqualToAnchor:_label.bottomAnchor].active = true;
    [_textField.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:10].active = true;
    [_textField.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant: -10].active = true;
    _textField.backgroundColor = UIColor.whiteColor;
    _textField.textColor = UIColor.blackColor;
}

-(void)setupGreenButton {
    _buttonGreen.translatesAutoresizingMaskIntoConstraints = false;
    [_buttonGreen.leadingAnchor constraintEqualToAnchor:_textField.leadingAnchor].active = true;
    [_buttonGreen.topAnchor constraintEqualToAnchor:_textField.bottomAnchor constant:10].active = true;
    [_buttonGreen.trailingAnchor constraintEqualToAnchor:_buttonBlue.leadingAnchor constant:-10].active = true;
    
    [_buttonGreen setTitle:@"Press me green" forState:normal];
    _buttonGreen.backgroundColor = UIColor.greenColor;
}

-(void)setupBlueButton {
    _buttonBlue.translatesAutoresizingMaskIntoConstraints = false;
    [_buttonBlue.centerXAnchor constraintEqualToAnchor:_textField.centerXAnchor].active = true;
    [_buttonBlue.topAnchor constraintEqualToAnchor:_textField.bottomAnchor constant:10].active = true;
    
    [_buttonBlue setTitle:@"Press me blue" forState:normal];
    _buttonBlue.backgroundColor = UIColor.blueColor;
}

-(void)setupRedButton {
    _buttonRed.translatesAutoresizingMaskIntoConstraints = false;
    [_buttonRed.leadingAnchor constraintEqualToAnchor:_buttonBlue.trailingAnchor constant:10].active = true;
    [_buttonRed.topAnchor constraintEqualToAnchor:_textField.bottomAnchor constant:10].active = true;
    [_buttonRed.trailingAnchor constraintEqualToAnchor:_textField.trailingAnchor].active = true;
    
    [_buttonRed setTitle:@"Press me red" forState:normal];
    _buttonRed.backgroundColor = UIColor.redColor;
}

-(void)setupButtonFont1 {
    _buttonFont1.translatesAutoresizingMaskIntoConstraints = false;
    [_buttonFont1.topAnchor constraintEqualToAnchor:_buttonGreen.bottomAnchor constant:10].active = true;
    [_buttonFont1.centerXAnchor constraintEqualToAnchor:_buttonGreen.trailingAnchor].active = true;
    
    [_buttonFont1 setTitle:@"Press me font1" forState:normal];
    _buttonFont1.backgroundColor = UIColor.lightGrayColor;
}

-(void)setupButtonFont2 {
    _buttonFont2.translatesAutoresizingMaskIntoConstraints = false;
    [_buttonFont2.topAnchor constraintEqualToAnchor:_buttonRed.bottomAnchor constant:10].active = true;
    [_buttonFont2.centerXAnchor constraintEqualToAnchor:_buttonRed.leadingAnchor].active = true;
    
    [_buttonFont2 setTitle:@"Press me font2" forState:normal];
    _buttonFont2.backgroundColor = UIColor.lightGrayColor;
}

-(void)setupButtonFont3 {
    _buttonFont3.translatesAutoresizingMaskIntoConstraints = false;
    [_buttonFont3.topAnchor constraintEqualToAnchor:_buttonFont1.bottomAnchor constant:10].active = true;
    [_buttonFont3.leadingAnchor constraintEqualToAnchor:_buttonFont1.leadingAnchor].active = true;
    
    [_buttonFont3 setTitle:@"Press me font3" forState:normal];
    _buttonFont3.backgroundColor = UIColor.lightGrayColor;
}

-(void)setupButtonFont4 {
    _buttonFont4.translatesAutoresizingMaskIntoConstraints = false;
    [_buttonFont4.topAnchor constraintEqualToAnchor:_buttonFont2.bottomAnchor constant:10].active = true;
    [_buttonFont4.leadingAnchor constraintEqualToAnchor:_buttonFont2.leadingAnchor].active = true;
    
    [_buttonFont4 setTitle:@"Press me font4" forState:normal];
    _buttonFont4.backgroundColor = UIColor.lightGrayColor;
}

-(void)setupShadowButton {
    _shadowButton.translatesAutoresizingMaskIntoConstraints = false;
    [_shadowButton.topAnchor constraintEqualToAnchor:_buttonFont3.bottomAnchor constant:10].active = true;
    [_shadowButton.leadingAnchor constraintEqualToAnchor:_buttonGreen.leadingAnchor].active= true;
    [_shadowButton.trailingAnchor constraintEqualToAnchor:_buttonRed.trailingAnchor].active= true;
    
    [_shadowButton setTitle:@"Shadow" forState:normal];
    _shadowButton.backgroundColor = UIColor.lightGrayColor;
}

-(void)setupSmallButton {
    _buttonSmall.translatesAutoresizingMaskIntoConstraints = false;
    [_buttonSmall.leadingAnchor constraintEqualToAnchor:_shadowButton.leadingAnchor].active = true;
    [_buttonSmall.topAnchor constraintEqualToAnchor:_shadowButton.bottomAnchor constant:10].active = true;
    [_buttonSmall.trailingAnchor constraintEqualToAnchor:_buttonMedium.leadingAnchor constant:-10].active = true;
    
    [_buttonSmall setTitle:@"small" forState:normal];
    _buttonSmall.backgroundColor = UIColor.lightGrayColor;
}

-(void)setupMediumButton {
    _buttonMedium.translatesAutoresizingMaskIntoConstraints = false;
    [_buttonMedium.centerXAnchor constraintEqualToAnchor:_shadowButton.centerXAnchor].active = true;
    [_buttonMedium.topAnchor constraintEqualToAnchor:_shadowButton.bottomAnchor constant:10].active = true;
    [_buttonMedium.widthAnchor constraintEqualToConstant:self.view.frame.size.width * 0.28].active = true;
    
    [_buttonMedium setTitle:@"medium" forState:normal];
    _buttonMedium.backgroundColor = UIColor.lightGrayColor;
}

-(void)setupLargeButton {
    _buttonLarge.translatesAutoresizingMaskIntoConstraints = false;
    [_buttonLarge.leadingAnchor constraintEqualToAnchor:_buttonMedium.trailingAnchor constant:10].active = true;
    [_buttonLarge.topAnchor constraintEqualToAnchor:_shadowButton.bottomAnchor constant:10].active = true;
    [_buttonLarge.trailingAnchor constraintEqualToAnchor:_shadowButton.trailingAnchor].active = true;
    
    [_buttonLarge setTitle:@"large" forState:normal];
    _buttonLarge.backgroundColor = UIColor.lightGrayColor;
}

@end
