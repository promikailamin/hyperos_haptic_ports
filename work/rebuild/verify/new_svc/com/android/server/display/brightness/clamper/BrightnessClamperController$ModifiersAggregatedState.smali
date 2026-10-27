.class public Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;
.super Ljava/lang/Object;
.source "BrightnessClamperController.java"


# instance fields
.field public mHdrRatioScaleFactor:F

.field public mMaxBrightness:F

.field public mMaxBrightnessReason:I

.field public mMaxDesiredHdrRatio:F

.field public mMaxHdrBrightness:F

.field public mMinBrightness:F

.field public mSdrHdrRatioSpline:Landroid/util/Spline;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 494
    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxDesiredHdrRatio:F

    .line 495
    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxHdrBrightness:F

    const/4 v1, 0x0

    .line 496
    iput-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mSdrHdrRatioSpline:Landroid/util/Spline;

    .line 498
    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mHdrRatioScaleFactor:F

    const/4 v1, 0x0

    .line 499
    iput v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightnessReason:I

    .line 501
    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    const/4 v0, 0x0

    .line 502
    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMinBrightness:F

    return-void
.end method
