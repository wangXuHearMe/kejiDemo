//
//  NationViewController.h
//  keji
//
//  Created by 王旭 on 2020/12/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol nationDelegate <NSObject>
- (void)pass:(BOOL)isgan ansNationText:(NSString *)nationText;
@end
@interface NationViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, assign) id<nationDelegate> delegate;
@end

NS_ASSUME_NONNULL_END
