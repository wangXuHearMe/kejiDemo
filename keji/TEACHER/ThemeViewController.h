//
//  ThemeViewController.h
//  keji
//
//  Created by 王旭 on 2021/1/9.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ThemeViewController : UIViewController
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UIPickerView *pickerView;
@property (nonatomic, strong) UIButton *cancelButton;
@property (nonatomic, strong) UIButton *sureButton;
@end

NS_ASSUME_NONNULL_END
