.class public Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;
.super Ljava/lang/Object;
.source "AppCompatOrientationOverrides.java"


# static fields
.field static final MIN_COUNT_TO_IGNORE_REQUEST_IN_LOOP:I = 0x2

.field static final SET_ORIENTATION_REQUEST_COUNTER_TIMEOUT_MS:I = 0x3e8


# instance fields
.field mCurrentTimeMillisSupplier:Ljava/util/function/LongSupplier;

.field public final mIsOverrideAnyOrientationEnabled:Z

.field public final mIsOverrideToNosensorOrientationEnabled:Z

.field public final mIsOverrideToPortraitOrientationEnabled:Z

.field public final mIsOverrideToReverseLandscapeOrientationEnabled:Z

.field public mIsRelaunchingAfterRequestedOrientationChanged:Z

.field public mSetOrientationRequestCounter:I

.field public mTimeMsLastSetOrientationRequest:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIsRelaunchingAfterRequestedOrientationChanged(Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsRelaunchingAfterRequestedOrientationChanged:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSetOrientationRequestCounter(Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mSetOrientationRequestCounter:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsRelaunchingAfterRequestedOrientationChanged(Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsRelaunchingAfterRequestedOrientationChanged:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/LongSupplier;)V
    .registers 5

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 224
    iput-wide v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mTimeMsLastSetOrientationRequest:J

    const/4 v0, 0x0

    .line 226
    iput v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mSetOrientationRequestCounter:I

    .line 232
    iput-object p2, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mCurrentTimeMillisSupplier:Ljava/util/function/LongSupplier;

    .line 233
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const-wide/32 v0, 0xfd27655

    .line 234
    invoke-virtual {p2, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsOverrideToNosensorOrientationEnabled:Z

    .line 235
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const-wide/32 v0, 0xfd27b38

    .line 236
    invoke-virtual {p2, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsOverrideToPortraitOrientationEnabled:Z

    .line 237
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const-wide/32 v0, 0xfd2aa87

    .line 238
    invoke-virtual {p2, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsOverrideAnyOrientationEnabled:Z

    .line 239
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const-wide/32 v0, 0xfdcbe7f

    .line 240
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsOverrideToReverseLandscapeOrientationEnabled:Z

    return-void
.end method


# virtual methods
.method public shouldIgnoreRequestInLoop()Z
    .registers 2

    .line 248
    iget p0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mSetOrientationRequestCounter:I

    const/4 v0, 0x2

    if-lt p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public updateOrientationRequestLoopState()V
    .registers 7

    .line 255
    iget-object v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mCurrentTimeMillisSupplier:Ljava/util/function/LongSupplier;

    invoke-interface {v0}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    .line 256
    iget-wide v2, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mTimeMsLastSetOrientationRequest:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_17

    .line 258
    iget v2, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mSetOrientationRequestCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mSetOrientationRequestCounter:I

    goto :goto_1a

    :cond_17
    const/4 v2, 0x0

    .line 260
    iput v2, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mSetOrientationRequestCounter:I

    .line 262
    :goto_1a
    iput-wide v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mTimeMsLastSetOrientationRequest:J

    return-void
.end method
