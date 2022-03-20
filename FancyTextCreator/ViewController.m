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
    
    state = false;
    fontSize = 33;
    
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
    _label.text = @"Enter Text Below";
    _label.font = [UIFont fontWithName:@"Blacksword" size:50];
    _label.adjustsFontSizeToFitWidth = YES;
}

-(void)setupTextField {
    _textField.translatesAutoresizingMaskIntoConstraints = false;
    [_textField.topAnchor constraintEqualToAnchor:_label.bottomAnchor].active = true;
    [_textField.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:10].active = true;
    [_textField.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant: -10].active = true;
    _textField.backgroundColor = UIColor.whiteColor;
    _textField.textColor = UIColor.blackColor;
    _textField.placeholder = @"Enter text";
    _textField.backgroundColor = UIColor.lightGrayColor;
    _textField.textAlignment = NSTextAlignmentCenter;
    [_textField addTarget:self action:@selector(dismissKeyboard:) forControlEvents:UIControlEventEditingDidEndOnExit];
}
-(void)dismissKeyboard: (id)sender {
    self.label.text = self.textField.text;
    [self resignFirstResponder];
}

-(void)setupGreenButton {
    _buttonGreen.translatesAutoresizingMaskIntoConstraints = false;
    [_buttonGreen.leadingAnchor constraintEqualToAnchor:_textField.leadingAnchor].active = true;
    [_buttonGreen.topAnchor constraintEqualToAnchor:_textField.bottomAnchor constant:10].active = true;
    [_buttonGreen.trailingAnchor constraintEqualToAnchor:_buttonBlue.leadingAnchor constant:-10].active = true;
    
    [_buttonGreen setTitle:@"Green" forState:normal];
    _buttonGreen.backgroundColor = UIColor.lightGrayColor;
    [_buttonGreen setTitleColor:UIColor.blackColor forState:normal];
    [_buttonGreen addTarget:self action:@selector(greenButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)greenButtonPressed: (id)sender {
    self.label.textColor = [UIColor greenColor];
}

-(void)setupBlueButton {
    _buttonBlue.translatesAutoresizingMaskIntoConstraints = false;
    [_buttonBlue.centerXAnchor constraintEqualToAnchor:_textField.centerXAnchor].active = true;
    [_buttonBlue.topAnchor constraintEqualToAnchor:_textField.bottomAnchor constant:10].active = true;
    [_buttonBlue.widthAnchor constraintEqualToConstant:self.view.frame.size.width * 0.28].active = true;
    
    [_buttonBlue setTitle:@"Blue" forState:normal];
    _buttonBlue.backgroundColor = UIColor.lightGrayColor;
    [_buttonBlue setTitleColor:UIColor.blackColor forState:normal];
    [_buttonBlue addTarget:self action:@selector(blueButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)blueButtonPressed: (id)sender {
    self.label.textColor = [UIColor blueColor];
}

-(void)setupRedButton {
    _buttonRed.translatesAutoresizingMaskIntoConstraints = false;
    [_buttonRed.leadingAnchor constraintEqualToAnchor:_buttonBlue.trailingAnchor constant:10].active = true;
    [_buttonRed.topAnchor constraintEqualToAnchor:_textField.bottomAnchor constant:10].active = true;
    [_buttonRed.trailingAnchor constraintEqualToAnchor:_textField.trailingAnchor].active = true;
    
    [_buttonRed setTitle:@"Red" forState:normal];
    _buttonRed.backgroundColor = UIColor.lightGrayColor;
    [_buttonRed setTitleColor:UIColor.blackColor forState:normal];
    [_buttonRed addTarget:self action:@selector(redButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)redButtonPressed: (id)sender {
    self.label.textColor = [UIColor redColor];
}

-(void)setupButtonFont1 {
    _buttonFont1.translatesAutoresizingMaskIntoConstraints = false;
    [_buttonFont1.topAnchor constraintEqualToAnchor:_buttonGreen.bottomAnchor constant:10].active = true;
    [_buttonFont1.leadingAnchor constraintEqualToAnchor:_textField.leadingAnchor].active = true;
    [_buttonFont1.widthAnchor constraintEqualToConstant:self.view.frame.size.width * 0.45].active = true;
    
    [_buttonFont1 setTitle:@"Font 1" forState:normal];
    _buttonFont1.backgroundColor = UIColor.lightGrayColor;
    _buttonFont1.titleLabel.font = [UIFont fontWithName:@"Blacksword" size:20];
    [_buttonFont1 setTitleColor:UIColor.blackColor forState:normal];
    [_buttonFont1 addTarget:self action:@selector(buttonFont1Pressed:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)buttonFont1Pressed: (id)sender {
    self.label.font = [UIFont fontWithName:@"Blacksword" size:fontSize];
}

-(void)setupButtonFont2 {
    _buttonFont2.translatesAutoresizingMaskIntoConstraints = false;
    [_buttonFont2.topAnchor constraintEqualToAnchor:_buttonRed.bottomAnchor constant:10].active = true;
    [_buttonFont2.trailingAnchor constraintEqualToAnchor:_textField.trailingAnchor].active = true;
    [_buttonFont2.widthAnchor constraintEqualToConstant:self.view.frame.size.width * 0.45].active = true;
    
    [_buttonFont2 setTitle:@"Font 2" forState:normal];
    _buttonFont2.backgroundColor = UIColor.lightGrayColor;
    _buttonFont2.titleLabel.font = [UIFont fontWithName:@"LemonMilk" size:20];
    [_buttonFont2 setTitleColor:UIColor.blackColor forState:normal];
    [_buttonFont2 addTarget:self action:@selector(buttonFont2Pressed:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)buttonFont2Pressed: (id)sender {
    self.label.font = [UIFont fontWithName:@"LemonMilk" size:fontSize];
}

-(void)setupButtonFont3 {
    _buttonFont3.translatesAutoresizingMaskIntoConstraints = false;
    [_buttonFont3.topAnchor constraintEqualToAnchor:_buttonFont1.bottomAnchor constant:10].active = true;
    [_buttonFont3.leadingAnchor constraintEqualToAnchor:_textField.leadingAnchor].active = true;
    [_buttonFont3.widthAnchor constraintEqualToConstant:self.view.frame.size.width * 0.45].active = true;
    
    [_buttonFont3 setTitle:@"Font 3" forState:normal];
    _buttonFont3.backgroundColor = UIColor.lightGrayColor;
    _buttonFont3.titleLabel.font = [UIFont fontWithName:@"Moon Flower" size:20];
    [_buttonFont3 setTitleColor:UIColor.blackColor forState:normal];
    [_buttonFont3 addTarget:self action:@selector(buttonFont3Pressed:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)buttonFont3Pressed: (id)sender {
    self.label.font = [UIFont fontWithName:@"Moon Flower" size:fontSize];
}

-(void)setupButtonFont4 {
    _buttonFont4.translatesAutoresizingMaskIntoConstraints = false;
    [_buttonFont4.topAnchor constraintEqualToAnchor:_buttonFont2.bottomAnchor constant:10].active = true;
    [_buttonFont4.trailingAnchor constraintEqualToAnchor:_textField.trailingAnchor].active = true;
    [_buttonFont4.widthAnchor constraintEqualToConstant:self.view.frame.size.width * 0.45].active = true;
    
    [_buttonFont4 setTitle:@"Font 4" forState:normal];
    _buttonFont4.backgroundColor = UIColor.lightGrayColor;
    _buttonFont4.titleLabel.font = [UIFont fontWithName:@"SugarstyleMillenial-Regular" size:20];
    [_buttonFont4 setTitleColor:UIColor.blackColor forState:normal];
    [_buttonFont4 addTarget:self action:@selector(buttonFont4Pressed:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)buttonFont4Pressed: (id)sender {
    self.label.font = [UIFont fontWithName:@"SugarstyleMillenial-Regular" size:fontSize];
}

-(void)setupShadowButton {
    _shadowButton.translatesAutoresizingMaskIntoConstraints = false;
    [_shadowButton.topAnchor constraintEqualToAnchor:_buttonFont3.bottomAnchor constant:10].active = true;
    [_shadowButton.leadingAnchor constraintEqualToAnchor:_buttonGreen.leadingAnchor].active= true;
    [_shadowButton.trailingAnchor constraintEqualToAnchor:_buttonRed.trailingAnchor].active= true;
    
    [_shadowButton setTitle:@"Add Shadow" forState:normal];
    _shadowButton.backgroundColor = UIColor.lightGrayColor;
    [_shadowButton setTitleColor:UIColor.blackColor forState:normal];
    [_shadowButton addTarget:self action:@selector(buttonShadowPressed:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)buttonShadowPressed: (id)sender {
    if (state == true) {
        _label.layer.shadowOpacity = 0.0;
        
        state = false;
        
        [_shadowButton setTitle:@"Add Shadow" forState:UIControlStateNormal];
    } else {
        _label.layer.shadowColor = [[UIColor blackColor]CGColor];
        _label.layer.shadowOpacity = 0.25;
        _label.layer.shadowRadius = 2.0;
        _label.layer.shadowOffset = CGSizeMake(2, 2);
        
        state = true;
        [_shadowButton setTitle:@"Remove Shadow" forState:UIControlStateNormal];
    }
}

-(void)setupSmallButton {
    _buttonSmall.translatesAutoresizingMaskIntoConstraints = false;
    [_buttonSmall.leadingAnchor constraintEqualToAnchor:_shadowButton.leadingAnchor].active = true;
    [_buttonSmall.topAnchor constraintEqualToAnchor:_shadowButton.bottomAnchor constant:10].active = true;
    [_buttonSmall.trailingAnchor constraintEqualToAnchor:_buttonMedium.leadingAnchor constant:-10].active = true;
    
    [_buttonSmall setTitle:@"Small" forState:normal];
    _buttonSmall.backgroundColor = UIColor.lightGrayColor;
    [_buttonSmall setTitleColor:UIColor.blackColor forState:normal];
    [_buttonSmall addTarget:self action:@selector(buttonSmallPressed:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)buttonSmallPressed: (id)sender {
    fontSize = 33;
    self.label.font = [self.label.font fontWithSize:fontSize];
}


-(void)setupMediumButton {
    _buttonMedium.translatesAutoresizingMaskIntoConstraints = false;
    [_buttonMedium.centerXAnchor constraintEqualToAnchor:_shadowButton.centerXAnchor].active = true;
    [_buttonMedium.topAnchor constraintEqualToAnchor:_shadowButton.bottomAnchor constant:10].active = true;
    [_buttonMedium.widthAnchor constraintEqualToConstant:self.view.frame.size.width * 0.28].active = true;
    
    [_buttonMedium setTitle:@"Medium" forState:normal];
    _buttonMedium.backgroundColor = UIColor.lightGrayColor;
    [_buttonMedium setTitleColor:UIColor.blackColor forState:normal];
    [_buttonMedium addTarget:self action:@selector(buttonMediumPressed:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)buttonMediumPressed: (id)sender {
    fontSize = 50;
    self.label.font = [self.label.font fontWithSize:fontSize];
}

-(void)setupLargeButton {
    _buttonLarge.translatesAutoresizingMaskIntoConstraints = false;
    [_buttonLarge.leadingAnchor constraintEqualToAnchor:_buttonMedium.trailingAnchor constant:10].active = true;
    [_buttonLarge.topAnchor constraintEqualToAnchor:_shadowButton.bottomAnchor constant:10].active = true;
    [_buttonLarge.trailingAnchor constraintEqualToAnchor:_shadowButton.trailingAnchor].active = true;
    
    [_buttonLarge setTitle:@"Large" forState:normal];
    _buttonLarge.backgroundColor = UIColor.lightGrayColor;
    [_buttonLarge setTitleColor:UIColor.blackColor forState:normal];
    [_buttonLarge addTarget:self action:@selector(buttonLargePressed:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)buttonLargePressed: (id)sender {
    fontSize = 100;
    self.label.font = [self.label.font fontWithSize:fontSize];
}

@end
