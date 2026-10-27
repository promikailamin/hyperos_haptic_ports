.class Lmiui/content/res/IconCustomizer$IconConfig;
.super Ljava/lang/Object;
.source "IconCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/res/IconCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconConfig"
.end annotation


# instance fields
.field blacklist mCameraX:F

.field blacklist mCameraY:F

.field blacklist mConfigIconMask:Ljava/lang/String;

.field blacklist mIconClipCornerRadius:F

.field blacklist mIconClipHeight:F

.field blacklist mIconClipWidth:F

.field blacklist mIconFilters:Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

.field blacklist mIsFullMask:Z

.field blacklist mOverridedIrregularContentHeight:I

.field blacklist mOverridedIrregularContentWidth:I

.field blacklist mPointsMappingFrom:[F

.field blacklist mPointsMappingTo:[F

.field blacklist mRotateX:F

.field blacklist mRotateY:F

.field blacklist mRotateZ:F

.field blacklist mScaleX:F

.field blacklist mScaleY:F

.field blacklist mSkewX:F

.field blacklist mSkewY:F

.field blacklist mSupportLayerIcon:Z

.field blacklist mTransX:F

.field blacklist mTransY:F

.field blacklist mUseDynamicIcon:Z

.field blacklist mUseModIcon:Z


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleX:F

    .line 112
    iput v0, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleY:F

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mUseModIcon:Z

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mUseDynamicIcon:Z

    .line 127
    iput-boolean v0, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mSupportLayerIcon:Z

    .line 131
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mIconClipCornerRadius:F

    .line 132
    iput v0, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mIconClipWidth:F

    .line 133
    iput v0, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mIconClipHeight:F

    return-void
.end method

.method synthetic constructor blacklist <init>(Lmiui/content/res/IconCustomizer$IconConfig-IA;)V
    .registers 2

    invoke-direct {p0}, Lmiui/content/res/IconCustomizer$IconConfig;-><init>()V

    return-void
.end method
