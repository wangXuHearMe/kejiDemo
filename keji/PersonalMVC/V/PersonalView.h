//
//  PersonalView.h
//  keji
//
//  Created by 王旭 on 2020/12/13.
//

#import <UIKit/UIKit.h>
#import "PersonalFirstTableViewCell.h"
#import "PersonalSecondTableViewCell.h"
NS_ASSUME_NONNULL_BEGIN

@interface PersonalView : UIView<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@end

NS_ASSUME_NONNULL_END
