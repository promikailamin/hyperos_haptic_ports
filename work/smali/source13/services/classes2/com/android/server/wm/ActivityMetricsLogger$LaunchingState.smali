.class final Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityMetricsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LaunchingState"
.end annotation


# static fields
.field private static sTraceSeqId:I


# instance fields
.field private mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

.field private mCurrentTransitionStartTimeNs:J

.field private final mCurrentUpTimeMs:J

.field mTraceName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAssociatedTransitionInfo(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentTransitionStartTimeNs(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mCurrentTransitionStartTimeNs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentUpTimeMs(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mCurrentUpTimeMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmAssociatedTransitionInfo(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentTransitionStartTimeNs(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mCurrentTransitionStartTimeNs:J

    return-void
.end method

.method constructor <init>()V
    .registers 5

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mCurrentUpTimeMs:J

    .line 217
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-nez v2, :cond_12

    .line 218
    return-void

    .line 221
    :cond_12
    sget v2, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->sTraceSeqId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->sTraceSeqId:I

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchingActivity#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->sTraceSeqId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mTraceName:Ljava/lang/String;

    .line 223
    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 224
    return-void
.end method


# virtual methods
.method allDrawn()Z
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    if-eqz v0, :cond_a

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsDrawn:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method contains(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 258
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->contains(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method hasActiveTransitionInfo()Z
    .registers 2

    .line 254
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method stopTrace(ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .registers 8
    .param p1, "abort"    # Z
    .param p2, "endInfo"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mTraceName:Ljava/lang/String;

    if-nez v0, :cond_5

    return-void

    .line 228
    :cond_5
    if-nez p1, :cond_c

    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    if-eq p2, v1, :cond_c

    .line 232
    return-void

    .line 234
    :cond_c
    const/4 v1, 0x0

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 236
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    if-nez v0, :cond_19

    .line 237
    const-string v0, ":failed"

    .local v0, "launchResult":Ljava/lang/String;
    goto :goto_40

    .line 239
    .end local v0    # "launchResult":Ljava/lang/String;
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_23

    const-string v1, ":canceled:"

    goto :goto_2e

    :cond_23
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessSwitch:Z

    if-eqz v1, :cond_2c

    .line 240
    const-string v1, ":completed:"

    goto :goto_2e

    :cond_2c
    const-string v1, ":completed-same-process:"

    :goto_2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    iget-object v1, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    .restart local v0    # "launchResult":Ljava/lang/String;
    :goto_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mTraceName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 245
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mTraceName:Ljava/lang/String;

    .line 246
    return-void
.end method
