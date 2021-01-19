//
//  ListViewController.h
//  keji
//
//  Created by 王旭 on 2021/1/11.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol listDelegate <NSObject>

- (void)pass:(BOOL)isOk andMingdan:(NSString *)mingdanString;

@end
@interface ListViewController : UIViewController
<UIPickerViewDelegate, UIPickerViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UIPickerView *pickerView;
@property (nonatomic, strong) UIButton *cancelButton;
@property (nonatomic, strong) UIButton *sureButton;
@property NSArray *signArray;
@property NSInteger answerRow;
@property (nonatomic, assign) id<listDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
