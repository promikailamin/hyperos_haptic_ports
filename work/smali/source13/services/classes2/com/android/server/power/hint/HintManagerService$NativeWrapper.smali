.class public Lcom/android/server/power/hint/HintManagerService$NativeWrapper;
.super Ljava/lang/Object;
.source "HintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/hint/HintManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeWrapper"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeCloseHintSession(J)V
.end method

.method private static native nativeCreateHintSession(II[IJ)J
.end method

.method private static native nativeGetHintSessionPreferredRate()J
.end method

.method private native nativeInit()V
.end method

.method private static native nativePauseHintSession(J)V
.end method

.method private static native nativeReportActualWorkDuration(J[J[J)V
.end method

.method private static native nativeResumeHintSession(J)V
.end method

.method private static native nativeUpdateTargetWorkDuration(JJ)V
.end method


# virtual methods
.method public halCloseHintSession(J)V
    .registers 3
    .param p1, "halPtr"    # J

    .line 174
    invoke-static {p1, p2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeCloseHintSession(J)V

    .line 175
    return-void
.end method

.method public halCreateHintSession(II[IJ)J
    .registers 8
    .param p1, "tgid"    # I
    .param p2, "uid"    # I
    .param p3, "tids"    # [I
    .param p4, "durationNanos"    # J

    .line 159
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeCreateHintSession(II[IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public halGetHintSessionPreferredRate()J
    .registers 3

    .line 191
    invoke-static {}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeGetHintSessionPreferredRate()J

    move-result-wide v0

    return-wide v0
.end method

.method public halInit()V
    .registers 1

    .line 154
    invoke-direct {p0}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeInit()V

    .line 155
    return-void
.end method

.method public halPauseHintSession(J)V
    .registers 3
    .param p1, "halPtr"    # J

    .line 164
    invoke-static {p1, p2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativePauseHintSession(J)V

    .line 165
    return-void
.end method

.method public halReportActualWorkDuration(J[J[J)V
    .registers 5
    .param p1, "halPtr"    # J
    .param p3, "actualDurationNanos"    # [J
    .param p4, "timeStampNanos"    # [J

    .line 185
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeReportActualWorkDuration(J[J[J)V

    .line 187
    return-void
.end method

.method public halResumeHintSession(J)V
    .registers 3
    .param p1, "halPtr"    # J

    .line 169
    invoke-static {p1, p2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeResumeHintSession(J)V

    .line 170
    return-void
.end method

.method public halUpdateTargetWorkDuration(JJ)V
    .registers 5
    .param p1, "halPtr"    # J
    .param p3, "targetDurationNanos"    # J

    .line 179
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeUpdateTargetWorkDuration(JJ)V

    .line 180
    return-void
.end method
