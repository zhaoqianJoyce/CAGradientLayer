gitHub 账号地址：https://github.com/zhaoqianJoyce 此demo是作者在学习CAGradientLayer后做的一个小练习。
关键代码
-(void)createMaskWithFrame:(CGRect)frame{

  CAGradientLayer *gradientLayer = [CAGradientLayer layer];
  gradientLayer.frame            = frame;
  gradientLayer.colors           = @[(__bridge id)[UIColor clearColor].CGColor,
  (__bridge id)[UIColor whiteColor].CGColor,
  (__bridge id)[UIColor whiteColor].CGColor,
  (__bridge id)[UIColor clearColor].CGColor,];
  gradientLayer.locations        = @[@(0.01), @(0.1), @(0.9), @(0.99)];
  //    gradientLayer.locations = @[@(0.1), @(0.9), @(0.98), @(0.99)];
  gradientLayer.startPoint       = CGPointMake(0, 0);
  gradientLayer.endPoint         = CGPointMake(1, 1);
  self.mask                      = [[UIView alloc] initWithFrame:frame];
  [self.mask.layer addSublayer:gradientLayer];

  self.maskView                  = self.mask;
}
