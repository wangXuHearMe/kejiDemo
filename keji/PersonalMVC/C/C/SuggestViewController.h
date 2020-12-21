//
//  SuggestViewController.h
//  keji
//
//  Created by 王旭 on 2020/12/17.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SuggestViewController : UIViewController
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UITextField *suggestTextField;
@property (nonatomic, strong) UIButton *addButton;
@property (nonatomic, strong) UIButton *sureButton;
@end

NS_ASSUME_NONNULL_END
