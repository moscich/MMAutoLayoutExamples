#import <Foundation/Foundation.h>

@class UILabel;

@interface ChangingLayoutView : UIView

@property (nonatomic, strong) UIButton *disconnectButton;
@property (nonatomic, strong) UIButton *cancelButton;
@property (nonatomic, strong) UILabel *disconnectConfirmationLabel;

@end