//
//  ViewController.h
//  FavoriteImageView
//
//  Created by ImportHack on 06/05/16.
//  Copyright © 2016 TechWizard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UINavigationControllerDelegate, UIImagePickerControllerDelegate>
{
    UIImagePickerController *imagePicker;
}


@end

