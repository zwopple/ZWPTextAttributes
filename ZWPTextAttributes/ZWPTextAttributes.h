#import <Foundation/Foundation.h>

@interface ZWPTextAttributes : NSObject <NSCopying>

@property (nonatomic, strong) UIFont *font;
@property (nonatomic, strong) UIColor *foregroundColor;
@property (nonatomic, strong) UIColor *backgroundColor;
@property (nonatomic, assign) NSInteger ligature;
@property (nonatomic, assign) CGFloat kern;
#if __IPHONE_OS_VERSION_MIN_REQUIRED > __IPHONE_6_0
@property (nonatomic, assign) NSUnderlineStyle strikethroughStyle;
@property (nonatomic, assign) NSUnderlineStyle underlineStyle;
#else
@property (nonatomic, assign) NSInteger strikethroughStyle;
@property (nonatomic, assign) NSInteger underlineStyle;
#endif
@property (nonatomic, strong) UIColor *strokeColor;
@property (nonatomic, assign) CGFloat strokeWidth;
@property (nonatomic, strong) NSShadow *shadow;

#if __IPHONE_OS_VERSION_MIN_REQUIRED > __IPHONE_6_0
@property (nonatomic, strong) NSString *textEffect;
@property (nonatomic, strong) NSTextAttachment *attachment;
@property (nonatomic, assign) CGFloat baselineOffset;
@property (nonatomic, strong) UIColor *underlineColor;
@property (nonatomic, strong) UIColor *strikethroughColor;
@property (nonatomic, assign) CGFloat obliqueness;
@property (nonatomic, assign) CGFloat expansion;
@property (nonatomic, strong) NSArray *writingDirection;
@property (nonatomic, strong) NSURL *link;
#endif

@property (nonatomic, assign) CGFloat lineSpacing;
@property (nonatomic, assign) CGFloat paragraphSpacing;
@property (nonatomic, assign) NSTextAlignment alignment;
@property (nonatomic, assign) CGFloat firstLineHeadIndent;
@property (nonatomic, assign) CGFloat headIndent;
@property (nonatomic, assign) CGFloat tailIndent;
@property (nonatomic, assign) NSLineBreakMode lineBreakMode;
@property (nonatomic, assign) CGFloat minimumLineHeight;
@property (nonatomic, assign) CGFloat maximumLineHeight;
@property (nonatomic, assign) NSWritingDirection baseWritingDirection;
@property (nonatomic, assign) CGFloat lineHeightMultiple;
@property (nonatomic, assign) CGFloat paragraphSpacingBefore;
@property (nonatomic, assign) CGFloat hyphenationFactor;
@property (nonatomic, copy) NSArray *tabStops;
@property (nonatomic, assign) CGFloat defaultTabInterval;

@property (nonatomic, strong, readonly) NSDictionary *dictionaryRepresentation;

+ (ZWPTextAttributes *)createAttributesWithBlock:(void (^)(ZWPTextAttributes *attrs))block;

@end

@interface ZWPTextAttributesContext : NSObject

#pragma mark - Initializations

+ (instancetype)context;

#pragma mark - Actions

- (void)saveState;
- (void)restoreState;
- (void)appendString:(NSString *)string;
- (void)appendStringWithFormat:(NSString *)string, ...;
- (NSAttributedString *)attributedString;

#pragma mark - Convienence

+ (NSAttributedString *)createAttributedStringWithBlock:(void (^)(ZWPTextAttributesContext *ctx, ZWPTextAttributes *attrs))block;

@end