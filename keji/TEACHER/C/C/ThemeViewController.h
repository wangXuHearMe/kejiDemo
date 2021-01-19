//
//  ThemeViewController.h
//  keji
//
//  Created by 王旭 on 2021/1/9.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol themeDelegate <NSObject>

- (void)pass:(BOOL)isOK andZhuti:(NSString *)zhutiString;

@end
@interface ThemeViewController : UIViewController
<UIPickerViewDelegate, UIPickerViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UIPickerView *pickerView;
@property (nonatomic, strong) UIButton *cancelButton;
@property (nonatomic, strong) UIButton *sureButton;
@property NSArray *signArray;
@property NSInteger answerRow;
@property (nonatomic, assign) id<themeDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
