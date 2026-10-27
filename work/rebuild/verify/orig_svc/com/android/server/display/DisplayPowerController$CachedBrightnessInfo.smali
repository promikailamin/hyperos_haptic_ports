.class public Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# instance fields
.field public adjustedBrightness:Landroid/util/MutableFloat;

.field public brightness:Landroid/util/MutableFloat;

.field public brightnessMax:Landroid/util/MutableFloat;

.field public brightnessMaxReason:Landroid/util/MutableInt;

.field public brightnessMin:Landroid/util/MutableFloat;

.field public brightnessReason:Landroid/util/MutableInt;

.field public hbmMode:Landroid/util/MutableInt;

.field public hbmTransitionPoint:Landroid/util/MutableFloat;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 3489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3490
    new-instance v0, Landroid/util/MutableFloat;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-direct {v0, v1}, Landroid/util/MutableFloat;-><init>(F)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    .line 3491
    new-instance v0, Landroid/util/MutableFloat;

    invoke-direct {v0, v1}, Landroid/util/MutableFloat;-><init>(F)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    .line 3493
    new-instance v0, Landroid/util/MutableFloat;

    invoke-direct {v0, v1}, Landroid/util/MutableFloat;-><init>(F)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    .line 3495
    new-instance v0, Landroid/util/MutableFloat;

    invoke-direct {v0, v1}, Landroid/util/MutableFloat;-><init>(F)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    .line 3497
    new-instance v0, Landroid/util/MutableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/MutableInt;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    .line 3498
    new-instance v0, Landroid/util/MutableFloat;

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v0, v2}, Landroid/util/MutableFloat;-><init>(F)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    .line 3500
    new-instance v0, Landroid/util/MutableInt;

    invoke-direct {v0, v1}, Landroid/util/MutableInt;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    .line 3502
    new-instance v0, Landroid/util/MutableInt;

    invoke-direct {v0, v1}, Landroid/util/MutableInt;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessReason:Landroid/util/MutableInt;

    return-void
.end method


# virtual methods
.method public checkAndSetFloat(Landroid/util/MutableFloat;F)Z
    .registers 3

    .line 3505
    iget p0, p1, Landroid/util/MutableFloat;->value:F

    cmpl-float p0, p0, p2

    if-eqz p0, :cond_a

    .line 3506
    iput p2, p1, Landroid/util/MutableFloat;->value:F

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public checkAndSetInt(Landroid/util/MutableInt;I)Z
    .registers 3

    .line 3513
    iget p0, p1, Landroid/util/MutableInt;->value:I

    if-eq p0, p2, :cond_8

    .line 3514
    iput p2, p1, Landroid/util/MutableInt;->value:I

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method
