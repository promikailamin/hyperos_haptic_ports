.class Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;
.super Ljava/lang/Object;
.source "VelocityEasing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Stage"
.end annotation


# instance fields
.field private blacklist mDeltaT:F

.field private blacklist mDeltaV:F

.field private blacklist mEndPos:F

.field private blacklist mEndTime:F

.field private blacklist mEndV:F

.field final blacklist mStage:I

.field private blacklist mStartPos:F

.field private blacklist mStartTime:F

.field private blacklist mStartV:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEndPos(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mEndPos:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEndTime(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mEndTime:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartPos(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartPos:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartTime(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartTime:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartV(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartV:F

    return p0
.end method

.method constructor blacklist <init>(I)V
    .registers 3

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartV:F

    .line 333
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartPos:F

    .line 334
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartTime:F

    .line 335
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mEndV:F

    .line 336
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mEndPos:F

    .line 337
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mEndTime:F

    .line 338
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mDeltaV:F

    .line 339
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mDeltaT:F

    .line 343
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStage:I

    .line 344
    return-void
.end method


# virtual methods
.method blacklist getPos(F)F
    .registers 5

    .line 364
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartTime:F

    sub-float/2addr p1, v0

    .line 365
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mDeltaT:F

    div-float v0, p1, v0

    .line 366
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartV:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mDeltaV:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 367
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartV:F

    add-float/2addr v0, v1

    mul-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartPos:F

    add-float/2addr p1, v0

    return p1
.end method

.method blacklist getVel(F)F
    .registers 4

    .line 371
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartTime:F

    sub-float/2addr p1, v0

    .line 372
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mEndTime:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartTime:F

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    .line 373
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartV:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mDeltaV:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method blacklist setUp(FFFFFF)V
    .registers 7

    .line 353
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartV:F

    .line 354
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartPos:F

    .line 355
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartTime:F

    .line 356
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mEndV:F

    .line 357
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mEndTime:F

    .line 358
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mEndPos:F

    .line 359
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mEndV:F

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartV:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mDeltaV:F

    .line 360
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mEndTime:F

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartTime:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mDeltaT:F

    .line 361
    return-void
.end method
