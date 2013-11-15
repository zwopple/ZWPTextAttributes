#import "ZWPTextAttributes.h"

@interface ZWPTextAttributes()

@property (nonatomic, strong) NSMutableDictionary *attributesForWriting;
@property (nonatomic, strong, readonly) NSParagraphStyle *paragraphStyleForReading;
@property (nonatomic, strong, readonly) NSMutableParagraphStyle *paragraphStyleForWriting;

@end
@implementation ZWPTextAttributes

@dynamic font;
@dynamic foregroundColor;
@dynamic backgroundColor;
@dynamic ligature;
@dynamic kern;
@dynamic strikethroughStyle;
@dynamic underlineStyle;
@dynamic strokeColor;
@dynamic strokeWidth;
@dynamic shadow;

- (UIFont *)font {
    return self.attributesForWriting[NSFontAttributeName];
}
- (void)setFont:(UIFont *)font {
    self.attributesForWriting[NSFontAttributeName] = font;
}
- (UIColor *)foregroundColor {
    return self.attributesForWriting[NSForegroundColorAttributeName];
}
- (void)setForegroundColor:(UIColor *)foregroundColor {
    self.attributesForWriting[NSForegroundColorAttributeName] = foregroundColor;
}
- (UIColor *)backgroundColor {
    return self.attributesForWriting[NSBackgroundColorAttributeName];
}
- (void)setBackgroundColor:(UIColor *)backgroundColor {
    self.attributesForWriting[NSBackgroundColorAttributeName] = backgroundColor;
}
- (NSInteger)ligature {
    return [self.attributesForWriting[NSLigatureAttributeName] integerValue];
}
- (void)setLigature:(NSInteger)ligature {
    self.attributesForWriting[NSLigatureAttributeName] = @(ligature);
}
- (CGFloat)kern {
    return [self.attributesForWriting[NSKernAttributeName] floatValue];
}
- (void)setKern:(CGFloat)kern {
    self.attributesForWriting[NSKernAttributeName] = @(kern);
}
#if __IPHONE_OS_VERSION_MIN_ALLOWED > __IPHONE_6_0
- (NSUnderlineStyle)strikethroughStyle {
    return [self.attributesForWriting[NSStrikethroughStyleAttributeName] integerValue];
}
- (void)setStrikethroughStyle:(NSUnderlineStyle)strikethroughStyle {
    self.attributesForWriting[NSStrikethroughStyleAttributeName] = @(strikethroughStyle);
}
- (NSUnderlineStyle)underlineStyle {
    return [self.attributesForWriting[NSUnderlineStyleAttributeName] integerValue];
}
- (void)setUnderlineStyle:(NSUnderlineStyle)underlineStyle {
    self.attributesForWriting[NSUnderlineStyleAttributeName] = @(underlineStyle);
}
#else
- (NSInteger)strikethroughStyle {
    return [self.attributesForWriting[NSStrikethroughStyleAttributeName] integerValue];
}
- (void)setStrikethroughStyle:(NSInteger)strikethroughStyle {
    self.attributesForWriting[NSStrikethroughStyleAttributeName] = @(strikethroughStyle);
}
- (NSInteger)underlineStyle {
    return [self.attributesForWriting[NSUnderlineStyleAttributeName] integerValue];
}
- (void)setUnderlineStyle:(NSInteger)underlineStyle {
    self.attributesForWriting[NSUnderlineStyleAttributeName] = @(underlineStyle);
}
#endif
- (UIColor *)strokeColor {
    return self.attributesForWriting[NSStrokeColorAttributeName];
}
- (void)setStrokeColor:(UIColor *)strokeColor {
    self.attributesForWriting[NSStrokeColorAttributeName] = strokeColor;
}
- (CGFloat)strokeWidth {
    return [self.attributesForWriting[NSStrokeWidthAttributeName] floatValue];
}
- (void)setStrokeWidth:(CGFloat)strokeWidth {
    self.attributesForWriting[NSStrokeWidthAttributeName] = @(strokeWidth);
}
- (NSShadow *)shadow {
    return self.attributesForWriting[NSShadowAttributeName];
}
- (void)setShadow:(NSShadow *)shadow {
    self.attributesForWriting[NSShadowAttributeName] = shadow;
}

#if __IPHONE_OS_VERSION_MIN_ALLOWED > __IPHONE_6_0
@dynamic textEffect;
@dynamic attachment;
@dynamic link;
@dynamic baselineOffset;
@dynamic underlineColor;
@dynamic strikethroughColor;
@dynamic obliqueness;
@dynamic expansion;
@dynamic writingDirection;

- (NSString *)textEffect {
    return self.attributesForWriting[NSTextEffectAttributeName];
}
- (void)setTextEffect:(NSString *)textEffect {
    self.attributesForWriting[NSTextEffectAttributeName] = textEffect;
}
- (NSTextAttachment *)attachment {
    return self.attributesForWriting[NSAttachmentAttributeName];
}
- (void)setAttachment:(NSTextAttachment *)attachment {
    self.attributesForWriting[NSAttachmentAttributeName] = attachment;
}
- (NSURL *)link {
    return self.attributesForWriting[NSLinkAttributeName];
}
- (void)setLink:(NSURL *)link {
    self.attributesForWriting[NSLinkAttributeName] = link;
}
- (CGFloat)baselineOffset {
    return [self.attributesForWriting[NSBaselineOffsetAttributeName] floatValue];
}
- (void)setBaselineOffset:(CGFloat)baselineOffset {
    self.attributesForWriting[NSBaselineOffsetAttributeName] = @(baselineOffset);
}
- (UIColor *)underlineColor {
    return self.attributesForWriting[NSUnderlineColorAttributeName];
}
- (void)setUnderlineColor:(UIColor *)underlineColor {
    self.attributesForWriting[NSUnderlineColorAttributeName] = underlineColor;
}
- (UIColor *)strikethroughColor {
    return self.attributesForWriting[NSStrikethroughColorAttributeName];
}
- (void)setStrikethroughColor:(UIColor *)strikethroughColor {
    self.attributesForWriting[NSStrikethroughColorAttributeName] = strikethroughColor;
}
- (CGFloat)obliqueness {
    return [self.attributesForWriting[NSObliquenessAttributeName] floatValue];
}
- (void)setObliqueness:(CGFloat)obliqueness {
    self.attributesForWriting[NSObliquenessAttributeName] = @(obliqueness);
}
- (CGFloat)expansion {
    return [self.attributesForWriting[NSExpansionAttributeName] floatValue];
}
- (void)setExpansion:(CGFloat)expansion {
    self.attributesForWriting[NSExpansionAttributeName] = @(expansion);
}
- (NSArray *)writingDirection {
    return self.attributesForWriting[NSWritingDirectionAttributeName];
}
- (void)setWritingDirection:(NSArray *)writingDirection {
    self.attributesForWriting[NSWritingDirectionAttributeName] = writingDirection;
}
#endif

@dynamic lineSpacing;
@dynamic paragraphSpacing;
@dynamic alignment;
@dynamic firstLineHeadIndent;
@dynamic headIndent;
@dynamic tailIndent;
@dynamic lineBreakMode;
@dynamic minimumLineHeight;
@dynamic maximumLineHeight;
@dynamic baseWritingDirection;
@dynamic lineHeightMultiple;
@dynamic paragraphSpacingBefore;
@dynamic hyphenationFactor;
#if __IPHONE_OS_VERSION_MIN_ALLOWED > __IPHONE_6_0
@dynamic tabStops;
@dynamic defaultTabInterval;
#endif

-(CGFloat)lineSpacing {
	return self.paragraphStyleForReading.lineSpacing;
}
- (void)setLineSpacing:(CGFloat)lineSpacing {
	self.paragraphStyleForWriting.lineSpacing = lineSpacing;
}
-(CGFloat)paragraphSpacing {
	return self.paragraphStyleForReading.paragraphSpacing;
}
- (void)setParagraphSpacing:(CGFloat)paragraphSpacing {
	self.paragraphStyleForWriting.paragraphSpacing = paragraphSpacing;
}
- (NSTextAlignment)alignment {
	return self.paragraphStyleForReading.alignment;
}
- (void)setAlignment:(NSTextAlignment)alignment {
	self.paragraphStyleForWriting.alignment = alignment;
}
- (CGFloat)firstLineHeadIndent {
	return self.paragraphStyleForReading.firstLineHeadIndent;
}
- (void)setFirstLineHeadIndent:(CGFloat)firstLineHeadIndent {
	self.paragraphStyleForWriting.firstLineHeadIndent = firstLineHeadIndent;
}
- (CGFloat)headIndent {
	return self.paragraphStyleForReading.headIndent;
}
- (void)setHeadIndent:(CGFloat)headIndent {
	self.paragraphStyleForWriting.headIndent = headIndent;
}
- (CGFloat)tailIndent {
	return self.paragraphStyleForReading.tailIndent;
}
- (void)setTailIndent:(CGFloat)tailIndent {
	self.paragraphStyleForWriting.tailIndent = tailIndent;
}
- (NSLineBreakMode)lineBreakMode {
	return self.paragraphStyleForReading.lineBreakMode;
}
- (void)setLineBreakMode:(NSLineBreakMode)lineBreakMode {
	self.paragraphStyleForWriting.lineBreakMode = lineBreakMode;
}
- (CGFloat)minimumLineHeight {
	return self.paragraphStyleForReading.minimumLineHeight;
}
- (void)setMinimumLineHeight:(CGFloat)minimumLineHeight {
	self.paragraphStyleForWriting.minimumLineHeight = minimumLineHeight;
}
- (CGFloat)maximumLineHeight {
	return self.paragraphStyleForReading.maximumLineHeight;
}
- (void)setMaximumLineHeight:(CGFloat)maximumLineHeight {
	self.paragraphStyleForWriting.maximumLineHeight = maximumLineHeight;
}
- (NSWritingDirection)baseWritingDirection {
	return self.paragraphStyleForReading.baseWritingDirection;
}
- (void)setBaseWritingDirection:(NSWritingDirection)baseWritingDirection {
	self.paragraphStyleForWriting.baseWritingDirection = baseWritingDirection;
}
- (CGFloat)lineHeightMultiple {
	return self.paragraphStyleForReading.lineHeightMultiple;
}
- (void)setLineHeightMultiple:(CGFloat)lineHeightMultiple {
	self.paragraphStyleForWriting.lineHeightMultiple = lineHeightMultiple;
}
- (CGFloat)paragraphSpacingBefore {
	return self.paragraphStyleForReading.paragraphSpacingBefore;
}
- (void)setParagraphSpacingBefore:(CGFloat)paragraphSpacingBefore {
	self.paragraphStyleForWriting.paragraphSpacingBefore = paragraphSpacingBefore;
}
- (CGFloat)hyphenationFactor {
	return self.paragraphStyleForReading.hyphenationFactor;
}
- (void)setHyphenationFactor:(CGFloat)hyphenationFactor {
	self.paragraphStyleForWriting.hyphenationFactor = hyphenationFactor;
}
#if __IPHONE_OS_VERSION_MIN_ALLOWED > __IPHONE_6_0
- (CGFloat)defaultTabInterval {
	return self.paragraphStyleForReading.defaultTabInterval;
}
- (void)setDefaultTabInterval:(CGFloat)defaultTabInterval {
	self.paragraphStyleForWriting.defaultTabInterval = defaultTabInterval;
}
- (NSArray *)tabStops {
	return self.paragraphStyleForReading.tabStops;
}
- (void)setTabStops:(NSArray *)tabStops {
	self.paragraphStyleForWriting.tabStops = tabStops;
}
#endif

@dynamic paragraphStyleForReading;
@dynamic paragraphStyleForWriting;

- (NSParagraphStyle *)paragraphStyleForReading {
    return self.attributesForWriting[NSParagraphStyleAttributeName];
}
- (NSMutableParagraphStyle *)paragraphStyleForWriting {
    if(!self.attributesForWriting[NSParagraphStyleAttributeName]) {
        self.attributesForWriting[NSParagraphStyleAttributeName] = [[NSMutableParagraphStyle alloc] init];
    }
    return self.attributesForWriting[NSParagraphStyleAttributeName];
}

@dynamic dictionaryRepresentation;

- (NSDictionary *)dictionaryRepresentation {
    return [self.attributesForWriting copy];
}

#pragma mark - Initialization

+ (ZWPTextAttributes *)createAttributesWithBlock:(void (^)(ZWPTextAttributes *attrs))block {
    NSParameterAssert(block);
    ZWPTextAttributes *attrs = [[self alloc] init];
    block(attrs);
    return attrs;
}
- (instancetype)init {
	if((self = [super init])) {
		_attributesForWriting = [NSMutableDictionary dictionary];
	}
	return self;
}

#pragma mark - NSCopying

- (id)copyWithZone:(NSZone *)zone {
    NSMutableDictionary *attributes = [_attributesForWriting mutableCopy];
    for(NSString *key in attributes.allKeys) {
        id value = attributes[key];
        
        if([value isKindOfClass:[NSString class]] ||
           [value isKindOfClass:[NSArray class]]) {
            attributes[key] = [value copy];
        } else if([value isKindOfClass:[NSParagraphStyle class]]) {
            attributes[key] = [value mutableCopy];
        }
    }
    
    ZWPTextAttributes *copy = [[self.class alloc] init];
    copy->_attributesForWriting = attributes;
    return copy;
}

@end

@interface ZWPTextAttributesContextAttrsProxy : NSProxy

#pragma mark - Properties

@property (nonatomic, strong) ZWPTextAttributesContext *ctx;

#pragma mark - Initalization

- (instancetype)initWithContext:(ZWPTextAttributesContext *)ctx;

@end

@interface ZWPTextAttributesContext() {
    NSMutableArray *_attrsStack;
    NSMutableAttributedString *_attributedString;
}

@property (nonatomic, strong) ZWPTextAttributes *attrs;

@end
@implementation ZWPTextAttributesContext

#pragma mark - Properties

@dynamic attrs;

- (ZWPTextAttributes *)attrs {
    return [_attrsStack lastObject];
}

#pragma mark - Initialization

+ (instancetype)context {
    return [[self alloc] init];
}
- (instancetype)init {
	if((self = [super init])) {
		_attributedString = [[NSMutableAttributedString alloc] init];
        _attrsStack = [NSMutableArray arrayWithObject:[[ZWPTextAttributes alloc] init]];
	}
	return self;
}

#pragma mark - Actions

- (void)saveState {
    [_attrsStack addObject:[self.attrs copy]];
}
- (void)restoreState {
    NSAssert(_attrsStack.count > 1, @"restoreState called unmatched with saveState");
    [_attrsStack removeLastObject];
}

- (void)appendString:(NSString *)string {
    NSAttributedString *appendString = [[NSAttributedString alloc] initWithString:string attributes:self.attrs.dictionaryRepresentation];
    [_attributedString appendAttributedString:appendString];
}
- (void)appendStringWithFormat:(NSString *)string, ... {
    va_list args;
    va_start(args, string);
    string = [[NSString alloc] initWithFormat:string arguments:args];
    va_end(args);
    [self appendString:string];
}
- (NSAttributedString *)attributedString {
    return [_attributedString copy];
}

#pragma mark - Convience

+ (NSAttributedString *)createAttributedStringWithBlock:(void (^)(ZWPTextAttributesContext *ctx, ZWPTextAttributes *attrs))block {
    NSParameterAssert(block);
    ZWPTextAttributesContext *ctx = [ZWPTextAttributesContext context];
    ZWPTextAttributesContextAttrsProxy *attrsProxy = [[ZWPTextAttributesContextAttrsProxy alloc] initWithContext:ctx];
    block(ctx, (ZWPTextAttributes *)attrsProxy);
    return ctx.attributedString;
}

@end

@implementation ZWPTextAttributesContextAttrsProxy

+ (Class)class {
    return [ZWPTextAttributes class];
}
- (instancetype)initWithContext:(ZWPTextAttributesContext *)ctx {
    _ctx = ctx;
    return self;
}
- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel {
    return [self.ctx.attrs methodSignatureForSelector:sel];
}
- (void)forwardInvocation:(NSInvocation *)invocation {
    [invocation invokeWithTarget:self.ctx.attrs];
}

@end