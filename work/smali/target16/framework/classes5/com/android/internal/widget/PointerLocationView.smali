.class public Lcom/android/internal/widget/PointerLocationView;
.super Landroid/view/View;
.source "PointerLocationView.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;,
        Lcom/android/internal/widget/PointerLocationView$PointerState;
    }
.end annotation


# static fields
.field private static final blacklist ALT_STRATEGY_PROPERY_KEY:Ljava/lang/String; = "debug.velocitytracker.alt"

.field private static final blacklist EMPTY_POINTER_STATE:Lcom/android/internal/widget/PointerLocationView$PointerState;

.field private static final blacklist GESTURE_EXCLUSION_PROP:Ljava/lang/String; = "debug.pointerlocation.showexclusion"

.field private static final blacklist TAG:Ljava/lang/String; = "Pointer"


# instance fields
.field private blacklist mActivePointerId:I

.field private final blacklist mAltVelocity:Landroid/view/VelocityTracker;

.field private greylist mCurDown:Z

.field private greylist mCurNumPointers:I

.field private final blacklist mCurrentPointPaint:Landroid/graphics/Paint;

.field private blacklist mDensity:F

.field private final blacklist mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final blacklist mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private blacklist mHeaderBottom:I

.field private blacklist mHeaderPaddingTop:I

.field private final blacklist mIm:Landroid/hardware/input/InputManager;

.field private greylist mMaxNumPointers:I

.field private final blacklist mPaint:Landroid/graphics/Paint;

.field private final blacklist mPathPaint:Landroid/graphics/Paint;

.field private final greylist mPointers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/widget/PointerLocationView$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mPrintCoords:Z

.field private final blacklist mReusableOvalRect:Landroid/graphics/RectF;

.field private final blacklist mSystemGestureExclusion:Landroid/graphics/Region;

.field private final blacklist mSystemGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

.field private final blacklist mSystemGestureExclusionPaint:Landroid/graphics/Paint;

.field private final blacklist mSystemGestureExclusionPath:Landroid/graphics/Path;

.field private final blacklist mSystemGestureExclusionRejected:Landroid/graphics/Region;

.field private final blacklist mSystemGestureExclusionRejectedPaint:Landroid/graphics/Paint;

.field private final blacklist mTargetPaint:Landroid/graphics/Paint;

.field private final blacklist mTempCoords:Landroid/view/MotionEvent$PointerCoords;

.field private final blacklist mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

.field private final blacklist mTextBackgroundPaint:Landroid/graphics/Paint;

.field private final blacklist mTextLevelPaint:Landroid/graphics/Paint;

.field private final blacklist mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final blacklist mTextPaint:Landroid/graphics/Paint;

.field private blacklist mTraceBitmap:Landroid/graphics/Bitmap;

.field private final blacklist mTraceCanvas:Landroid/graphics/Canvas;

.field private final blacklist mVC:Landroid/view/ViewConfiguration;

.field private final blacklist mVelocity:Landroid/view/VelocityTracker;

.field private blacklist mWaterfallInsets:Landroid/graphics/Insets;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSystemGestureExclusion(Lcom/android/internal/widget/PointerLocationView;)Landroid/graphics/Region;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusion:Landroid/graphics/Region;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSystemGestureExclusionRejected(Lcom/android/internal/widget/PointerLocationView;)Landroid/graphics/Region;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionRejected:Landroid/graphics/Region;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mconfigureTraceBitmap(Lcom/android/internal/widget/PointerLocationView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/PointerLocationView;->configureTraceBitmap()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 72
    new-instance v0, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-direct {v0}, Lcom/android/internal/widget/PointerLocationView$PointerState;-><init>()V

    sput-object v0, Lcom/android/internal/widget/PointerLocationView;->EMPTY_POINTER_STATE:Lcom/android/internal/widget/PointerLocationView$PointerState;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 7

    .line 199
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 137
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    .line 140
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mWaterfallInsets:Landroid/graphics/Insets;

    .line 148
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Landroid/util/SparseArray;

    .line 150
    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 159
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusion:Landroid/graphics/Region;

    .line 160
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionRejected:Landroid/graphics/Region;

    .line 161
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPath:Landroid/graphics/Path;

    .line 168
    new-instance v1, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-direct {v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 170
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    .line 175
    new-instance v2, Lcom/android/internal/widget/PointerLocationView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/PointerLocationView$1;-><init>(Lcom/android/internal/widget/PointerLocationView;)V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 305
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    .line 1018
    new-instance v2, Lcom/android/internal/widget/PointerLocationView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/PointerLocationView$2;-><init>(Lcom/android/internal/widget/PointerLocationView;)V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    .line 200
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/PointerLocationView;->setFocusableInTouchMode(Z)V

    .line 202
    const-class v2, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    .line 203
    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 205
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    .line 206
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 207
    iget-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 208
    iget-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {p1, v2, v0, v0, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 209
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    .line 210
    iget-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 211
    iget-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    const/16 v3, 0x80

    invoke-virtual {p1, v3, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 212
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    .line 213
    iget-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 214
    iget-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    const/16 v3, 0xc0

    invoke-virtual {p1, v3, v2, v0, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 215
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 216
    iget-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 217
    iget-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 218
    iget-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 219
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    .line 220
    iget-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 221
    iget-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v0, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 222
    iget-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 223
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    .line 224
    iget-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 225
    iget-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 226
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    .line 227
    iget-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 228
    iget-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v1, 0x60

    invoke-virtual {p1, v2, v0, v1, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 229
    iget-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 231
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mTraceCanvas:Landroid/graphics/Canvas;

    .line 232
    invoke-direct {p0}, Lcom/android/internal/widget/PointerLocationView;->configureTraceBitmap()V

    .line 234
    invoke-direct {p0}, Lcom/android/internal/widget/PointerLocationView;->configureDensityDependentFactors()V

    .line 236
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPaint:Landroid/graphics/Paint;

    .line 237
    iget-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPaint:Landroid/graphics/Paint;

    const/16 v1, 0x19

    invoke-virtual {p1, v1, v2, v0, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 238
    iget-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 240
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionRejectedPaint:Landroid/graphics/Paint;

    .line 241
    iget-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionRejectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 242
    iget-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionRejectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 244
    iput v0, p0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    .line 246
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    .line 248
    const-string p1, "debug.velocitytracker.alt"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 249
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_16c

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Comparing default velocity tracker strategy with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Pointer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {p1}, Landroid/view/VelocityTracker;->obtain(Ljava/lang/String;)Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    goto :goto_16f

    .line 253
    :cond_16c
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    .line 255
    :goto_16f
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/widget/PointerLocationView;)Landroid/content/Context;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/internal/widget/PointerLocationView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private blacklist configureDensityDependentFactors()V
    .registers 4

    .line 1051
    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView;->mDensity:F

    .line 1052
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    iget v2, p0, Lcom/android/internal/widget/PointerLocationView;->mDensity:F

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1053
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/widget/PointerLocationView;->mDensity:F

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1054
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/widget/PointerLocationView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1055
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/widget/PointerLocationView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1056
    return-void
.end method

.method private blacklist configureTraceBitmap()V
    .registers 5

    .line 1059
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1060
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_17

    .line 1061
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_15

    goto :goto_17

    :cond_15
    const/4 v2, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    nop

    .line 1062
    :goto_18
    if-eqz v2, :cond_1f

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    goto :goto_23

    :cond_1f
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 1063
    :goto_23
    if-eqz v2, :cond_2a

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    goto :goto_2e

    :cond_2a
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 1065
    :goto_2e
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTraceBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTraceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v1, :cond_43

    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTraceBitmap:Landroid/graphics/Bitmap;

    .line 1066
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v2, v0, :cond_43

    .line 1067
    return-void

    .line 1069
    :cond_43
    if-lez v1, :cond_47

    if-gtz v0, :cond_6e

    .line 1070
    :cond_47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring configuration: invalid display size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Pointer"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    nop

    .line 1075
    const/16 v1, 0x64

    move v0, v1

    .line 1077
    :cond_6e
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTraceBitmap:Landroid/graphics/Bitmap;

    .line 1079
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTraceCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTraceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1080
    return-void
.end method

.method private blacklist drawLabels(Landroid/graphics/Canvas;)V
    .registers 19

    .line 433
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView;->getWidth()I

    move-result v2

    iget-object v3, v0, Lcom/android/internal/widget/PointerLocationView;->mWaterfallInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->left:I

    sub-int/2addr v2, v3

    iget-object v3, v0, Lcom/android/internal/widget/PointerLocationView;->mWaterfallInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->right:I

    sub-int v7, v2, v3

    .line 434
    div-int/lit8 v8, v7, 0x7

    .line 435
    iget v2, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    iget-object v3, v0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v2, v3

    const/4 v9, 0x1

    add-int/lit8 v10, v2, 0x1

    .line 436
    iget v2, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderBottom:I

    .line 438
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 439
    iget-object v3, v0, Lcom/android/internal/widget/PointerLocationView;->mWaterfallInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->left:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 440
    iget-object v3, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Landroid/util/SparseArray;

    iget v4, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    sget-object v5, Lcom/android/internal/widget/PointerLocationView;->EMPTY_POINTER_STATE:Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 442
    iget v3, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v3

    add-int/lit8 v4, v8, -0x1

    int-to-float v4, v4

    int-to-float v5, v2

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 443
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 444
    const-string v3, "P: "

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 445
    const-string v3, " / "

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 446
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    int-to-float v10, v10

    iget-object v3, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 443
    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v12, v10, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 448
    iget-boolean v2, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v2, :cond_7b

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCurDown(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v2

    if-nez v2, :cond_85

    :cond_7b
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCurrentX(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 449
    :cond_85
    int-to-float v2, v8

    iget v3, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v3

    mul-int/lit8 v13, v8, 0x2

    add-int/lit8 v4, v13, -0x1

    int-to-float v4, v4

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 451
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 452
    const-string v3, "X: "

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v2, v3, v9}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 453
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v8, 0x1

    int-to-float v3, v3

    iget-object v4, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 451
    invoke-virtual {v1, v2, v3, v10, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 454
    int-to-float v2, v13

    iget v3, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v3

    mul-int/lit8 v4, v8, 0x3

    sub-int/2addr v4, v9

    int-to-float v4, v4

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 456
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 457
    const-string v3, "Y: "

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v2, v3, v9}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 458
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/2addr v13, v9

    int-to-float v3, v13

    iget-object v4, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 456
    invoke-virtual {v1, v2, v3, v10, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move/from16 v16, v12

    goto/16 :goto_173

    .line 460
    :cond_e7
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCurrentX(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v2

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmFirstX(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v3

    sub-float v13, v2, v3

    .line 461
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCurrentY(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v2

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmFirstY(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v3

    sub-float v14, v2, v3

    .line 462
    int-to-float v2, v8

    iget v3, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v3

    mul-int/lit8 v15, v8, 0x2

    add-int/lit8 v4, v15, -0x1

    int-to-float v4, v4

    .line 463
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v6

    move/from16 v16, v12

    iget-object v12, v0, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    invoke-virtual {v12}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v12

    int-to-float v12, v12

    cmpg-float v6, v6, v12

    if-gez v6, :cond_118

    .line 464
    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    goto :goto_11a

    :cond_118
    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    .line 462
    :goto_11a
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 465
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 466
    const-string v3, "dX: "

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v9}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 467
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v8, 0x1

    int-to-float v3, v3

    iget-object v4, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 465
    invoke-virtual {v1, v2, v3, v10, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 468
    int-to-float v2, v15

    iget v3, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v3

    mul-int/lit8 v4, v8, 0x3

    sub-int/2addr v4, v9

    int-to-float v4, v4

    .line 469
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-object v12, v0, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    invoke-virtual {v12}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v12

    int-to-float v12, v12

    cmpg-float v6, v6, v12

    if-gez v6, :cond_153

    .line 470
    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    goto :goto_155

    :cond_153
    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    .line 468
    :goto_155
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 471
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 472
    const-string v3, "dY: "

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v9}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 473
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/2addr v15, v9

    int-to-float v3, v15

    iget-object v4, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 471
    invoke-virtual {v1, v2, v3, v10, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 476
    :goto_173
    mul-int/lit8 v12, v8, 0x3

    int-to-float v2, v12

    iget v3, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v3

    mul-int/lit8 v13, v8, 0x4

    add-int/lit8 v4, v13, -0x1

    int-to-float v4, v4

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 478
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 479
    const-string v3, "Xv: "

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmXVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v3

    const/4 v14, 0x3

    invoke-virtual {v2, v3, v14}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 480
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/2addr v12, v9

    int-to-float v3, v12

    iget-object v4, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 478
    invoke-virtual {v1, v2, v3, v10, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 482
    int-to-float v2, v13

    iget v3, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v3

    mul-int/lit8 v12, v8, 0x5

    add-int/lit8 v4, v12, -0x1

    int-to-float v4, v4

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 484
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 485
    const-string v3, "Yv: "

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmYVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v3

    invoke-virtual {v2, v3, v14}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 486
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/2addr v13, v9

    int-to-float v3, v13

    iget-object v4, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 484
    invoke-virtual {v1, v2, v3, v10, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 488
    int-to-float v2, v12

    iget v3, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v3

    mul-int/lit8 v13, v8, 0x6

    add-int/lit8 v4, v13, -0x1

    int-to-float v4, v4

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 490
    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v1

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    int-to-float v8, v8

    mul-float/2addr v1, v8

    add-float/2addr v1, v2

    sub-float v4, v1, v16

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 492
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 493
    const-string v3, "Prs: "

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/4 v14, 0x2

    invoke-virtual {v2, v3, v14}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 494
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/2addr v12, v9

    int-to-float v3, v12

    iget-object v4, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 492
    invoke-virtual {v1, v2, v3, v10, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 496
    int-to-float v2, v13

    iget v3, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v3

    int-to-float v4, v7

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 497
    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v1

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->size:F

    mul-float/2addr v1, v8

    add-float/2addr v1, v2

    sub-float v4, v1, v16

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 499
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 500
    const-string v3, "Size: "

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->size:F

    invoke-virtual {v2, v3, v14}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 501
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/2addr v13, v9

    int-to-float v3, v13

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 499
    invoke-virtual {v1, v2, v3, v10, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 502
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 503
    return-void
.end method

.method private blacklist drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V
    .registers 12

    .line 309
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 310
    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr p6, v0

    float-to-double v0, p6

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float p6, v0

    invoke-virtual {p1, p6, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 311
    iget-object p6, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p5, v0

    sub-float v1, p2, p5

    iput v1, p6, Landroid/graphics/RectF;->left:F

    .line 312
    iget-object p6, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    add-float/2addr p2, p5

    iput p2, p6, Landroid/graphics/RectF;->right:F

    .line 313
    iget-object p2, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float/2addr p4, v0

    sub-float p5, p3, p4

    iput p5, p2, Landroid/graphics/RectF;->top:F

    .line 314
    iget-object p2, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    add-float/2addr p3, p4

    iput p3, p2, Landroid/graphics/RectF;->bottom:F

    .line 315
    iget-object p2, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2, p7}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 316
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 317
    return-void
.end method

.method private static blacklist inverseRotation(I)I
    .registers 4

    .line 1083
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_26

    .line 1089
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unexpected surface rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Pointer"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    goto :goto_24

    .line 1087
    :pswitch_1d
    const/4 v0, 0x1

    goto :goto_24

    .line 1086
    :pswitch_1f
    const/4 v0, 0x2

    goto :goto_24

    .line 1085
    :pswitch_21
    const/4 v0, 0x3

    goto :goto_24

    .line 1084
    :pswitch_23
    nop

    .line 1083
    :goto_24
    return v0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_23
        :pswitch_21
        :pswitch_1f
        :pswitch_1d
    .end packed-switch
.end method

.method private blacklist logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V
    .registers 15

    .line 525
    invoke-virtual {p6, p3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    .line 526
    invoke-virtual {p6}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    .line 528
    and-int/lit16 v2, p2, 0xff

    const v3, 0xff00

    const-string v4, "UP"

    const-string v5, "DOWN"

    const-string v6, "MOVE"

    packed-switch v2, :pswitch_data_1a2

    .line 573
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4d

    .line 567
    :pswitch_1b
    nop

    .line 568
    const-string v4, "HOVER EXIT"

    goto :goto_4d

    .line 564
    :pswitch_1f
    nop

    .line 565
    const-string v4, "HOVER ENTER"

    goto :goto_4d

    .line 570
    :pswitch_23
    nop

    .line 571
    const-string v4, "SCROLL"

    goto :goto_4d

    .line 561
    :pswitch_27
    nop

    .line 562
    const-string v4, "HOVER MOVE"

    goto :goto_4d

    .line 553
    :pswitch_2b
    and-int/2addr p2, v3

    shr-int/lit8 p2, p2, 0x8

    if-ne p3, p2, :cond_31

    .line 555
    goto :goto_4d

    .line 557
    :cond_31
    nop

    .line 559
    move-object v4, v6

    goto :goto_4d

    .line 545
    :pswitch_34
    and-int/2addr p2, v3

    shr-int/lit8 p2, p2, 0x8

    if-ne p3, p2, :cond_3b

    .line 547
    move-object v4, v5

    goto :goto_4d

    .line 549
    :cond_3b
    nop

    .line 551
    move-object v4, v6

    goto :goto_4d

    .line 542
    :pswitch_3e
    nop

    .line 543
    const-string v4, "OUTSIDE"

    goto :goto_4d

    .line 539
    :pswitch_42
    nop

    .line 540
    const-string v4, "CANCEL"

    goto :goto_4d

    .line 536
    :pswitch_46
    nop

    .line 537
    move-object v4, v6

    goto :goto_4d

    .line 533
    :pswitch_49
    nop

    .line 534
    goto :goto_4d

    .line 530
    :pswitch_4b
    nop

    .line 531
    move-object v4, v5

    .line 577
    :goto_4d
    iget-object p2, p0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p2

    .line 578
    invoke-virtual {p2, p1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    const-string p2, " id "

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    const/4 p2, 0x1

    add-int/2addr p5, p2

    invoke-virtual {p1, p5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    .line 579
    const-string p3, ": "

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    .line 580
    invoke-virtual {p1, v4}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    .line 581
    const-string p3, " ("

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    iget p3, p4, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 p5, 0x3

    invoke-virtual {p1, p3, p5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    const-string p3, ", "

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    iget v2, p4, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {p1, v2, p5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    .line 582
    const-string v2, ") Pressure="

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    iget v2, p4, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    invoke-virtual {p1, v2, p5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    .line 583
    const-string v2, " Size="

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    iget v2, p4, Landroid/view/MotionEvent$PointerCoords;->size:F

    invoke-virtual {p1, v2, p5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    .line 584
    const-string v2, " TouchMajor="

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    iget v2, p4, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    invoke-virtual {p1, v2, p5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    .line 585
    const-string v2, " TouchMinor="

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    iget v2, p4, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    invoke-virtual {p1, v2, p5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    .line 586
    const-string v2, " ToolMajor="

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    iget v2, p4, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    invoke-virtual {p1, v2, p5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    .line 587
    const-string v2, " ToolMinor="

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    iget v2, p4, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    invoke-virtual {p1, v2, p5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    .line 588
    const-string v2, " Orientation="

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    iget v2, p4, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    const/high16 v3, 0x43340000    # 180.0f

    mul-float/2addr v2, v3

    float-to-double v4, v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    double-to-float v2, v4

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    .line 589
    const-string v2, "deg"

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    .line 590
    const-string v4, " Tilt="

    invoke-virtual {p1, v4}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    .line 591
    const/16 v4, 0x19

    invoke-virtual {p4, v4}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v4

    mul-float/2addr v4, v3

    float-to-double v3, v4

    div-double/2addr v3, v6

    double-to-float v3, v3

    .line 590
    invoke-virtual {p1, v3, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    .line 592
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    .line 593
    const-string v2, " Distance="

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    const/16 v2, 0x18

    invoke-virtual {p4, v2}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v2

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    .line 594
    const-string v2, " VScroll="

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    const/16 v2, 0x9

    invoke-virtual {p4, v2}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v2

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    .line 595
    const-string v2, " HScroll="

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    const/16 v2, 0xa

    invoke-virtual {p4, v2}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result p4

    invoke-virtual {p1, p4, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    .line 596
    const-string p2, " BoundingBox=[("

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    .line 597
    const/16 p2, 0x20

    invoke-virtual {p6, p2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p2

    invoke-virtual {p1, p2, p5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    .line 598
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    const/16 p2, 0x21

    invoke-virtual {p6, p2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p2

    invoke-virtual {p1, p2, p5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    .line 599
    const-string p2, ", ("

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    const/16 p2, 0x22

    invoke-virtual {p6, p2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p2

    invoke-virtual {p1, p2, p5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    .line 600
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    const/16 p2, 0x23

    invoke-virtual {p6, p2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p2

    invoke-virtual {p1, p2, p5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    .line 601
    const-string p2, ")]"

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    .line 602
    const-string p2, " ToolType="

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    invoke-static {v0}, Landroid/view/MotionEvent;->toolTypeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    .line 603
    const-string p2, " ButtonState="

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    invoke-static {v1}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    .line 604
    invoke-virtual {p1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 577
    const-string p2, "Pointer"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    return-void

    nop

    :pswitch_data_1a2
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_49
        :pswitch_46
        :pswitch_42
        :pswitch_3e
        :pswitch_34
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
    .end packed-switch
.end method

.method private blacklist logInputDeviceState(ILjava/lang/String;)V
    .registers 6

    .line 884
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 885
    const-string v1, ": "

    const-string v2, "Pointer"

    if-eqz v0, :cond_25

    .line 886
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 888
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :goto_3d
    return-void
.end method

.method private blacklist logInputDevices()V
    .registers 5

    .line 877
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    .line 878
    const/4 v1, 0x0

    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_12

    .line 879
    aget v2, v0, v1

    const-string v3, "Device Enumerated"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    .line 878
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 881
    :cond_12
    return-void
.end method

.method private blacklist logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V
    .registers 14

    .line 506
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 507
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v7

    .line 508
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    .line 509
    const/4 v9, 0x0

    move v10, v9

    :goto_e
    if-ge v10, v7, :cond_2d

    .line 510
    move v3, v9

    :goto_11
    if-ge v3, v8, :cond_27

    .line 511
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 512
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {p2, v3, v10, v0}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 513
    iget-object v4, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    .line 510
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 509
    :cond_27
    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    .line 516
    :cond_2d
    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    move v3, v9

    :goto_31
    if-ge v3, v8, :cond_45

    .line 517
    invoke-virtual {v6, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 518
    iget-object p1, v0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {v6, v3, p1}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 519
    iget-object v4, v0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    .line 516
    add-int/lit8 v3, v3, 0x1

    move-object v0, p0

    goto :goto_31

    .line 521
    :cond_45
    return-void
.end method

.method private blacklist rotateCanvasToUnrotatedDisplay(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1096
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/widget/PointerLocationView;->inverseRotation(I)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_50

    goto :goto_4e

    .line 1106
    :pswitch_13
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1107
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTraceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_4e

    .line 1102
    :pswitch_24
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1103
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTraceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTraceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1104
    goto :goto_4e

    .line 1098
    :pswitch_3d
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1099
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTraceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1100
    nop

    .line 1110
    :goto_4e
    return-void

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_24
        :pswitch_13
    .end packed-switch
.end method

.method private static blacklist shouldLogKey(I)Z
    .registers 3

    .line 803
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_16

    .line 811
    invoke-static {p0}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    move-result v1

    if-nez v1, :cond_14

    .line 812
    invoke-static {p0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_14

    .line 809
    :pswitch_11
    return v0

    .line 812
    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    nop

    .line 811
    :goto_15
    return v0

    :pswitch_data_16
    .packed-switch 0x13
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method private static blacklist shouldShowSystemGestureExclusion()Z
    .registers 1

    .line 893
    invoke-static {}, Lcom/android/internal/widget/PointerLocationView;->systemGestureExclusionOpacity()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static blacklist systemGestureExclusionOpacity()I
    .registers 3

    .line 897
    const-string v0, "debug.pointerlocation.showexclusion"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 898
    if-ltz v0, :cond_e

    const/16 v2, 0xff

    if-gt v0, v2, :cond_e

    move v1, v0

    :cond_e
    return v1
.end method

.method private blacklist updateDrawTrace(Lcom/android/internal/widget/PointerLocationView$PointerState;)V
    .registers 11

    .line 741
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 742
    invoke-static {p1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCurrentX(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v6

    .line 743
    invoke-static {p1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCurrentY(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v7

    .line 744
    invoke-static {p1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmPreviousX(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v4

    .line 745
    invoke-static {p1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmPreviousY(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v5

    .line 746
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_4a

    .line 749
    :cond_32
    iget-object v3, p0, Lcom/android/internal/widget/PointerLocationView;->mTraceCanvas:Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 750
    invoke-static {p1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmPreviousPointIsHistorical(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result p1

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    goto :goto_44

    :cond_42
    iget-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    .line 751
    :goto_44
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTraceCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v4, v5, p1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 752
    return-void

    .line 747
    :cond_4a
    :goto_4a
    return-void
.end method


# virtual methods
.method public whitelist onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 5

    .line 263
    nop

    .line 264
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 266
    nop

    .line 267
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v2

    .line 268
    if-eqz v2, :cond_f

    .line 269
    invoke-virtual {v2}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v1

    .line 272
    :cond_f
    nop

    .line 273
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v2

    .line 274
    if-eqz v2, :cond_1f

    .line 275
    invoke-virtual {v2}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 278
    :cond_1f
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 279
    nop

    .line 280
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 281
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 284
    :cond_3a
    iput v1, p0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    .line 285
    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mWaterfallInsets:Landroid/graphics/Insets;

    .line 286
    invoke-super {p0, p1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 4

    .line 824
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 826
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 827
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 828
    invoke-static {}, Lcom/android/internal/widget/PointerLocationView;->shouldShowSystemGestureExclusion()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 830
    :try_start_1d
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mContext:Landroid/content/Context;

    .line 832
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    .line 831
    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2c} :catch_3c

    .line 835
    nop

    .line 836
    invoke-static {}, Lcom/android/internal/widget/PointerLocationView;->systemGestureExclusionOpacity()I

    move-result v0

    .line 837
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 838
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionRejectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 839
    goto :goto_47

    .line 833
    :catch_3c
    move-exception v0

    .line 834
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 840
    :cond_42
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 842
    :goto_47
    invoke-direct {p0}, Lcom/android/internal/widget/PointerLocationView;->logInputDevices()V

    .line 843
    return-void
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1044
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1045
    invoke-direct {p0}, Lcom/android/internal/widget/PointerLocationView;->configureTraceBitmap()V

    .line 1046
    invoke-direct {p0}, Lcom/android/internal/widget/PointerLocationView;->configureDensityDependentFactors()V

    .line 1047
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 4

    .line 847
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 849
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 850
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 852
    :try_start_f
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mContext:Landroid/content/Context;

    .line 853
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    .line 852
    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1e} :catch_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_1e} :catch_1f

    .line 858
    goto :goto_27

    .line 856
    :catch_1f
    move-exception v0

    .line 857
    const-string v1, "Pointer"

    const-string v2, "Failed to unregister window manager callbacks"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 859
    :goto_27
    return-void

    .line 854
    :catch_28
    move-exception v0

    .line 855
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 18

    .line 321
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 324
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 325
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/PointerLocationView;->rotateCanvasToUnrotatedDisplay(Landroid/graphics/Canvas;)V

    .line 326
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mTraceBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 327
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 329
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_35

    .line 330
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 331
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusion:Landroid/graphics/Region;

    iget-object v3, v0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3}, Landroid/graphics/Region;->getBoundaryPath(Landroid/graphics/Path;)Z

    .line 332
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 335
    :cond_35
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionRejected:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_50

    .line 336
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 337
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionRejected:Landroid/graphics/Region;

    iget-object v3, v0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3}, Landroid/graphics/Region;->getBoundaryPath(Landroid/graphics/Path;)Z

    .line 338
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionRejectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 342
    :cond_50
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/PointerLocationView;->drawLabels(Landroid/graphics/Canvas;)V

    .line 345
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 346
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/PointerLocationView;->rotateCanvasToUnrotatedDisplay(Landroid/graphics/Canvas;)V

    .line 347
    const/4 v9, 0x0

    move v10, v9

    :goto_5b
    if-ge v10, v8, :cond_255

    .line 348
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 349
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCurrentX(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v2

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCurrentY(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v3

    .line 351
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    const/16 v12, 0x80

    const/16 v13, 0xff

    if-nez v4, :cond_b6

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_b6

    .line 353
    iget-object v4, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v7, 0x40

    invoke-virtual {v4, v13, v13, v7, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 354
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmXVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v4

    const/high16 v14, 0x41800000    # 16.0f

    mul-float/2addr v4, v14

    .line 355
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmYVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v5

    mul-float/2addr v5, v14

    .line 356
    add-float/2addr v4, v2

    add-float/2addr v5, v3

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 359
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_b6

    .line 360
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v7, v13, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 361
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmAltXVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v1

    mul-float/2addr v1, v14

    .line 362
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmAltYVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v4

    mul-float/2addr v4, v14

    .line 363
    add-float/2addr v1, v2

    add-float v5, v3, v4

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move v4, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 367
    :cond_b6
    iget-boolean v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v1, :cond_24d

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCurDown(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v1

    if-eqz v1, :cond_24d

    .line 369
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v3, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v5, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 372
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v2, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v3, v1

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v4, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 373
    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView;->getWidth()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    .line 372
    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 376
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v14, v2

    .line 377
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    rsub-int v15, v14, 0xff

    invoke-virtual {v2, v13, v14, v13, v15}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 378
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget-object v4, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 381
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v13, v14, v15, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 382
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v4

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v6

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/PointerLocationView;->drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 386
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v14, v12, v15}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 387
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v2, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v3, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v4, v1, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v5, v1, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v6, v1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/PointerLocationView;->drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 391
    move-object v6, v0

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41c00000    # 24.0f

    iget v2, v6, Lcom/android/internal/widget/PointerLocationView;->mDensity:F

    mul-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 392
    iget-object v1, v6, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v14, v13, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 393
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    float-to-double v3, v0

    mul-double/2addr v1, v3

    double-to-float v7, v1

    .line 395
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    neg-double v0, v0

    mul-double/2addr v0, v3

    double-to-float v12, v0

    .line 397
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmToolType(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e1

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmToolType(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1b7

    goto :goto_1e1

    .line 406
    :cond_1b7
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float v1, v0, v7

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float v2, v0, v12

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float v3, v0, v7

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float v4, v0, v12

    iget-object v5, v6, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v1, p1

    goto :goto_205

    .line 400
    :cond_1e1
    :goto_1e1
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v2, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float v3, v0, v7

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float v4, v0, v12

    iget-object v5, v6, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object v1, v0

    .line 415
    :goto_205
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    .line 416
    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v0

    float-to-double v2, v0

    .line 415
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 417
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v7, v0

    add-float/2addr v2, v7

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v3

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v12, v0

    add-float/2addr v3, v12

    const/high16 v0, 0x40400000    # 3.0f

    iget v4, v6, Lcom/android/internal/widget/PointerLocationView;->mDensity:F

    mul-float/2addr v4, v0

    iget-object v0, v6, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 423
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmHasBoundingBox(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v0

    if-eqz v0, :cond_24e

    .line 424
    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmBoundingLeft(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v1

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmBoundingTop(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v2

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmBoundingRight(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v3

    invoke-static {v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmBoundingBottom(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v4

    iget-object v5, v6, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_24e

    .line 367
    :cond_24d
    move-object v6, v0

    .line 347
    :cond_24e
    :goto_24e
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    move-object v0, v6

    goto/16 :goto_5b

    .line 429
    :cond_255
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 430
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 766
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    .line 767
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_c

    .line 768
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PointerLocationView;->onPointerEvent(Landroid/view/MotionEvent;)V

    goto :goto_25

    .line 769
    :cond_c
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_16

    .line 770
    const-string v0, "Joystick"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    goto :goto_25

    .line 771
    :cond_16
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_20

    .line 772
    const-string v0, "Position"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    goto :goto_25

    .line 774
    :cond_20
    const-string v0, "Generic"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 776
    :goto_25
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist onInputDeviceAdded(I)V
    .registers 3

    .line 863
    const-string v0, "Device Added"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    .line 864
    return-void
.end method

.method public whitelist onInputDeviceChanged(I)V
    .registers 3

    .line 868
    const-string v0, "Device Changed"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    .line 869
    return-void
.end method

.method public whitelist onInputDeviceRemoved(I)V
    .registers 3

    .line 873
    const-string v0, "Device Removed"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    .line 874
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 781
    invoke-static {p1}, Lcom/android/internal/widget/PointerLocationView;->shouldLogKey(I)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 782
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    .line 783
    const-string v0, "Pointer"

    if-nez p1, :cond_25

    .line 784
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key Down: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 786
    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key Repeat #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :goto_45
    const/4 p1, 0x1

    return p1

    .line 790
    :cond_47
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 795
    invoke-static {p1}, Lcom/android/internal/widget/PointerLocationView;->shouldLogKey(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 796
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Key Up: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Pointer"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const/4 p1, 0x1

    return p1

    .line 799
    :cond_20
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected whitelist onMeasure(II)V
    .registers 3

    .line 291
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 292
    iget-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 293
    iget p1, p0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    iget-object p2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView;->mHeaderBottom:I

    .line 301
    return-void
.end method

.method public blacklist onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 18

    .line 611
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getSurfaceRotation()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/widget/PointerLocationView;->inverseRotation(I)I

    move-result v1

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mTraceBitmap:Landroid/graphics/Bitmap;

    .line 612
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, v0, Lcom/android/internal/widget/PointerLocationView;->mTraceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 611
    invoke-static {v1, v2, v3}, Landroid/view/MotionEvent;->createRotateMatrix(III)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 614
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 616
    const/16 v7, 0x20

    const v8, 0xff00

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v2, :cond_31

    and-int/lit16 v1, v2, 0xff

    const/4 v3, 0x5

    if-ne v1, v3, :cond_b3

    .line 618
    :cond_31
    and-int v1, v2, v8

    shr-int/lit8 v1, v1, 0x8

    .line 620
    if-nez v2, :cond_57

    .line 621
    iget-object v3, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 622
    iput-boolean v10, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    .line 623
    iput v9, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 624
    iput v9, v0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    .line 625
    iget-object v3, v0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 626
    iget-object v3, v0, Lcom/android/internal/widget/PointerLocationView;->mTraceCanvas:Landroid/graphics/Canvas;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v9, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 627
    iget-object v3, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_57

    .line 628
    iget-object v3, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 632
    :cond_57
    iget v3, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    add-int/2addr v3, v10

    iput v3, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 633
    iget v3, v0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    iget v4, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    if-ge v3, v4, :cond_66

    .line 634
    iget v3, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    iput v3, v0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    .line 637
    :cond_66
    invoke-virtual {v6, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 638
    iget-object v3, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 639
    if-nez v3, :cond_7e

    .line 640
    new-instance v3, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-direct {v3}, Lcom/android/internal/widget/PointerLocationView$PointerState;-><init>()V

    .line 641
    iget-object v4, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 644
    :cond_7e
    iget-object v4, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Landroid/util/SparseArray;

    iget v5, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_98

    iget-object v4, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Landroid/util/SparseArray;

    iget v5, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    .line 645
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-static {v4}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCurDown(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v4

    if-nez v4, :cond_9a

    .line 646
    :cond_98
    iput v1, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    .line 649
    :cond_9a
    invoke-static {v3, v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmCurDown(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)V

    .line 650
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 651
    if-eqz v1, :cond_af

    .line 652
    invoke-virtual {v1, v7}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v1

    if-eqz v1, :cond_af

    move v1, v10

    goto :goto_b0

    :cond_af
    move v1, v9

    :goto_b0
    invoke-static {v3, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmHasBoundingBox(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)V

    .line 655
    :cond_b3
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    .line 657
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v6}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 658
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 659
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_cf

    .line 660
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v6}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 661
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 664
    :cond_cf
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v12

    .line 665
    move v13, v9

    :goto_d4
    const/4 v14, 0x0

    if-ge v13, v12, :cond_115

    .line 666
    move v3, v9

    :goto_d8
    if-ge v3, v11, :cond_112

    .line 667
    invoke-virtual {v6, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 668
    iget-boolean v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v1, :cond_ec

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/PointerLocationView$PointerState;

    move-object v15, v1

    goto :goto_ed

    :cond_ec
    move-object v15, v14

    .line 669
    :goto_ed
    if-eqz v15, :cond_f4

    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    goto :goto_f6

    :cond_f4
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    :goto_f6
    move-object v4, v1

    .line 670
    invoke-virtual {v6, v3, v13, v4}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 671
    iget-boolean v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v1, :cond_103

    .line 672
    const-string v1, "Pointer"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    .line 674
    :cond_103
    if-eqz v15, :cond_10f

    .line 675
    iget v1, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v15, v1, v4, v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FFZ)V

    .line 676
    invoke-direct {v0, v15}, Lcom/android/internal/widget/PointerLocationView;->updateDrawTrace(Lcom/android/internal/widget/PointerLocationView$PointerState;)V

    .line 666
    :cond_10f
    add-int/lit8 v3, v3, 0x1

    goto :goto_d8

    .line 665
    :cond_112
    add-int/lit8 v13, v13, 0x1

    goto :goto_d4

    .line 680
    :cond_115
    move v3, v9

    :goto_116
    if-ge v3, v11, :cond_1a8

    .line 681
    invoke-virtual {v6, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 682
    iget-boolean v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v1, :cond_12a

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/PointerLocationView$PointerState;

    move-object v12, v1

    goto :goto_12b

    :cond_12a
    move-object v12, v14

    .line 683
    :goto_12b
    if-eqz v12, :cond_132

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    goto :goto_134

    :cond_132
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    :goto_134
    move-object v4, v1

    .line 684
    invoke-virtual {v6, v3, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 685
    iget-boolean v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v1, :cond_141

    .line 686
    const-string v1, "Pointer"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    .line 688
    :cond_141
    if-eqz v12, :cond_1a4

    .line 689
    iget v1, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v12, v1, v4, v9}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FFZ)V

    .line 690
    invoke-direct {v0, v12}, Lcom/android/internal/widget/PointerLocationView;->updateDrawTrace(Lcom/android/internal/widget/PointerLocationView$PointerState;)V

    .line 691
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    invoke-static {v12, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmXVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V

    .line 692
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    invoke-static {v12, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmYVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V

    .line 693
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_175

    .line 694
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    invoke-static {v12, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmAltXVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V

    .line 695
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    invoke-static {v12, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmAltYVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V

    .line 697
    :cond_175
    invoke-virtual {v6, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    invoke-static {v12, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmToolType(Lcom/android/internal/widget/PointerLocationView$PointerState;I)V

    .line 699
    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmHasBoundingBox(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v1

    if-eqz v1, :cond_1a4

    .line 700
    invoke-virtual {v6, v7, v3}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    invoke-static {v12, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmBoundingLeft(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V

    .line 701
    const/16 v1, 0x21

    invoke-virtual {v6, v1, v3}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    invoke-static {v12, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmBoundingTop(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V

    .line 702
    const/16 v1, 0x22

    invoke-virtual {v6, v1, v3}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    invoke-static {v12, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmBoundingRight(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V

    .line 703
    const/16 v1, 0x23

    invoke-virtual {v6, v1, v3}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    invoke-static {v12, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmBoundingBottom(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V

    .line 680
    :cond_1a4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_116

    .line 708
    :cond_1a8
    const/4 v1, 0x3

    if-eq v2, v10, :cond_1b2

    if-eq v2, v1, :cond_1b2

    and-int/lit16 v3, v2, 0xff

    const/4 v4, 0x6

    if-ne v3, v4, :cond_229

    .line 711
    :cond_1b2
    and-int v3, v2, v8

    shr-int/lit8 v3, v3, 0x8

    .line 714
    invoke-virtual {v6, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 715
    iget-object v5, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 716
    if-nez v5, :cond_205

    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find pointer id="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " in mPointers map, size="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Landroid/util/SparseArray;

    .line 718
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pointerindex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " action=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 719
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 717
    const-string v1, "Pointer"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return-void

    .line 722
    :cond_205
    invoke-static {v5, v9}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmCurDown(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)V

    .line 724
    if-eq v2, v10, :cond_225

    if-ne v2, v1, :cond_20d

    goto :goto_225

    .line 729
    :cond_20d
    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    sub-int/2addr v1, v10

    iput v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 730
    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    if-ne v1, v4, :cond_21f

    .line 731
    if-nez v3, :cond_219

    move v9, v10

    :cond_219
    invoke-virtual {v6, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    .line 733
    :cond_21f
    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-virtual {v5, v1, v1, v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FFZ)V

    goto :goto_229

    .line 726
    :cond_225
    :goto_225
    iput-boolean v9, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    .line 727
    iput v9, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 737
    :cond_229
    :goto_229
    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView;->invalidate()V

    .line 738
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 756
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PointerLocationView;->onPointerEvent(Landroid/view/MotionEvent;)V

    .line 758
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_12

    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->isFocused()Z

    move-result p1

    if-nez p1, :cond_12

    .line 759
    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->requestFocus()Z

    .line 761
    :cond_12
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 818
    const-string v0, "Trackball"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 819
    const/4 p1, 0x1

    return p1
.end method

.method public blacklist setPrintCoords(Z)V
    .registers 2

    .line 258
    iput-boolean p1, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    .line 259
    return-void
.end method
