# WJContainerView
一个封装了按钮和指示器的非常简单实用的小框架
/**
*  初始化方法
*
*  @return WJContainerView
*/
+ (instancetype)containerView;
/**
*  代理
*/
@property (weak, nonatomic)id<WJContainerViewDelegate> delegate;
/**
*  普通状态下titile的颜色
*/
@property (strong, nonatomic)UIColor *titleColor;
/**
*  选择状态下titile的颜色
*/
@property (strong, nonatomic)UIColor *selectedTitleColor;
/**
*  按钮背景色
*/
@property (strong, nonatomic)UIColor *buttonBackgroundColor;
/**
*  按钮背景图片
*/
@property (strong, nonatomic)UIColor *buttonBackgroundImage;
/**
*  指示器颜色
*/
@property (strong, nonatomic)UIColor *indicatorViewColor;
/**
*  切换title的动画时间
*/
@property (assign, nonatomic)NSTimeInterval animationTime;
/**
*  是否开启打开动画
*/
@property (assign, nonatomic)BOOL isOpenAnimation;
/**
*  根据传进来点击的按钮index重置按钮和指示器状态
*
*  @param selectedIndex NSInteger
*/
- (void)configButtonWithIndex:(NSInteger)selectedIndex;