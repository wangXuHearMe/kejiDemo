//
//  BigPictureViewController.m
//  keji
//
//  Created by 王旭 on 2020/12/26.
//
#define WIDTH self.view.frame.size.width
#define HEIGHT self.view.frame.size.height
#import "BigPictureViewController.h"

@interface BigPictureViewController ()

@end

@implementation BigPictureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"查看大图";
    self.view.backgroundColor = [UIColor blackColor];
    self.imageStr.frame = CGRectMake(0, (HEIGHT - WIDTH)/2, WIDTH, WIDTH);
    [self.view addSubview:self.imageStr];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:NO completion:nil];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
