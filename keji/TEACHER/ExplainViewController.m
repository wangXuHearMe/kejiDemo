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
    // Do any additional setup after loading the view.
    self.navigationItem.title = nil;
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"zuojiantou.png"] style:UIBarButtonItemStyleDone target:self action:@selector(pressBack)];
    backButton.tintColor = [UIColor blackColor];
    [self.navigationItem setLeftBarButtonItem:backButton];
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *bianjishuomingLabel = [[UILabel alloc] init];
    bianjishuomingLabel.text = @"编辑说明";
    bianjishuomingLabel.frame = CGRectMake(150, 170, 100, 30);
    bianjishuomingLabel.font = [UIFont systemFontOfSize:19];
    [self.view addSubview:bianjishuomingLabel];
    
//    self.textField = [UITextField alloc] initWithFrame:CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)
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
