//
//  DescriptViewController.h
//  keji
//
//  Created by 王旭 on 2020/12/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol descriptDelegate <NSObject>
- (void)pass:(BOOL)isgan andstr:(NSString *)decriptLabel;
@end
@interface DescriptViewController : UIViewController
@property (nonatomic, strong) UIImageView *DescriImageView;
@property (nonatomic, strong) UITextField *DescriTextField;
@property (nonatomic, strong) UIButton *sureButton;
@property bool isgan;
@property (nonatomic, assign) id<descriptDelegate> delegate;
@end

NS_ASSUME_NONNULL_END
