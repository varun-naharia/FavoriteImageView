//
//  ViewController.m
//  FavoriteImageView
//
//  Created by ImportHack on 06/05/16.
//  Copyright © 2016 TechWizard. All rights reserved.
//

#import "ViewController.h"
#import "FavoriteImageView.h"
#import "HeartFrame.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet HeartFrame *imageView;

@end

@implementation ViewController
@synthesize imageView;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    imagePicker = [[UIImagePickerController alloc]init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)touchUpInsideChooseImage:(id)sender {
    
    imagePicker.delegate = self;
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:imagePicker animated:YES completion:nil];
    
}


#pragma mark ImagePicker Delegate
-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:YES completion:nil];
}
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *image;
    NSURL *mediaURL;
    mediaURL = (NSURL *)[info valueForKey: UIImagePickerControllerMediaURL];
    image = (UIImage *) [info valueForKey:UIImagePickerControllerOriginalImage];
    
    imageView.image=image;
    [picker dismissViewControllerAnimated:YES completion:nil];
    
}


@end
