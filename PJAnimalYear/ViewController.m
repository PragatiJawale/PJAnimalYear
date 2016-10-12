//
//  ViewController.m
//  PJAnimalYear
//
//  Created by Mac on 11/10/16.
//  Copyright © 2016 Pragati Jawale. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    screenWidth = [[UIScreen mainScreen]bounds].size.width;
    screenHeight = [[UIScreen mainScreen]bounds].size.height;
    textFeildWidth = screenWidth-(2*kHorizontalPadding);
    buttonYCoordinate = 100+kVerticalPadding+kAllElementHeight;
    labelYCoordinate= buttonYCoordinate + kAllElementHeight + kVerticalPadding;
    lableWidth = screenWidth-(2*kHorizontalPadding);
    
    buttonWidth = screenWidth-(8*kHorizontalPadding);
    
    self.view.backgroundColor= [UIColor grayColor];
    
    myTextField = [[UITextField alloc]initWithFrame:CGRectMake(kHorizontalPadding, 70, textFeildWidth, kAllElementHeight)];
    myTextField.backgroundColor=[UIColor whiteColor];
    [myTextField setBorderStyle:UITextBorderStyleRoundedRect];
    
    myTextField.textAlignment = NSTextAlignmentCenter;
    myTextField.delegate = self;
    
    myTextField.keyboardType= UIKeyboardTypeNumberPad;
    [self.view addSubview:myTextField];
    
    
    UIButton *myButton = [[UIButton alloc]initWithFrame:CGRectMake(2*kHorizontalPadding, buttonYCoordinate-40, buttonWidth-(8*kHorizontalPadding), kAllElementHeight)];
    myButton.backgroundColor = [UIColor purpleColor];
    myButton.tintColor = [UIColor purpleColor];
    
    [myButton addTarget:self action:@selector(handleCat) forControlEvents:UIControlEventTouchUpInside];
    
    [myButton setTitle:@"Cat Years" forState:(UIControlStateNormal)];
    
    [self.view addSubview:myButton];
    
    
    UIButton *dogButton = [[UIButton alloc]initWithFrame:CGRectMake(2*kHorizontalPadding, buttonYCoordinate+40, buttonWidth-(8*kHorizontalPadding), kAllElementHeight)];
    dogButton.backgroundColor = [UIColor purpleColor];
    dogButton.tintColor = [UIColor purpleColor];
    
    [dogButton addTarget:self action:@selector(handleDog) forControlEvents:UIControlEventTouchUpInside];
    
    [dogButton setTitle:@"Dog Years" forState:(UIControlStateNormal)];
    
    [self.view addSubview:dogButton];
    
    
    
    UIButton *turtleButton = [[UIButton alloc]initWithFrame:CGRectMake(2*kHorizontalPadding, buttonYCoordinate+120, buttonWidth-(8*kHorizontalPadding), kAllElementHeight)];
    turtleButton.backgroundColor = [UIColor purpleColor];
    turtleButton.tintColor = [UIColor purpleColor];
    
    [turtleButton addTarget:self action:@selector(handleTurtle) forControlEvents:UIControlEventTouchUpInside];
    
    [turtleButton setTitle:@"Turtle Years" forState:(UIControlStateNormal)];
    
    [self.view addSubview:turtleButton];
    
    
    UIButton *clearButton = [[UIButton alloc]initWithFrame:CGRectMake(kHorizontalPadding+ buttonWidth+kHorizontalPadding, buttonYCoordinate+40, 70, 70)];
    clearButton.backgroundColor=[UIColor blueColor];
    [clearButton setTitle:@"C" forState:UIControlStateNormal];
    
    [clearButton addTarget:self action:@selector(clear) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:clearButton];
    
    
    
    
    myLabel=[[UILabel alloc]initWithFrame:CGRectMake(kHorizontalPadding, labelYCoordinate+120, lableWidth, kAllElementHeight)];
    myLabel.backgroundColor=[UIColor cyanColor];
    myLabel.textColor=[UIColor blackColor];
    myLabel.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:myLabel];
    
}

-(void)clear
{
    myTextField.text=@" ";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)handleCat
{
    [self calculateCatYears:myTextField.text];
    
}
-(void)calculateCatYears:(NSString *)content
{
    int intAge = content.intValue;
    //if(content)
    if(content)
    {
        if(intAge>0&&intAge<110)
        {
            NSString *currentValueString = myTextField.text;
            float currentValueInt=currentValueString.floatValue;
            
            currentValueInt=currentValueInt/7;
            NSString *newValueString=[NSString stringWithFormat:@"Cat Year is %f",currentValueInt];
            myLabel.text=newValueString;
            
        }
        else
        {
            myLabel.text=@"Please Enter The Age between 1 to 110";
        }
    }
    else {
        myLabel.text=@"Please enter the age";
    }
}

-(void)handleDog
{
    [self calculateDogYears:myTextField.text];
    
}
-(void)calculateDogYears:(NSString *)content
{
    int intAge = content.intValue;
    //if(content)
    if(content)
    {
        if(intAge>0&&intAge<110)
        {
            NSString *currentValueString = myTextField.text;
            float currentValueInt=currentValueString.floatValue;
            
            currentValueInt=currentValueInt/4;
            NSString *newValueString=[NSString stringWithFormat:@"Dog Year is %f",currentValueInt];
            myLabel.text=newValueString;
            
        }
        else
        {
            myLabel.text=@"Please Enter The Age between 1 to 110";
        }
    }
    else {
        myLabel.text=@"Please enter the age";
    }
    
    
    
}
-(void)handleTurtle
{
    [self calculateTurtleYears:myTextField.text];
    
}
-(void)calculateTurtleYears:(NSString *)content
{
    int intAge = content.intValue;
    
    if(content)
    {
        if(intAge>0&&intAge<110)
        {
            NSString *currentValueString = myTextField.text;
            float currentValueInt=currentValueString.floatValue;
            
            currentValueInt=currentValueInt*1.2;
            NSString *newValueString=[NSString stringWithFormat:@"Turtle Year is %f",currentValueInt];
            myLabel.text=newValueString;
            
        }
        else
        {
            myLabel.text=@"Please Enter The Age between 1 to 110";
        }
    }
    else {
        myLabel.text=@"Please enter the age";
    }
    
    
    
    
}






-(BOOL)textFieldShouldReturn:(UITextField *)textField

{
    [myTextField resignFirstResponder];
    return YES;

}


@end
