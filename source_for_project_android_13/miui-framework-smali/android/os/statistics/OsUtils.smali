.class public Landroid/os/statistics/OsUtils;
.super Ljava/lang/Object;
.source "OsUtils.java"


# static fields
.field public static final blacklist SCHED_GROUP_UNKNOWN:I = 0x7fffffff

.field private static blacklist sDoneFindIsRenderThreadMethod:Z

.field private static blacklist sIsRenderThreadMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/statistics/OsUtils;->sDoneFindIsRenderThreadMethod:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist decodeThreadSchedulePolicy(I)I
    .registers 2
    .param p0, "scheduler"    # I

    .line 18
    if-gez p0, :cond_4

    move v0, p0

    goto :goto_8

    :cond_4
    const v0, -0x40000001    # -1.9999999f

    and-int/2addr v0, p0

    :goto_8
    return v0
.end method

.method public static native blacklist getCoarseUptimeMillisFast()J
.end method

.method public static native blacklist getDeltaToUptimeMillis()J
.end method

.method public static native blacklist getRunningTimeMs()J
.end method

.method public static blacklist getSchedGroup(I)I
    .registers 3
    .param p0, "pid"    # I

    .line 62
    :try_start_0
    invoke-static {p0}, Landroid/os/Process;->getProcessGroup(I)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 63
    :catch_5
    move-exception v0

    .line 64
    .local v0, "ex":Ljava/lang/Exception;
    const v1, 0x7fffffff

    return v1
.end method

.method public static native blacklist getThreadSchedStat([J)V
.end method

.method public static blacklist getThreadSchedulePolicy(I)I
    .registers 3
    .param p0, "tid"    # I

    .line 23
    :try_start_0
    invoke-static {p0}, Landroid/os/statistics/OsUtils;->getThreadScheduler(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 24
    :catch_9
    move-exception v0

    .line 25
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method private static final native blacklist getThreadScheduler(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static blacklist isHighPriority(II)Z
    .registers 5
    .param p0, "policy"    # I
    .param p1, "priority"    # I

    .line 35
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_5

    .line 36
    return v0

    .line 38
    :cond_5
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v1, :cond_14

    if-ne p0, v2, :cond_c

    goto :goto_14

    .line 40
    :cond_c
    if-nez p0, :cond_13

    .line 41
    const/4 v1, -0x2

    if-gt p1, v1, :cond_12

    move v0, v2

    :cond_12
    return v0

    .line 43
    :cond_13
    return v0

    .line 39
    :cond_14
    :goto_14
    return v2
.end method

.method public static blacklist isHighSchedGroup(I)Z
    .registers 3
    .param p0, "group"    # I

    .line 69
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p0, v1, :cond_13

    const/4 v1, 0x5

    if-eq p0, v1, :cond_13

    if-eq p0, v0, :cond_13

    const/16 v1, 0x9

    if-eq p0, v1, :cond_13

    const/16 v1, 0xa

    if-ne p0, v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :cond_13
    :goto_13
    return v0
.end method

.method public static native blacklist isIsolatedProcess()Z
.end method

.method public static blacklist isLowPriority(II)Z
    .registers 5
    .param p0, "policy"    # I
    .param p1, "priority"    # I

    .line 48
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_5

    .line 49
    return v0

    .line 51
    :cond_5
    const/4 v1, 0x2

    if-eq p0, v1, :cond_15

    const/4 v1, 0x1

    if-ne p0, v1, :cond_c

    goto :goto_15

    .line 53
    :cond_c
    if-nez p0, :cond_14

    .line 54
    const/16 v2, 0xa

    if-lt p1, v2, :cond_13

    move v0, v1

    :cond_13
    return v0

    .line 56
    :cond_14
    return v1

    .line 52
    :cond_15
    :goto_15
    return v0
.end method

.method public static blacklist isRenderThread(I)Z
    .registers 6
    .param p0, "threadId"    # I

    .line 79
    sget-boolean v0, Landroid/os/statistics/OsUtils;->sDoneFindIsRenderThreadMethod:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_18

    .line 80
    const-class v0, Landroid/view/ThreadedRenderer;

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Integer;

    aput-object v4, v3, v2

    const-string v4, "isRenderThread"

    invoke-static {v0, v4, v3}, Lmiui/util/ReflectionUtils;->tryFindMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/statistics/OsUtils;->sIsRenderThreadMethod:Ljava/lang/reflect/Method;

    .line 81
    sput-boolean v1, Landroid/os/statistics/OsUtils;->sDoneFindIsRenderThreadMethod:Z

    .line 83
    :cond_18
    sget-object v0, Landroid/os/statistics/OsUtils;->sIsRenderThreadMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3a

    .line 85
    const/4 v3, 0x0

    :try_start_1d
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1d .. :try_end_2f} :catch_35
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_2f} :catch_30

    return v0

    .line 89
    :catch_30
    move-exception v0

    .line 90
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 91
    return v2

    .line 86
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_35
    move-exception v0

    .line 87
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 88
    return v2

    .line 94
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :cond_3a
    return v2
.end method

.method public static native blacklist setThreadPriorityUnconditonally(II)V
.end method

.method public static native blacklist translateKernelAddress(J)Ljava/lang/String;
.end method
