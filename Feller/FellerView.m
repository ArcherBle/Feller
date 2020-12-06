//
//  FellerView.m
//  Feller
//
//  Created by kxz on 2020/12/6.
//

#import "FellerView.h"
@interface FellerView()
@property (nonatomic, strong) NSImageView *fellerbody;

@end
@implementation FellerView

- (instancetype)initWithFrame:(NSRect)frame isPreview:(BOOL)isPreview
{
    self = [super initWithFrame:frame isPreview:isPreview];
    if (self) {
        [self setAnimationTimeInterval:1/30.0];
        NSBundle *fellerbundle = [NSBundle bundleWithIdentifier:@"kxz.Feller"];
        NSString *fellergifpath = [fellerbundle pathForResource:@"Fellergif" ofType:@"gif"];
        NSImage *fellergifimage = [[NSImage alloc]initWithContentsOfFile:fellergifpath];
        _fellerbody = [[NSImageView alloc]initWithFrame:frame];
        [self addSubview:_fellerbody];
        _fellerbody.image = fellergifimage;
        _fellerbody.canDrawSubviewsIntoLayer = YES;
    
        _fellerbody.imageScaling = NSImageScaleAxesIndependently;
        _fellerbody.imageFrameStyle = NSImageFrameCount;
    }
    return self;
}

- (void)startAnimation
{
    [super startAnimation];
    printf("start");
}

- (void)stopAnimation
{
    [super stopAnimation];
    printf("stop");
}

- (void)drawRect:(NSRect)rect
{
    [super drawRect:rect];
}

- (void)animateOneFrame
{
    return;
}

- (BOOL)hasConfigureSheet
{
    return NO;
}

- (NSWindow*)configureSheet
{
    return nil;
}

@end
