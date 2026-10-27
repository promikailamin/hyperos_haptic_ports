.class public Landroid/gesture/GestureOverlayView;
.super Landroid/widget/FrameLayout;
.source "GestureOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gesture/GestureOverlayView$FadeOutRunnable;,
        Landroid/gesture/GestureOverlayView$OnGestureListener;,
        Landroid/gesture/GestureOverlayView$OnGesturingListener;,
        Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o DITHER_FLAG:Z = true

.field private static final greylist-max-o FADE_ANIMATION_RATE:I = 0x10

.field private static final greylist-max-o GESTURE_RENDERING_ANTIALIAS:Z = true

.field public static final whitelist GESTURE_STROKE_TYPE_MULTIPLE:I = 0x1

.field public static final whitelist GESTURE_STROKE_TYPE_SINGLE:I = 0x0

.field public static final whitelist ORIENTATION_HORIZONTAL:I = 0x0

.field public static final whitelist ORIENTATION_VERTICAL:I = 0x1


# instance fields
.field private greylist-max-o mCertainGestureColor:I

.field private greylist-max-o mCurrentColor:I

.field private greylist-max-o mCurrentGesture:Landroid/gesture/Gesture;

.field private greylist-max-o mCurveEndX:F

.field private greylist-max-o mCurveEndY:F

.field private greylist-max-o mFadeDuration:J

.field private greylist-max-o mFadeEnabled:Z

.field private greylist-max-o mFadeOffset:J

.field private greylist-max-o mFadingAlpha:F

.field private greylist-max-o mFadingHasStarted:Z

.field private final greylist-max-o mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

.field private greylist-max-o mFadingStart:J

.field private final greylist-max-o mGesturePaint:Landroid/graphics/Paint;

.field private greylist-max-o mGestureStrokeAngleThreshold:F

.field private greylist-max-o mGestureStrokeLengthThreshold:F

.field private greylist-max-o mGestureStrokeSquarenessTreshold:F

.field private greylist-max-o mGestureStrokeType:I

.field private greylist-max-o mGestureStrokeWidth:F

.field private greylist-max-o mGestureVisible:Z

.field private greylist-max-o mHandleGestureActions:Z

.field private greylist-max-o mInterceptEvents:Z

.field private final greylist-max-o mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private final greylist-max-o mInvalidRect:Landroid/graphics/Rect;

.field private greylist-max-o mInvalidateExtraBorder:I

.field private greylist-max-o mIsFadingOut:Z

.field private greylist-max-o mIsGesturing:Z

.field private greylist-max-o mIsListeningForGestures:Z

.field private final greylist-max-o mOnGestureListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/gesture/GestureOverlayView$OnGestureListener;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mOnGesturePerformedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mOnGesturingListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/gesture/GestureOverlayView$OnGesturingListener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mOrientation:I

.field private final greylist-max-o mPath:Landroid/graphics/Path;

.field private greylist-max-o mPreviousWasGesturing:Z

.field private greylist-max-o mResetGesture:Z

.field private final greylist-max-o mStrokeBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTotalLength:F

.field private greylist-max-o mUncertainGestureColor:I

.field private greylist-max-o mX:F

.field private greylist-max-o mY:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFadeDuration(Landroid/gesture/GestureOverlayView;)J
    .registers 3

    iget-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadeDuration:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFadingAlpha(Landroid/gesture/GestureOverlayView;)F
    .registers 1

    iget p0, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFadingStart(Landroid/gesture/GestureOverlayView;)J
    .registers 3

    iget-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadingStart:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInterpolator(Landroid/gesture/GestureOverlayView;)Landroid/view/animation/AccelerateDecelerateInterpolator;
    .registers 1

    iget-object p0, p0, Landroid/gesture/GestureOverlayView;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsFadingOut(Landroid/gesture/GestureOverlayView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPath(Landroid/gesture/GestureOverlayView;)Landroid/graphics/Path;
    .registers 1

    iget-object p0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentGesture(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)V
    .registers 2

    iput-object p1, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFadingAlpha(Landroid/gesture/GestureOverlayView;F)V
    .registers 2

    iput p1, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFadingHasStarted(Landroid/gesture/GestureOverlayView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsFadingOut(Landroid/gesture/GestureOverlayView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPreviousWasGesturing(Landroid/gesture/GestureOverlayView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResetGesture(Landroid/gesture/GestureOverlayView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mResetGesture:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfireOnGesturePerformed(Landroid/gesture/GestureOverlayView;)V
    .registers 1

    invoke-direct {p0}, Landroid/gesture/GestureOverlayView;->fireOnGesturePerformed()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetPaintAlpha(Landroid/gesture/GestureOverlayView;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4

    .line 130
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    .line 69
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadeDuration:J

    .line 70
    const-wide/16 v0, 0x1a4

    iput-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    .line 73
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    .line 76
    const/16 v0, -0x100

    iput v0, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    .line 77
    const v0, 0x48ffff00    # 524280.0f

    iput v0, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    .line 78
    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    .line 79
    const/16 v0, 0xa

    iput v0, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    .line 82
    const/high16 v1, 0x42480000    # 50.0f

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    .line 83
    const v1, 0x3e8ccccd    # 0.275f

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    .line 84
    const/high16 v1, 0x42200000    # 40.0f

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    .line 86
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    .line 88
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/gesture/GestureOverlayView;->mInvalidRect:Landroid/graphics/Rect;

    .line 89
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    .line 90
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mGestureVisible:Z

    .line 99
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 100
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    .line 101
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    .line 107
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 110
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 113
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    .line 116
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    .line 122
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    .line 123
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    .line 124
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Landroid/gesture/GestureOverlayView;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 127
    new-instance p1, Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/gesture/GestureOverlayView$FadeOutRunnable;-><init>(Landroid/gesture/GestureOverlayView;Landroid/gesture/GestureOverlayView-IA;)V

    iput-object p1, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    .line 131
    invoke-direct {p0}, Landroid/gesture/GestureOverlayView;->init()V

    .line 132
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 135
    const v0, 0x112005f

    invoke-direct {p0, p1, p2, v0}, Landroid/gesture/GestureOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/gesture/GestureOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 140
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 10

    .line 144
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    .line 69
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadeDuration:J

    .line 70
    const-wide/16 v0, 0x1a4

    iput-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    .line 76
    const/16 v1, -0x100

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    .line 77
    const v1, 0x48ffff00    # 524280.0f

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    .line 78
    const/high16 v1, 0x41400000    # 12.0f

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    .line 79
    const/16 v1, 0xa

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    .line 81
    const/4 v2, 0x0

    iput v2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    .line 82
    const/high16 v3, 0x42480000    # 50.0f

    iput v3, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    .line 83
    const v3, 0x3e8ccccd    # 0.275f

    iput v3, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    .line 84
    const/high16 v3, 0x42200000    # 40.0f

    iput v3, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    .line 86
    iput v0, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    .line 88
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mInvalidRect:Landroid/graphics/Rect;

    .line 89
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    .line 90
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mGestureVisible:Z

    .line 99
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 100
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    .line 101
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    .line 107
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 110
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 113
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    .line 116
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    .line 122
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    .line 123
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    .line 124
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 127
    new-instance v3, Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/gesture/GestureOverlayView$FadeOutRunnable;-><init>(Landroid/gesture/GestureOverlayView;Landroid/gesture/GestureOverlayView-IA;)V

    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    .line 146
    sget-object v3, Lcom/android/internal/R$styleable;->GestureOverlayView:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 149
    iget p2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    .line 151
    iget p2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    float-to-int p2, p2

    sub-int/2addr p2, v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    .line 152
    const/4 p2, 0x2

    iget p3, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    .line 154
    const/4 p2, 0x3

    iget p3, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    .line 156
    iget-wide p2, p0, Landroid/gesture/GestureOverlayView;->mFadeDuration:J

    long-to-int p2, p2

    const/4 p3, 0x5

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Landroid/gesture/GestureOverlayView;->mFadeDuration:J

    .line 157
    iget-wide p2, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    long-to-int p2, p2

    const/4 p3, 0x4

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    .line 158
    const/4 p2, 0x6

    iget p3, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    .line 160
    const/4 p2, 0x7

    iget p3, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    .line 163
    const/16 p2, 0x9

    iget p3, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    .line 166
    const/16 p2, 0x8

    iget p3, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    .line 169
    iget-boolean p2, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    .line 171
    const/16 p2, 0xb

    iget-boolean p3, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    .line 173
    iget p2, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    .line 175
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 177
    invoke-direct {p0}, Landroid/gesture/GestureOverlayView;->init()V

    .line 178
    return-void
.end method

.method private greylist-max-o cancelGesture(Landroid/view/MotionEvent;)V
    .registers 7

    .line 724
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 725
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 726
    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_16

    .line 727
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/gesture/GestureOverlayView$OnGestureListener;

    invoke-interface {v4, p0, p1}, Landroid/gesture/GestureOverlayView$OnGestureListener;->onGestureCancelled(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    .line 726
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 730
    :cond_16
    invoke-virtual {p0, v2}, Landroid/gesture/GestureOverlayView;->clear(Z)V

    .line 731
    return-void
.end method

.method private greylist-max-o clear(ZZZ)V
    .registers 7

    .line 420
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    .line 421
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    invoke-virtual {p0, v0}, Landroid/gesture/GestureOverlayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mResetGesture:Z

    .line 423
    iget-object v1, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    iput-boolean p2, v1, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->fireActionPerformed:Z

    .line 424
    iget-object v1, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    iput-boolean v0, v1, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->resetMultipleStrokes:Z

    .line 426
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    if-eqz p1, :cond_35

    iget-object p1, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-eqz p1, :cond_35

    .line 427
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    .line 428
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    .line 429
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    .line 430
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Landroid/gesture/GestureOverlayView;->mFadingStart:J

    .line 432
    iget-object p1, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    iget-wide p2, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    invoke-virtual {p0, p1, p2, p3}, Landroid/gesture/GestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6d

    .line 434
    :cond_35
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    .line 435
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    .line 436
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    .line 438
    const/4 p1, 0x0

    if-eqz p3, :cond_49

    .line 439
    iput-object p1, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 440
    iget-object p1, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    .line 441
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->invalidate()V

    goto :goto_6d

    .line 442
    :cond_49
    if-eqz p2, :cond_53

    .line 443
    iget-object p1, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    iget-wide p2, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    invoke-virtual {p0, p1, p2, p3}, Landroid/gesture/GestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6d

    .line 444
    :cond_53
    iget p2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    if-ne p2, v2, :cond_63

    .line 445
    iget-object p1, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    iput-boolean v2, p1, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->resetMultipleStrokes:Z

    .line 446
    iget-object p1, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    iget-wide p2, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    invoke-virtual {p0, p1, p2, p3}, Landroid/gesture/GestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6d

    .line 448
    :cond_63
    iput-object p1, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 449
    iget-object p1, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    .line 450
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->invalidate()V

    .line 453
    :goto_6d
    return-void
.end method

.method private greylist-max-o fireOnGesturePerformed()V
    .registers 6

    .line 734
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    .line 735
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 736
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_17

    .line 737
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;

    iget-object v4, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    invoke-interface {v3, p0, v4}, Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;->onGesturePerformed(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)V

    .line 736
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 739
    :cond_17
    return-void
.end method

.method private greylist-max-o init()V
    .registers 4

    .line 181
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/gesture/GestureOverlayView;->setWillNotDraw(Z)V

    .line 183
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    .line 184
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 185
    iget v2, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 187
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 188
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 189
    iget v2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 190
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 192
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    iput v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentColor:I

    .line 193
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    .line 194
    return-void
.end method

.method private greylist-max-o processEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 523
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_36

    goto :goto_35

    .line 545
    :pswitch_a
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    if-eqz v0, :cond_35

    .line 546
    invoke-direct {p0, p1, v2}, Landroid/gesture/GestureOverlayView;->touchUp(Landroid/view/MotionEvent;Z)V

    .line 547
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->invalidate()V

    .line 548
    return v2

    .line 529
    :pswitch_15
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    if-eqz v0, :cond_35

    .line 530
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->touchMove(Landroid/view/MotionEvent;)Landroid/graphics/Rect;

    move-result-object p1

    .line 531
    if-eqz p1, :cond_22

    .line 532
    invoke-virtual {p0, p1}, Landroid/gesture/GestureOverlayView;->invalidate(Landroid/graphics/Rect;)V

    .line 534
    :cond_22
    return v2

    .line 538
    :pswitch_23
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    if-eqz v0, :cond_35

    .line 539
    invoke-direct {p0, p1, v1}, Landroid/gesture/GestureOverlayView;->touchUp(Landroid/view/MotionEvent;Z)V

    .line 540
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->invalidate()V

    .line 541
    return v2

    .line 525
    :pswitch_2e
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->touchDown(Landroid/view/MotionEvent;)V

    .line 526
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->invalidate()V

    .line 527
    return v2

    .line 552
    :cond_35
    :goto_35
    return v1

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_23
        :pswitch_15
        :pswitch_a
    .end packed-switch
.end method

.method private greylist-max-o setCurrentColor(I)V
    .registers 3

    .line 383
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mCurrentColor:I

    .line 384
    iget-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    if-eqz p1, :cond_10

    .line 385
    const/high16 p1, 0x437f0000    # 255.0f

    iget v0, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    goto :goto_15

    .line 387
    :cond_10
    const/16 p1, 0xff

    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    .line 389
    :goto_15
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->invalidate()V

    .line 390
    return-void
.end method

.method private greylist-max-o setPaintAlpha(I)V
    .registers 4

    .line 409
    shr-int/lit8 v0, p1, 0x7

    add-int/2addr p1, v0

    .line 410
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentColor:I

    ushr-int/lit8 v0, v0, 0x18

    .line 411
    mul-int/2addr v0, p1

    shr-int/lit8 p1, v0, 0x8

    .line 412
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/gesture/GestureOverlayView;->mCurrentColor:I

    shl-int/lit8 v1, v1, 0x8

    ushr-int/lit8 v1, v1, 0x8

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 413
    return-void
.end method

.method private greylist-max-o touchDown(Landroid/view/MotionEvent;)V
    .registers 11

    .line 556
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    .line 558
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 559
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 561
    iput v0, p0, Landroid/gesture/GestureOverlayView;->mX:F

    .line 562
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mY:F

    .line 564
    const/4 v2, 0x0

    iput v2, p0, Landroid/gesture/GestureOverlayView;->mTotalLength:F

    .line 565
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 567
    iget v3, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    if-eqz v3, :cond_34

    iget-boolean v3, p0, Landroid/gesture/GestureOverlayView;->mResetGesture:Z

    if-eqz v3, :cond_1e

    goto :goto_34

    .line 572
    :cond_1e
    iget-object v3, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-eqz v3, :cond_2a

    iget-object v3, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    invoke-virtual {v3}, Landroid/gesture/Gesture;->getStrokesCount()I

    move-result v3

    if-nez v3, :cond_47

    .line 573
    :cond_2a
    iget-boolean v3, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    if-eqz v3, :cond_47

    iget v3, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    invoke-direct {p0, v3}, Landroid/gesture/GestureOverlayView;->setCurrentColor(I)V

    goto :goto_47

    .line 568
    :cond_34
    :goto_34
    iget-boolean v3, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    if-eqz v3, :cond_3d

    iget v3, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    invoke-direct {p0, v3}, Landroid/gesture/GestureOverlayView;->setCurrentColor(I)V

    .line 569
    :cond_3d
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mResetGesture:Z

    .line 570
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 571
    iget-object v3, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 577
    :cond_47
    :goto_47
    iget-boolean v3, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    if-eqz v3, :cond_4f

    .line 578
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->cancelClearAnimation()V

    goto :goto_61

    .line 579
    :cond_4f
    iget-boolean v3, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    if-eqz v3, :cond_61

    .line 580
    const/16 v3, 0xff

    invoke-direct {p0, v3}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    .line 581
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    .line 582
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    .line 583
    iget-object v3, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    invoke-virtual {p0, v3}, Landroid/gesture/GestureOverlayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 586
    :cond_61
    :goto_61
    iget-object v3, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-nez v3, :cond_6c

    .line 587
    new-instance v3, Landroid/gesture/Gesture;

    invoke-direct {v3}, Landroid/gesture/Gesture;-><init>()V

    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 590
    :cond_6c
    iget-object v3, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v4, Landroid/gesture/GesturePoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-direct {v4, v0, v1, v5, v6}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    iget-object v3, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 593
    iget v3, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    .line 594
    iget-object v4, p0, Landroid/gesture/GestureOverlayView;->mInvalidRect:Landroid/graphics/Rect;

    float-to-int v5, v0

    sub-int v6, v5, v3

    float-to-int v7, v1

    sub-int v8, v7, v3

    add-int/2addr v5, v3

    add-int/2addr v7, v3

    invoke-virtual {v4, v6, v8, v5, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 596
    iput v0, p0, Landroid/gesture/GestureOverlayView;->mCurveEndX:F

    .line 597
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mCurveEndY:F

    .line 600
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 601
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 602
    nop

    :goto_99
    if-ge v2, v1, :cond_a7

    .line 603
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GestureOverlayView$OnGestureListener;

    invoke-interface {v3, p0, p1}, Landroid/gesture/GestureOverlayView$OnGestureListener;->onGestureStarted(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    .line 602
    add-int/lit8 v2, v2, 0x1

    goto :goto_99

    .line 605
    :cond_a7
    return-void
.end method

.method private greylist-max-o touchMove(Landroid/view/MotionEvent;)Landroid/graphics/Rect;
    .registers 14

    .line 608
    nop

    .line 610
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 611
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 613
    iget v2, p0, Landroid/gesture/GestureOverlayView;->mX:F

    .line 614
    iget v3, p0, Landroid/gesture/GestureOverlayView;->mY:F

    .line 616
    sub-float v4, v0, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 617
    sub-float v5, v1, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 619
    const/high16 v6, 0x40400000    # 3.0f

    cmpl-float v7, v4, v6

    if-gez v7, :cond_27

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_24

    goto :goto_27

    :cond_24
    const/4 p1, 0x0

    goto/16 :goto_f6

    .line 620
    :cond_27
    :goto_27
    iget-object v6, p0, Landroid/gesture/GestureOverlayView;->mInvalidRect:Landroid/graphics/Rect;

    .line 623
    iget v7, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    .line 624
    iget v8, p0, Landroid/gesture/GestureOverlayView;->mCurveEndX:F

    float-to-int v8, v8

    sub-int/2addr v8, v7

    iget v9, p0, Landroid/gesture/GestureOverlayView;->mCurveEndY:F

    float-to-int v9, v9

    sub-int/2addr v9, v7

    iget v10, p0, Landroid/gesture/GestureOverlayView;->mCurveEndX:F

    float-to-int v10, v10

    add-int/2addr v10, v7

    iget v11, p0, Landroid/gesture/GestureOverlayView;->mCurveEndY:F

    float-to-int v11, v11

    add-int/2addr v11, v7

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 627
    add-float v8, v0, v2

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iput v8, p0, Landroid/gesture/GestureOverlayView;->mCurveEndX:F

    .line 628
    add-float v10, v1, v3

    div-float/2addr v10, v9

    iput v10, p0, Landroid/gesture/GestureOverlayView;->mCurveEndY:F

    .line 630
    iget-object v9, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v9, v2, v3, v8, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 633
    float-to-int v2, v2

    sub-int v9, v2, v7

    float-to-int v3, v3

    sub-int v11, v3, v7

    add-int/2addr v2, v7

    add-int/2addr v3, v7

    invoke-virtual {v6, v9, v11, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    .line 637
    float-to-int v2, v8

    sub-int v3, v2, v7

    float-to-int v8, v10

    sub-int v9, v8, v7

    add-int/2addr v2, v7

    add-int/2addr v8, v7

    invoke-virtual {v6, v3, v9, v2, v8}, Landroid/graphics/Rect;->union(IIII)V

    .line 640
    iput v0, p0, Landroid/gesture/GestureOverlayView;->mX:F

    .line 641
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mY:F

    .line 643
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v3, Landroid/gesture/GesturePoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-direct {v3, v0, v1, v7, v8}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e0

    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    if-nez v0, :cond_e0

    .line 646
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mTotalLength:F

    float-to-double v2, v4

    float-to-double v4, v5

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Landroid/gesture/GestureOverlayView;->mTotalLength:F

    .line 648
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mTotalLength:F

    iget v2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_e0

    .line 649
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 650
    invoke-static {v0}, Landroid/gesture/GestureUtils;->computeOrientedBoundingBox(Ljava/util/ArrayList;)Landroid/gesture/OrientedBoundingBox;

    move-result-object v0

    .line 652
    iget v2, v0, Landroid/gesture/OrientedBoundingBox;->orientation:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 653
    const/high16 v3, 0x42b40000    # 90.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_aa

    .line 654
    const/high16 v3, 0x43340000    # 180.0f

    sub-float v2, v3, v2

    .line 657
    :cond_aa
    iget v0, v0, Landroid/gesture/OrientedBoundingBox;->squareness:F

    iget v3, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    cmpl-float v0, v0, v3

    const/4 v3, 0x1

    if-gtz v0, :cond_c4

    iget v0, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    if-ne v0, v3, :cond_be

    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    cmpg-float v0, v2, v0

    if-gez v0, :cond_e0

    goto :goto_c4

    :cond_be
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    cmpl-float v0, v2, v0

    if-lez v0, :cond_e0

    .line 662
    :cond_c4
    :goto_c4
    iput-boolean v3, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 663
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    invoke-direct {p0, v0}, Landroid/gesture/GestureOverlayView;->setCurrentColor(I)V

    .line 665
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    .line 666
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 667
    move v3, v1

    :goto_d2
    if-ge v3, v2, :cond_e0

    .line 668
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/gesture/GestureOverlayView$OnGesturingListener;

    invoke-interface {v4, p0}, Landroid/gesture/GestureOverlayView$OnGesturingListener;->onGesturingStarted(Landroid/gesture/GestureOverlayView;)V

    .line 667
    add-int/lit8 v3, v3, 0x1

    goto :goto_d2

    .line 675
    :cond_e0
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 676
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 677
    nop

    :goto_e7
    if-ge v1, v2, :cond_f5

    .line 678
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GestureOverlayView$OnGestureListener;

    invoke-interface {v3, p0, p1}, Landroid/gesture/GestureOverlayView$OnGestureListener;->onGesture(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    .line 677
    add-int/lit8 v1, v1, 0x1

    goto :goto_e7

    :cond_f5
    move-object p1, v6

    .line 682
    :goto_f6
    return-object p1
.end method

.method private greylist-max-o touchUp(Landroid/view/MotionEvent;Z)V
    .registers 7

    .line 686
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    .line 689
    iget-object v1, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-eqz v1, :cond_48

    .line 691
    iget-object v1, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    new-instance v2, Landroid/gesture/GestureStroke;

    iget-object v3, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    .line 693
    if-nez p2, :cond_44

    .line 695
    iget-object p2, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 696
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 697
    move v2, v0

    :goto_1c
    if-ge v2, v1, :cond_2a

    .line 698
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GestureOverlayView$OnGestureListener;

    invoke-interface {v3, p0, p1}, Landroid/gesture/GestureOverlayView$OnGestureListener;->onGestureEnded(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    .line 697
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 701
    :cond_2a
    iget-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_35

    iget-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    if-eqz p1, :cond_35

    move p1, p2

    goto :goto_36

    :cond_35
    move p1, v0

    :goto_36
    iget-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    if-eqz v1, :cond_3f

    iget-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    if-eqz v1, :cond_3f

    goto :goto_40

    :cond_3f
    move p2, v0

    :goto_40
    invoke-direct {p0, p1, p2, v0}, Landroid/gesture/GestureOverlayView;->clear(ZZZ)V

    .line 703
    goto :goto_4b

    .line 704
    :cond_44
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->cancelGesture(Landroid/view/MotionEvent;)V

    goto :goto_4b

    .line 708
    :cond_48
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->cancelGesture(Landroid/view/MotionEvent;)V

    .line 711
    :goto_4b
    iget-object p1, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 712
    iget-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    .line 713
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 715
    iget-object p1, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    .line 716
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 717
    nop

    :goto_5d
    if-ge v0, p2, :cond_6b

    .line 718
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/gesture/GestureOverlayView$OnGesturingListener;

    invoke-interface {v1, p0}, Landroid/gesture/GestureOverlayView$OnGesturingListener;->onGesturingEnded(Landroid/gesture/GestureOverlayView;)V

    .line 717
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 720
    :cond_6b
    return-void
.end method


# virtual methods
.method public whitelist addOnGestureListener(Landroid/gesture/GestureOverlayView$OnGestureListener;)V
    .registers 3

    .line 336
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    return-void
.end method

.method public whitelist addOnGesturePerformedListener(Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;)V
    .registers 3

    .line 348
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object p1, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_10

    .line 350
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    .line 352
    :cond_10
    return-void
.end method

.method public whitelist addOnGesturingListener(Landroid/gesture/GestureOverlayView$OnGesturingListener;)V
    .registers 3

    .line 367
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    return-void
.end method

.method public whitelist cancelClearAnimation()V
    .registers 2

    .line 456
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    .line 458
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    .line 459
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    invoke-virtual {p0, v0}, Landroid/gesture/GestureOverlayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 460
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 462
    return-void
.end method

.method public whitelist cancelGesture()V
    .registers 13

    .line 465
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    .line 468
    iget-object v1, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    new-instance v2, Landroid/gesture/GestureStroke;

    iget-object v3, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    .line 471
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 472
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-wide v6, v4

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 475
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 476
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 477
    move v4, v0

    :goto_23
    if-ge v4, v3, :cond_31

    .line 478
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/gesture/GestureOverlayView$OnGestureListener;

    invoke-interface {v5, p0, v1}, Landroid/gesture/GestureOverlayView$OnGestureListener;->onGestureCancelled(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    .line 477
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 481
    :cond_31
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 483
    invoke-virtual {p0, v0}, Landroid/gesture/GestureOverlayView;->clear(Z)V

    .line 484
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 485
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    .line 486
    iget-object v1, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 488
    iget-object v1, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    .line 489
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 490
    nop

    :goto_47
    if-ge v0, v2, :cond_55

    .line 491
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GestureOverlayView$OnGesturingListener;

    invoke-interface {v3, p0}, Landroid/gesture/GestureOverlayView$OnGesturingListener;->onGesturingEnded(Landroid/gesture/GestureOverlayView;)V

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 493
    :cond_55
    return-void
.end method

.method public whitelist clear(Z)V
    .registers 4

    .line 416
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/gesture/GestureOverlayView;->clear(ZZZ)V

    .line 417
    return-void
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 503
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 504
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 505
    invoke-virtual {v0}, Landroid/gesture/Gesture;->getStrokesCount()I

    move-result v0

    if-lez v0, :cond_21

    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    if-eqz v0, :cond_21

    :cond_1b
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    if-eqz v0, :cond_21

    move v0, v1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    .line 508
    :goto_22
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->processEvent(Landroid/view/MotionEvent;)Z

    .line 510
    if-eqz v0, :cond_2b

    .line 511
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 514
    :cond_2b
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 516
    return v1

    .line 519
    :cond_2f
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 401
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 403
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mGestureVisible:Z

    if-eqz v0, :cond_12

    .line 404
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 406
    :cond_12
    return-void
.end method

.method public whitelist getCurrentStroke()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getFadeOffset()J
    .registers 3

    .line 328
    iget-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    return-wide v0
.end method

.method public whitelist getGesture()Landroid/gesture/Gesture;
    .registers 2

    .line 285
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    return-object v0
.end method

.method public whitelist getGestureColor()I
    .registers 2

    .line 223
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    return v0
.end method

.method public greylist-max-o getGesturePaint()Landroid/graphics/Paint;
    .registers 2

    .line 396
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public whitelist getGesturePath()Landroid/graphics/Path;
    .registers 2

    .line 311
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public whitelist getGesturePath(Landroid/graphics/Path;)Landroid/graphics/Path;
    .registers 3

    .line 315
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 316
    return-object p1
.end method

.method public whitelist getGestureStrokeAngleThreshold()F
    .registers 2

    .line 261
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    return v0
.end method

.method public whitelist getGestureStrokeLengthThreshold()F
    .registers 2

    .line 245
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    return v0
.end method

.method public whitelist getGestureStrokeSquarenessTreshold()F
    .registers 2

    .line 253
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    return v0
.end method

.method public whitelist getGestureStrokeType()I
    .registers 2

    .line 237
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    return v0
.end method

.method public whitelist getGestureStrokeWidth()F
    .registers 2

    .line 227
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    return v0
.end method

.method public whitelist getOrientation()I
    .registers 2

    .line 201
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    return v0
.end method

.method public whitelist getUncertainGestureColor()I
    .registers 2

    .line 218
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    return v0
.end method

.method public whitelist isEventsInterceptionEnabled()Z
    .registers 2

    .line 269
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    return v0
.end method

.method public whitelist isFadeEnabled()Z
    .registers 2

    .line 277
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    return v0
.end method

.method public whitelist isGestureVisible()Z
    .registers 2

    .line 320
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mGestureVisible:Z

    return v0
.end method

.method public whitelist isGesturing()Z
    .registers 2

    .line 379
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    return v0
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 1

    .line 497
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 498
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->cancelClearAnimation()V

    .line 499
    return-void
.end method

.method public whitelist removeAllOnGestureListeners()V
    .registers 2

    .line 344
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 345
    return-void
.end method

.method public whitelist removeAllOnGesturePerformedListeners()V
    .registers 2

    .line 362
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    .line 364
    return-void
.end method

.method public whitelist removeAllOnGesturingListeners()V
    .registers 2

    .line 375
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 376
    return-void
.end method

.method public whitelist removeOnGestureListener(Landroid/gesture/GestureOverlayView$OnGestureListener;)V
    .registers 3

    .line 340
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 341
    return-void
.end method

.method public whitelist removeOnGesturePerformedListener(Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;)V
    .registers 3

    .line 355
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 356
    iget-object p1, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_10

    .line 357
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    .line 359
    :cond_10
    return-void
.end method

.method public whitelist removeOnGesturingListener(Landroid/gesture/GestureOverlayView$OnGesturingListener;)V
    .registers 3

    .line 371
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 372
    return-void
.end method

.method public whitelist setEventsInterceptionEnabled(Z)V
    .registers 2

    .line 273
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    .line 274
    return-void
.end method

.method public whitelist setFadeEnabled(Z)V
    .registers 2

    .line 281
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    .line 282
    return-void
.end method

.method public whitelist setFadeOffset(J)V
    .registers 3

    .line 332
    iput-wide p1, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    .line 333
    return-void
.end method

.method public whitelist setGesture(Landroid/gesture/Gesture;)V
    .registers 9

    .line 289
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-eqz v0, :cond_8

    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/gesture/GestureOverlayView;->clear(Z)V

    .line 293
    :cond_8
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    invoke-direct {p0, v0}, Landroid/gesture/GestureOverlayView;->setCurrentColor(I)V

    .line 294
    iput-object p1, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 296
    iget-object p1, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    invoke-virtual {p1}, Landroid/gesture/Gesture;->toPath()Landroid/graphics/Path;

    move-result-object p1

    .line 297
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 298
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 301
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 302
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    .line 303
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    sub-float/2addr v6, v0

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    .line 302
    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;FF)V

    .line 305
    iput-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mResetGesture:Z

    .line 307
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->invalidate()V

    .line 308
    return-void
.end method

.method public whitelist setGestureColor(I)V
    .registers 2

    .line 209
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    .line 210
    return-void
.end method

.method public whitelist setGestureStrokeAngleThreshold(F)V
    .registers 2

    .line 265
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    .line 266
    return-void
.end method

.method public whitelist setGestureStrokeLengthThreshold(F)V
    .registers 2

    .line 249
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    .line 250
    return-void
.end method

.method public whitelist setGestureStrokeSquarenessTreshold(F)V
    .registers 2

    .line 257
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    .line 258
    return-void
.end method

.method public whitelist setGestureStrokeType(I)V
    .registers 2

    .line 241
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    .line 242
    return-void
.end method

.method public whitelist setGestureStrokeWidth(F)V
    .registers 4

    .line 231
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    .line 232
    float-to-int v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    .line 233
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 234
    return-void
.end method

.method public whitelist setGestureVisible(Z)V
    .registers 2

    .line 324
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mGestureVisible:Z

    .line 325
    return-void
.end method

.method public whitelist setOrientation(I)V
    .registers 2

    .line 205
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    .line 206
    return-void
.end method

.method public whitelist setUncertainGestureColor(I)V
    .registers 2

    .line 213
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    .line 214
    return-void
.end method
