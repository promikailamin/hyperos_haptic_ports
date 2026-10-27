.class public final Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;
.super Ljava/lang/Object;
.source "FaceDownDetector.java"


# instance fields
.field public final mAlpha:F

.field public final mInitialAverage:F

.field public mMovingAverage:F


# direct methods
.method public static bridge synthetic -$$Nest$fgetmMovingAverage(Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;->mMovingAverage:F

    return p0
.end method

.method public constructor <init>(Lcom/android/server/power/FaceDownDetector;F)V
    .registers 4

    const/4 v0, 0x0

    .line 494
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;-><init>(Lcom/android/server/power/FaceDownDetector;FF)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/FaceDownDetector;FF)V
    .registers 4

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    iput p2, p0, Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;->mAlpha:F

    .line 499
    iput p3, p0, Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;->mInitialAverage:F

    .line 500
    iput p3, p0, Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;->mMovingAverage:F

    return-void
.end method


# virtual methods
.method public updateMovingAverage(F)V
    .registers 4

    .line 504
    iget v0, p0, Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;->mAlpha:F

    iget v1, p0, Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;->mMovingAverage:F

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    add-float/2addr p1, v0

    iput p1, p0, Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;->mMovingAverage:F

    return-void
.end method
