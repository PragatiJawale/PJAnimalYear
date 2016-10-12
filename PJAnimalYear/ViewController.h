//
//  ViewController.h
//  PJAnimalYear
//
//  Created by Mac on 11/10/16.
//  Copyright © 2016 Pragati Jawale. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kAllElementHeight 60.0
#define kVerticalPadding 50.0
#define kHorizontalPadding 20.0

@interface ViewController : UIViewController<UITextFieldDelegate>{
    CGFloat screenWidth;
    CGFloat screenHeight;
    CGFloat textFeildWidth;
    CGFloat buttonWidth;
    CGFloat lableWidth;
    CGFloat buttonYCoordinate;
    CGFloat labelYCoordinate;
    UITextField *myTextField;
    UILabel *myLabel;

}


@end

