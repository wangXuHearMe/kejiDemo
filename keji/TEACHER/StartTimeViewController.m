//
//  StartTimeViewController.m
//  keji
//
//  Created by 王旭 on 2021/1/15.
//

#import "StartTimeViewController.h"

@interface StartTimeViewController ()

@end

@implementation StartTimeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"开始时间";
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"zuojiantou.png"] style:UIBarButtonItemStyleDone target:self action:@selector(pressBack)];
    backButton.tintColor = [UIColor blackColor];
    [self.navigationItem setLeftBarButtonItem:backButton];
    self.view.backgroundColor = [UIColor whiteColor];
}
- (void)pressBack {
    [self dismissViewControllerAnimated:YES completion:nil];
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
