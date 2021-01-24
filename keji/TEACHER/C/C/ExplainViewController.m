//
//  ExplainViewController.m
//  keji
//
//  Created by 王旭 on 2021/1/11.
//

#import "ExplainViewController.h"

@interface ExplainViewController ()

@end

@implementation ExplainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:220/255.0 green:220/255.0 blue:236/255.0 alpha:1];
    // Do any additional setup after loading the view.
    self.navigationItem.title = nil;
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"zuojiantou.png"] style:UIBarButtonItemStyleDone target:self action:@selector(pressBack)];
    backButton.tintColor = [UIColor blackColor];
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"right.png"] style:UIBarButtonItemStyleDone target:self action:@selector(pressRight)];
    rightButton.tintColor = [UIColor blackColor];
    [self.navigationItem setLeftBarButtonItem:backButton];
    [self.navigationItem setRightBarButtonItem:rightButton];
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *bianjishuomingLabel = [[UILabel alloc] init];
    bianjishuomingLabel.text = @"编辑说明";
    bianjishuomingLabel.frame = CGRectMake(150, 170, 100, 30);
    bianjishuomingLabel.font = [UIFont systemFontOfSize:19];
    [self.view addSubview:bianjishuomingLabel];
    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(100, 220, 200, 30)];
    self.textField.backgroundColor = [UIColor whiteColor];
    self.textField.placeholder = @"说明";
    [self.view addSubview:self.textField];
    UIImageView *leftImage = [[UIImageView alloc] initWithFrame:CGRectMake(45, 220, 26, 26)];
    leftImage.image = [UIImage imageNamed:@"描述.png"];
    [self.view addSubview:leftImage];
}
- (void)pressBack {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)pressRight {
    [self.delegate passExplainText:self.textField.text andBool:YES];
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
