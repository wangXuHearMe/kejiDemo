//
//  DescriptViewController.m
//  keji
//
//  Created by 王旭 on 2020/12/21.
//

#import "DescriptViewController.h"

@interface DescriptViewController ()

@end

@implementation DescriptViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"修改描述";
    self.view.backgroundColor = [UIColor colorWithRed:240/255.0 green:240/255.0 blue:240/255.0 alpha:1];
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"zuojiantou.png"] style:UIBarButtonItemStyleDone target:self action:@selector(pressBack)];
    backButton.tintColor = [UIColor blackColor];
    [self.navigationItem setLeftBarButtonItem:backButton];
    self.view.backgroundColor = [UIColor colorWithRed:240/255.0 green:240/255.0 blue:240/255.0 alpha:1];
    [self setUI];
}
- (void)setUI {
    self.DescriImageView = [[UIImageView alloc] init];
    [self.DescriImageView setImage:[UIImage imageNamed:@"描述.png"]];
    self.DescriImageView.frame = CGRectMake(10, 150, 25, 25);
    [self.view addSubview:self.DescriImageView];
    self.DescriTextField = [[UITextField alloc] init];
    self.DescriTextField.frame = CGRectMake(45, 150, self.view.frame.size.width - 50, 30);
    self.DescriTextField.textColor = [UIColor blackColor];
    self.DescriTextField.backgroundColor = [UIColor whiteColor];
    self.DescriTextField.keyboardType = UIKeyboardTypeDefault;
    self.DescriTextField.placeholder = @"描述";
    [self.view addSubview:self.DescriTextField];
    self.sureButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.sureButton setTitle:@"完成" forState:UIControlStateNormal];
    self.sureButton.frame = CGRectMake(self.view.frame.size.width*0.24, self.view.frame.size.height*0.5, self.view.frame.size.width*0.5, 35);
//    if (self.DescriTextField.text.length == 0) {
//        self.sureButton.backgroundColor = [UIColor grayColor];
//    } else {
        self.sureButton.backgroundColor = [UIColor colorWithRed:80/255.0 green:173/255.0 blue:87/255.0 alpha:1];
//        [self.sureButton reloadInputViews];
//    }
    self.sureButton.titleLabel.font = [UIFont systemFontOfSize:19];
    self.sureButton.titleLabel.tintColor = [UIColor whiteColor];
    [self.sureButton addTarget:self action:@selector(pressSure) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.sureButton];
}
- (void)pressSure {
    [self.delegate pass:YES andstr:self.DescriTextField.text];
    [self dismissViewControllerAnimated:YES completion:nil];
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
