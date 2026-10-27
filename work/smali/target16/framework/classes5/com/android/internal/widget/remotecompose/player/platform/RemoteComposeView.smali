.class public Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;
.super Landroid/widget/FrameLayout;
.source "RemoteComposeView.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView$ClickCallbacks;
    }
.end annotation


# static fields
.field static final blacklist DEFAULT_FRAME_RATE:F = 60.0f

.field private static final blacklist MAX_BITMAP_MEMORY:I = 0x1400000

.field static final blacklist POST_TO_NEXT_FRAME_THRESHOLD:F = 60.0f

.field static final blacklist USE_VIEW_AREA_CLICK:Z = true

.field private static final blacklist sScaleOutput:[F


# instance fields
.field blacklist mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

.field blacklist mActionDownPoint:Landroid/graphics/Point;

.field private blacklist mChoreographer:Landroid/view/Choreographer;

.field blacklist mClock:Ljava/time/Clock;

.field private blacklist mCount:I

.field blacklist mDebug:I

.field blacklist mDensity:F

.field private blacklist mDisable:Z

.field blacklist mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

.field private blacklist mDuration:J

.field private blacklist mErrorMessage:Ljava/lang/String;

.field private blacklist mEvalTime:Z

.field private blacklist mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field blacklist mHasClickAreas:Z

.field blacklist mInActionDown:Z

.field private blacklist mLastAnimationTime:F

.field blacklist mLastFrameCall:J

.field blacklist mLastFrameDelay:J

.field blacklist mMaxFrameDelay:J

.field blacklist mMaxFrameRate:F

.field blacklist mResolvedData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mStart:J

.field blacklist mTheme:I

.field private blacklist mTime:J

.field private blacklist mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static synthetic blacklist $r8$lambda$cZKmJXt7PGRX5vsDb-jMB2BZpYM(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->lambda$updateClickAreas$0(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;Landroid/view/View;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 674
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->sScaleOutput:[F

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5

    .line 101
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    const-string p1, ""

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mErrorMessage:Ljava/lang/String;

    .line 66
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    .line 67
    const/4 v0, -0x3

    iput v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mTheme:I

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mInActionDown:Z

    .line 69
    iput v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDebug:I

    .line 70
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mHasClickAreas:Z

    .line 71
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mActionDownPoint:Landroid/graphics/Point;

    .line 73
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mResolvedData:Ljava/util/Map;

    .line 75
    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDensity:F

    .line 78
    const-wide/16 v1, 0x1

    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mLastFrameDelay:J

    .line 79
    const/high16 v1, 0x42700000    # 60.0f

    iput v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mMaxFrameRate:F

    .line 80
    const/high16 v1, 0x447a0000    # 1000.0f

    iget v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mMaxFrameRate:F

    div-float/2addr v1, v2

    float-to-long v1, v1

    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mMaxFrameDelay:J

    .line 85
    new-instance v1, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView$1;-><init>(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;)V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 566
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 701
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mTime:J

    .line 703
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mEvalTime:Z

    .line 704
    const p1, 0x3dcccccd    # 0.1f

    iput p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mLastAnimationTime:F

    .line 705
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDisable:Z

    .line 102
    invoke-virtual {p0, p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 103
    new-instance p1, Lcom/android/internal/widget/remotecompose/core/SystemClock;

    invoke-direct {p1}, Lcom/android/internal/widget/remotecompose/core/SystemClock;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->setClock(Ljava/time/Clock;)V

    .line 104
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 113
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    const-string p1, ""

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mErrorMessage:Ljava/lang/String;

    .line 66
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    .line 67
    const/4 p2, -0x3

    iput p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mTheme:I

    .line 68
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mInActionDown:Z

    .line 69
    iput p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDebug:I

    .line 70
    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mHasClickAreas:Z

    .line 71
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mActionDownPoint:Landroid/graphics/Point;

    .line 73
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mResolvedData:Ljava/util/Map;

    .line 75
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDensity:F

    .line 78
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mLastFrameDelay:J

    .line 79
    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mMaxFrameRate:F

    .line 80
    const/high16 v0, 0x447a0000    # 1000.0f

    iget v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mMaxFrameRate:F

    div-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mMaxFrameDelay:J

    .line 85
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView$1;-><init>(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 566
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 701
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mTime:J

    .line 703
    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mEvalTime:Z

    .line 704
    const p1, 0x3dcccccd    # 0.1f

    iput p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mLastAnimationTime:F

    .line 705
    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDisable:Z

    .line 114
    invoke-virtual {p0, p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 115
    new-instance p1, Lcom/android/internal/widget/remotecompose/core/SystemClock;

    invoke-direct {p1}, Lcom/android/internal/widget/remotecompose/core/SystemClock;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->setClock(Ljava/time/Clock;)V

    .line 116
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 127
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    const-string p1, ""

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mErrorMessage:Ljava/lang/String;

    .line 66
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    .line 67
    const/4 p2, -0x3

    iput p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mTheme:I

    .line 68
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mInActionDown:Z

    .line 69
    iput p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDebug:I

    .line 70
    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mHasClickAreas:Z

    .line 71
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mActionDownPoint:Landroid/graphics/Point;

    .line 73
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mResolvedData:Ljava/util/Map;

    .line 75
    const/high16 p3, 0x7fc00000    # Float.NaN

    iput p3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDensity:F

    .line 78
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mLastFrameDelay:J

    .line 79
    const/high16 p3, 0x42700000    # 60.0f

    iput p3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mMaxFrameRate:F

    .line 80
    const/high16 p3, 0x447a0000    # 1000.0f

    iget v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mMaxFrameRate:F

    div-float/2addr p3, v0

    float-to-long v0, p3

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mMaxFrameDelay:J

    .line 85
    new-instance p3, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView$1;

    invoke-direct {p3, p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView$1;-><init>(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;)V

    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 566
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 701
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mTime:J

    .line 703
    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mEvalTime:Z

    .line 704
    const p1, 0x3dcccccd    # 0.1f

    iput p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mLastAnimationTime:F

    .line 705
    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDisable:Z

    .line 128
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->setBackgroundColor(I)V

    .line 129
    invoke-virtual {p0, p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 130
    new-instance p1, Lcom/android/internal/widget/remotecompose/core/SystemClock;

    invoke-direct {p1}, Lcom/android/internal/widget/remotecompose/core/SystemClock;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->setClock(Ljava/time/Clock;)V

    .line 131
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/time/Clock;)V
    .registers 7

    .line 143
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    const-string p1, ""

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mErrorMessage:Ljava/lang/String;

    .line 66
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    .line 67
    const/4 p2, -0x3

    iput p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mTheme:I

    .line 68
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mInActionDown:Z

    .line 69
    iput p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDebug:I

    .line 70
    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mHasClickAreas:Z

    .line 71
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mActionDownPoint:Landroid/graphics/Point;

    .line 73
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mResolvedData:Ljava/util/Map;

    .line 75
    const/high16 p3, 0x7fc00000    # Float.NaN

    iput p3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDensity:F

    .line 78
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mLastFrameDelay:J

    .line 79
    const/high16 p3, 0x42700000    # 60.0f

    iput p3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mMaxFrameRate:F

    .line 80
    const/high16 p3, 0x447a0000    # 1000.0f

    iget v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mMaxFrameRate:F

    div-float/2addr p3, v0

    float-to-long v0, p3

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mMaxFrameDelay:J

    .line 85
    new-instance p3, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView$1;

    invoke-direct {p3, p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView$1;-><init>(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;)V

    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 566
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 701
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mTime:J

    .line 703
    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mEvalTime:Z

    .line 704
    const p1, 0x3dcccccd    # 0.1f

    iput p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mLastAnimationTime:F

    .line 705
    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDisable:Z

    .line 144
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->setBackgroundColor(I)V

    .line 145
    invoke-virtual {p0, p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 146
    invoke-direct {p0, p4}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->setClock(Ljava/time/Clock;)V

    .line 147
    return-void
.end method

.method private blacklist drawDisable(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .registers 12

    .line 825
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 826
    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 827
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 828
    const/high16 v2, 0x43000000    # 128.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 829
    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 830
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->getWidth()I

    move-result v2

    .line 831
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->getHeight()I

    move-result v3

    .line 833
    nop

    .line 834
    const/4 v4, 0x1

    const-string/jumbo v5, "\u26a0"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 836
    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v4

    sub-float v7, v2, v7

    iget v8, v0, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    .line 837
    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v4

    add-float/2addr v3, v8

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    sub-float/2addr v3, v8

    .line 839
    invoke-virtual {p1, v5, v7, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 840
    const/high16 v5, 0x42400000    # 48.0f

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 841
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    .line 842
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, p2, v6, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 843
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    sub-float/2addr v2, v5

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr v2, v0

    .line 844
    invoke-virtual {p1, p2, v2, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 845
    return-void
.end method

.method private blacklist getDefaultTextSize()F
    .registers 3

    .line 848
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$addIdActionListener$1(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView$ClickCallbacks;ILjava/lang/String;)V
    .registers 3

    .line 555
    invoke-interface {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView$ClickCallbacks;->click(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$updateClickAreas$0(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;Landroid/view/View;)V
    .registers 5

    .line 262
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    .line 263
    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object p2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 265
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getMetadata()Ljava/lang/String;

    move-result-object p1

    .line 264
    invoke-virtual {p2, v0, v1, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->performClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;ILjava/lang/String;)V

    .line 262
    return-void
.end method

.method private blacklist measureDimension(II)I
    .registers 4

    .line 658
    nop

    .line 659
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 660
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 661
    sparse-switch v0, :sswitch_data_18

    goto :goto_16

    .line 663
    :sswitch_d
    nop

    .line 664
    move p2, p1

    goto :goto_16

    .line 669
    :sswitch_10
    goto :goto_16

    .line 666
    :sswitch_11
    invoke-static {p1, p2}, Ljava/lang/Integer;->min(II)I

    move-result p2

    .line 667
    nop

    .line 671
    :goto_16
    return p2

    nop

    :sswitch_data_18
    .sparse-switch
        -0x80000000 -> :sswitch_11
        0x0 -> :sswitch_10
        0x40000000 -> :sswitch_d
    .end sparse-switch
.end method

.method private blacklist setClock(Ljava/time/Clock;)V
    .registers 4

    .line 156
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mClock:Ljava/time/Clock;

    .line 157
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteClock;->nanoTime(Ljava/time/Clock;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mStart:J

    .line 158
    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mLastFrameCall:J

    .line 159
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;-><init>(Ljava/time/Clock;)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 160
    return-void
.end method

.method private blacklist updateClickAreas()V
    .registers 12

    .line 240
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz v0, :cond_76

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mHasClickAreas:Z

    .line 242
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    .line 243
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getClickAreas()Ljava/util/Set;

    move-result-object v1

    .line 244
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->removeAllViews()V

    .line 245
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;

    .line 246
    new-instance v5, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;

    .line 248
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDebug:I

    if-ne v7, v4, :cond_31

    move v7, v4

    goto :goto_32

    :cond_31
    move v7, v0

    .line 250
    :goto_32
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getId()I

    move-result v8

    .line 251
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getContentDescription()Ljava/lang/String;

    move-result-object v9

    .line 252
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getMetadata()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;-><init>(Landroid/content/Context;ZILjava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->width()F

    move-result v4

    float-to-int v4, v4

    .line 254
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->height()F

    move-result v6

    float-to-int v6, v6

    .line 255
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 256
    iput v4, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 257
    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 258
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getLeft()F

    move-result v4

    float-to-int v4, v4

    iput v4, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 259
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getTop()F

    move-result v4

    float-to-int v4, v4

    iput v4, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 260
    new-instance v4, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v3}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;)V

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    invoke-virtual {p0, v5, v7}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    goto :goto_18

    .line 268
    :cond_6e
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    .line 269
    iput-boolean v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mHasClickAreas:Z

    .line 272
    :cond_76
    return-void
.end method


# virtual methods
.method public blacklist addIdActionListener(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView$ClickCallbacks;)V
    .registers 4

    .line 552
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-nez v0, :cond_5

    .line 553
    return-void

    .line 555
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView$ClickCallbacks;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->addIdActionListener(Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;)V

    .line 556
    return-void
.end method

.method public blacklist applyUpdate(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V
    .registers 3

    .line 530
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->applyUpdate(Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V

    .line 531
    return-void
.end method

.method public blacklist checkShaders(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;)V
    .registers 4

    .line 503
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->checkShaders(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;)V

    .line 504
    return-void
.end method

.method public blacklist clearLocalBitmap(Ljava/lang/String;)V
    .registers 3

    .line 459
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearNamedDataOverride(Ljava/lang/String;)V

    .line 460
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz p1, :cond_e

    .line 461
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    .line 463
    :cond_e
    return-void
.end method

.method public blacklist clearLocalColor(Ljava/lang/String;)V
    .registers 3

    .line 409
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearNamedDataOverride(Ljava/lang/String;)V

    .line 410
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz p1, :cond_e

    .line 411
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    .line 413
    :cond_e
    return-void
.end method

.method public blacklist clearLocalFloat(Ljava/lang/String;)V
    .registers 3

    .line 434
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearNamedFloatOverride(Ljava/lang/String;)V

    .line 435
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz p1, :cond_e

    .line 436
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    .line 438
    :cond_e
    return-void
.end method

.method public blacklist clearLocalInt(Ljava/lang/String;)V
    .registers 3

    .line 384
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearNamedIntegerOverride(Ljava/lang/String;)V

    .line 385
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz p1, :cond_e

    .line 386
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    .line 388
    :cond_e
    return-void
.end method

.method public blacklist clearLocalString(Ljava/lang/String;)V
    .registers 3

    .line 359
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearNamedStringOverride(Ljava/lang/String;)V

    .line 360
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz p1, :cond_e

    .line 361
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    .line 363
    :cond_e
    return-void
.end method

.method blacklist copySensorListeners([I)I
    .registers 5

    .line 466
    nop

    .line 467
    const/4 v0, 0x0

    const/16 v1, 0x11

    :goto_4
    const/16 v2, 0x1a

    if-gt v1, v2, :cond_1a

    .line 468
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-object v2, v2, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->hasListener(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 469
    add-int/lit8 v2, v0, 0x1

    aput v1, p1, v0

    move v0, v2

    .line 467
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 472
    :cond_1a
    return v0
.end method

.method public blacklist getDocument()Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;
    .registers 2

    .line 337
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    return-object v0
.end method

.method public blacklist getEvalTime()F
    .registers 7

    .line 714
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mEvalTime:Z

    if-nez v0, :cond_9

    .line 715
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mEvalTime:Z

    .line 716
    const/4 v0, 0x0

    return v0

    .line 718
    :cond_9
    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDuration:J

    long-to-double v0, v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mCount:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 719
    iget v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mCount:I

    const/16 v3, 0x64

    if-le v2, v3, :cond_23

    .line 720
    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDuration:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDuration:J

    .line 721
    iget v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mCount:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mCount:I

    .line 723
    :cond_23
    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public blacklist getNamedColors()[Ljava/lang/String;
    .registers 2

    .line 298
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getNamedColors()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNamedVariables(I)[Ljava/lang/String;
    .registers 3

    .line 308
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getNamedVariables(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getRemoteContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .registers 2

    .line 521
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    return-object v0
.end method

.method public blacklist getTheme()I
    .registers 2

    .line 559
    iget v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mTheme:I

    return v0
.end method

.method public blacklist isDraggable()Z
    .registers 2

    .line 491
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-nez v0, :cond_6

    .line 492
    const/4 v0, 0x0

    return v0

    .line 494
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->hasTouchListener()Z

    move-result v0

    return v0
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 11

    .line 728
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 729
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-nez v0, :cond_8

    .line 730
    return-void

    .line 732
    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDisable:Z

    if-eqz v0, :cond_12

    .line 733
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mErrorMessage:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->drawDisable(Landroid/graphics/Canvas;Ljava/lang/String;)V

    .line 734
    return-void

    .line 737
    :cond_12
    const/4 v0, 0x1

    :try_start_13
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mClock:Ljava/time/Clock;

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/RemoteClock;->nanoTime(Ljava/time/Clock;)J

    move-result-wide v1

    .line 738
    iget-boolean v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mEvalTime:Z

    if-eqz v3, :cond_1f

    move-wide v3, v1

    goto :goto_21

    :cond_1f
    const-wide/16 v3, 0x0

    .line 740
    :goto_21
    iget-wide v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mStart:J

    sub-long/2addr v1, v5

    long-to-float v1, v1

    const v2, 0x3089705f    # 1.0E-9f

    mul-float/2addr v1, v2

    .line 741
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setAnimationTime(F)V

    .line 742
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    const/16 v5, 0x1e

    invoke-virtual {v2, v5, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->loadFloat(IF)V

    .line 743
    iget v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mLastAnimationTime:F

    sub-float v2, v1, v2

    .line 744
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    const/16 v6, 0x1f

    invoke-virtual {v5, v6, v2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->loadFloat(IF)V

    .line 745
    iput v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mLastAnimationTime:F

    .line 746
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setAnimationEnabled(Z)V

    .line 747
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->currentTime:J

    .line 748
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDebug:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setDebug(I)V

    .line 749
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->useCanvas(Landroid/graphics/Canvas;)V

    .line 750
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mWidth:F

    .line 751
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mHeight:F

    .line 752
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mTheme:I

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->paint(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)V

    .line 753
    iget p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDebug:I

    if-ne p1, v0, :cond_b7

    .line 754
    iget p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mCount:I

    .line 755
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mClock:Ljava/time/Clock;

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteClock;->nanoTime(Ljava/time/Clock;)J

    move-result-wide v1

    .line 756
    iget-wide v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mTime:J

    sub-long v5, v1, v5

    const-wide/32 v7, 0x3b9aca00

    cmp-long p1, v5, v7

    if-lez p1, :cond_b7

    .line 757
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " fps"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 758
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mCount:I

    .line 759
    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mTime:J

    .line 762
    :cond_b7
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->needsRepaint()I

    move-result p1

    .line 763
    if-lez p1, :cond_133

    .line 764
    iget v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mMaxFrameRate:F

    const/high16 v2, 0x42700000    # 60.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_cb

    .line 765
    int-to-long v1, p1

    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mLastFrameDelay:J

    goto :goto_d4

    .line 767
    :cond_cb
    iget-wide v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mMaxFrameDelay:J

    int-to-long v5, p1

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mLastFrameDelay:J

    .line 769
    :goto_d4
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v1, :cond_127

    .line 770
    iget v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDebug:I

    if-ne v1, v0, :cond_11e

    .line 771
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RC : POST CHOREOGRAPHER WITH "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mLastFrameDelay:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " (nextFrame was "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", max delay "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mMaxFrameDelay:J

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ",  max framerate is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mMaxFrameRate:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 783
    :cond_11e
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    iget-wide v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mLastFrameDelay:J

    invoke-virtual {p1, v1, v5, v6}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 785
    :cond_127
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->getUseChoreographer()Z

    move-result p1

    if-nez p1, :cond_13e

    .line 786
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->invalidate()V

    goto :goto_13e

    .line 789
    :cond_133
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mChoreographer:Landroid/view/Choreographer;

    if-eqz p1, :cond_13e

    .line 790
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 793
    :cond_13e
    :goto_13e
    iget-boolean p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mEvalTime:Z

    if-eqz p1, :cond_153

    .line 794
    iget-wide v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDuration:J

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mClock:Ljava/time/Clock;

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteClock;->nanoTime(Ljava/time/Clock;)J

    move-result-wide v5

    sub-long/2addr v5, v3

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDuration:J

    .line 795
    iget p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mCount:I
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_153} :catch_155

    .line 811
    :cond_153
    goto/16 :goto_1d8

    .line 797
    :catch_155
    move-exception p1

    .line 798
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->getLastOpCount()I

    move-result v1

    .line 799
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDisable:Z

    .line 800
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->invalidate()V

    .line 801
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getHostExceptionID()I

    move-result v2

    .line 802
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in draw "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 803
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 804
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mErrorMessage:Ljava/lang/String;

    .line 805
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 806
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->log(Ljava/lang/String;)V

    .line 807
    if-eqz v2, :cond_1d8

    .line 808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling exception handler "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->log(Ljava/lang/String;)V

    .line 809
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->notifyOfException(ILjava/lang/String;)V

    .line 812
    :cond_1d8
    :goto_1d8
    iget p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDebug:I

    if-ne p1, v0, :cond_217

    .line 813
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mClock:Ljava/time/Clock;

    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mLastFrameCall:J

    sub-long/2addr v0, v2

    .line 814
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RC : Delay since last frame "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/high16 v3, 0x447a0000    # 1000.0f

    long-to-float v0, v0

    div-float/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fps)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 820
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mLastFrameCall:J

    .line 822
    :cond_217
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 6

    .line 678
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 679
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-nez v0, :cond_8

    .line 680
    return-void

    .line 682
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->getWidth()I

    move-result v0

    .line 683
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->getHeight()I

    move-result v1

    .line 684
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->measureDimension(II)I

    move-result p1

    .line 685
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->measureDimension(II)I

    move-result p2

    .line 694
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->setMeasuredDimension(II)V

    .line 695
    if-ne v0, p1, :cond_2b

    if-eq v1, p2, :cond_34

    .line 696
    :cond_2b
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->invalidateMeasure()V

    .line 698
    :cond_34
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14

    .line 570
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 571
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 572
    iget-boolean v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mHasClickAreas:Z

    if-eqz v1, :cond_11

    .line 573
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 575
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/16 v2, 0x3e8

    const/16 v3, 0x1d

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_114

    .line 641
    return v5

    .line 597
    :pswitch_1f
    iput-boolean v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mInActionDown:Z

    .line 598
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v6

    .line 599
    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->hasTouchListener()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 600
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 601
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v10

    .line 602
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v11

    .line 603
    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->touchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V

    .line 604
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->invalidate()V

    .line 605
    return v4

    .line 607
    :cond_4f
    return v5

    .line 626
    :pswitch_50
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mInActionDown:Z

    if-eqz v0, :cond_82

    .line 627
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_81

    .line 628
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 629
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->getAnimationTime()F

    move-result v1

    .line 628
    invoke-virtual {v0, v3, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->loadFloat(IF)V

    .line 630
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 631
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    .line 632
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->touchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)Z

    move-result p1

    .line 633
    if-eqz p1, :cond_81

    .line 634
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->invalidate()V

    .line 637
    :cond_81
    return v4

    .line 639
    :cond_82
    return v5

    .line 610
    :pswitch_83
    iput-boolean v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mInActionDown:Z

    .line 611
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->performClick()Z

    .line 612
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v6

    .line 613
    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->hasTouchListener()Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 614
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 615
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->getAnimationTime()F

    move-result v5

    .line 614
    invoke-virtual {v1, v3, v5}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->loadFloat(IF)V

    .line 616
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 617
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v10

    .line 618
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v11

    .line 619
    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->touchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V

    .line 620
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->invalidate()V

    .line 621
    return v4

    .line 623
    :cond_c1
    return v5

    .line 577
    :pswitch_c2
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mActionDownPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 578
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mActionDownPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 579
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    .line 580
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->hasTouchListener()Z

    move-result v1

    if-eqz v1, :cond_113

    .line 581
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 582
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->getAnimationTime()F

    move-result v2

    .line 581
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->loadFloat(IF)V

    .line 583
    iput-boolean v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mInActionDown:Z

    .line 584
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_f8

    .line 585
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_fd

    .line 587
    :cond_f8
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 589
    :goto_fd
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 590
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->touchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V

    .line 591
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->invalidate()V

    .line 592
    return v4

    .line 594
    :cond_113
    return v5

    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_c2
        :pswitch_83
        :pswitch_50
        :pswitch_1f
    .end packed-switch
.end method

.method public whitelist onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    .line 227
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mChoreographer:Landroid/view/Choreographer;

    if-nez p1, :cond_11

    .line 228
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mChoreographer:Landroid/view/Choreographer;

    .line 229
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mChoreographer:Landroid/view/Choreographer;

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 231
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDensity:F

    .line 232
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDensity:F

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setDensity(F)V

    .line 233
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-nez p1, :cond_2d

    .line 234
    return-void

    .line 236
    :cond_2d
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->updateClickAreas()V

    .line 237
    return-void
.end method

.method public whitelist onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    .line 285
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mChoreographer:Landroid/view/Choreographer;

    if-eqz p1, :cond_e

    .line 286
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mChoreographer:Landroid/view/Choreographer;

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, v0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 287
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mChoreographer:Landroid/view/Choreographer;

    .line 289
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->removeAllViews()V

    .line 290
    return-void
.end method

.method public whitelist performClick()Z
    .registers 5

    .line 646
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mHasClickAreas:Z

    if-eqz v0, :cond_9

    .line 647
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v0

    return v0

    .line 649
    :cond_9
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    .line 650
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mActionDownPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mActionDownPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    .line 651
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V

    .line 652
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    .line 653
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->invalidate()V

    .line 654
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setColor(Ljava/lang/String;I)V
    .registers 4

    .line 318
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setNamedColorOverride(Ljava/lang/String;I)V

    .line 319
    return-void
.end method

.method public blacklist setDebug(I)V
    .registers 6

    .line 166
    iget v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDebug:I

    if-eq v0, p1, :cond_28

    .line 167
    iput p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDebug:I

    .line 169
    const/4 p1, 0x0

    move v0, p1

    :goto_8
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 171
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;

    if-eqz v2, :cond_22

    .line 172
    check-cast v1, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDebug:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v3, p1

    :goto_1f
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->setDebug(Z)V

    .line 169
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 176
    :cond_25
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->invalidate()V

    .line 178
    :cond_28
    return-void
.end method

.method public blacklist setDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V
    .registers 5

    .line 188
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getClock()Ljava/time/Clock;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mClock:Ljava/time/Clock;

    if-eq v0, v1, :cond_1a

    .line 190
    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mClock:Ljava/time/Clock;

    .line 191
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mClock:Ljava/time/Clock;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteClock;->nanoTime(Ljava/time/Clock;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mStart:J

    .line 192
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mLastFrameCall:J

    .line 195
    :cond_1a
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    .line 196
    const/high16 p1, 0x42700000    # 60.0f

    iput p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mMaxFrameRate:F

    .line 197
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mResolvedData:Ljava/util/Map;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->initializeContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/util/Map;)V

    .line 198
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDisable:Z

    .line 199
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->bitmapMemory()I

    move-result p1

    const/high16 v0, 0x1400000

    const/4 v1, 0x1

    if-le p1, v0, :cond_65

    .line 200
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDisable:Z

    .line 201
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bitmap memory "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    .line 203
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->bitmapMemory()I

    move-result v0

    const/high16 v2, 0x100000

    div-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "MB!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mErrorMessage:Ljava/lang/String;

    .line 206
    :cond_65
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setDocLoadTime()V

    .line 207
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setAnimationEnabled(Z)V

    .line 208
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDensity:F

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setDensity(F)V

    .line 209
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setUseChoreographer(Z)V

    .line 210
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getContentDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 212
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->updateClickAreas()V

    .line 213
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->requestLayout()V

    .line 214
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    const/16 v0, 0x1d

    const v1, -0x800001

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->loadFloat(IF)V

    .line 215
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    const/16 v0, 0x21

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->getDefaultTextSize()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->loadFloat(IF)V

    .line 217
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->invalidate()V

    .line 218
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getProperty(S)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 219
    if-eqz p1, :cond_cb

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_cb

    .line 220
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mMaxFrameRate:F

    .line 221
    const/high16 p1, 0x447a0000    # 1000.0f

    iget v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mMaxFrameRate:F

    div-float/2addr p1, v0

    float-to-long v0, p1

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mMaxFrameDelay:J

    .line 223
    :cond_cb
    return-void
.end method

.method public blacklist setExternalFloat(IF)V
    .registers 4

    .line 482
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->loadFloat(IF)V

    .line 483
    return-void
.end method

.method public blacklist setHapticEngine(Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;)V
    .registers 3

    .line 280
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setHapticEngine(Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;)V

    .line 281
    return-void
.end method

.method public blacklist setLocalBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 447
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setNamedDataOverride(Ljava/lang/String;Ljava/lang/Object;)V

    .line 448
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz p1, :cond_e

    .line 449
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    .line 451
    :cond_e
    return-void
.end method

.method public blacklist setLocalColor(Ljava/lang/String;I)V
    .registers 4

    .line 397
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setNamedColorOverride(Ljava/lang/String;I)V

    .line 398
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz p1, :cond_e

    .line 399
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    .line 401
    :cond_e
    return-void
.end method

.method public blacklist setLocalFloat(Ljava/lang/String;Ljava/lang/Float;)V
    .registers 4

    .line 422
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setNamedFloatOverride(Ljava/lang/String;F)V

    .line 423
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz p1, :cond_12

    .line 424
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    .line 426
    :cond_12
    return-void
.end method

.method public blacklist setLocalInt(Ljava/lang/String;I)V
    .registers 4

    .line 372
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setNamedIntegerOverride(Ljava/lang/String;I)V

    .line 373
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz p1, :cond_e

    .line 374
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    .line 376
    :cond_e
    return-void
.end method

.method public blacklist setLocalString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 347
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setNamedStringOverride(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz p1, :cond_e

    .line 349
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    .line 351
    :cond_e
    return-void
.end method

.method public blacklist setLong(Ljava/lang/String;J)V
    .registers 5

    .line 328
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setNamedLong(Ljava/lang/String;J)V

    .line 329
    return-void
.end method

.method public blacklist setResolvedData(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 857
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mResolvedData:Ljava/util/Map;

    .line 858
    return-void
.end method

.method public blacklist setTheme(I)V
    .registers 2

    .line 563
    iput p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mTheme:I

    .line 564
    return-void
.end method

.method public blacklist setUseChoreographer(Z)V
    .registers 3

    .line 512
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setUseChoreographer(Z)V

    .line 513
    return-void
.end method
