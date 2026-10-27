.class public Landroid/util/MtkBoostFramework;
.super Ljava/lang/Object;
.source "MtkBoostFramework.java"


# static fields
.field private static final blacklist PERFORMANCE_CLASS:Ljava/lang/String; = "com.mediatek.boostframework.Performance"

.field private static final blacklist PERF_LOCK_ACQUIRE:Ljava/lang/String; = "perfLockAcquire"

.field private static final blacklist PERF_LOCK_RELEASE:Ljava/lang/String; = "perfLockRelease"

.field private static final blacklist PERF_LOCK_RELEASE_HANDLER:Ljava/lang/String; = "perfLockReleaseHandler"

.field private static final blacklist SLOW_OPERATION_THRESHOLD_MS:I = 0x14

.field private static final blacklist TAG:Ljava/lang/String; = "MtkBoostFramework"

.field private static blacklist sAcquireFunc:Ljava/lang/reflect/Method;

.field private static blacklist sIsLoaded:Z

.field private static blacklist sPerfClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static blacklist sReleaseFunc:Ljava/lang/reflect/Method;

.field private static blacklist sReleaseHandlerFunc:Ljava/lang/reflect/Method;


# instance fields
.field private blacklist mPerf:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Landroid/util/MtkBoostFramework;->sIsLoaded:Z

    .line 53
    const/4 v0, 0x0

    sput-object v0, Landroid/util/MtkBoostFramework;->sPerfClass:Ljava/lang/Class;

    .line 54
    sput-object v0, Landroid/util/MtkBoostFramework;->sAcquireFunc:Ljava/lang/reflect/Method;

    .line 55
    sput-object v0, Landroid/util/MtkBoostFramework;->sReleaseFunc:Ljava/lang/reflect/Method;

    .line 56
    sput-object v0, Landroid/util/MtkBoostFramework;->sReleaseHandlerFunc:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/MtkBoostFramework;->mPerf:Ljava/lang/Object;

    .line 63
    invoke-direct {p0}, Landroid/util/MtkBoostFramework;->initFunctions()V

    .line 66
    :try_start_9
    sget-object v0, Landroid/util/MtkBoostFramework;->sPerfClass:Ljava/lang/Class;

    if-eqz v0, :cond_13

    .line 67
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/MtkBoostFramework;->mPerf:Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_14

    .line 71
    :cond_13
    goto :goto_2d

    .line 69
    :catch_14
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception_2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkBoostFramework"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2d
    return-void
.end method

.method private blacklist checkTime(JLjava/lang/String;)V
    .registers 9
    .param p1, "start"    # J
    .param p3, "method"    # Ljava/lang/String;

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 146
    .local v0, "duration":J
    const-wide/16 v2, 0x14

    cmp-long v2, v0, v2

    if-lez v2, :cond_23

    .line 147
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Slow Operation: MtkBoostFramework %s took %sms"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkBoostFramework"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_23
    return-void
.end method

.method private blacklist initFunctions()V
    .registers 7

    .line 75
    const-class v0, Landroid/util/MtkBoostFramework;

    monitor-enter v0

    .line 76
    :try_start_3
    sget-boolean v1, Landroid/util/MtkBoostFramework;->sIsLoaded:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_65

    if-nez v1, :cond_63

    .line 78
    const/4 v1, 0x1

    :try_start_8
    const-string v2, "com.mediatek.boostframework.Performance"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Landroid/util/MtkBoostFramework;->sPerfClass:Ljava/lang/Class;

    .line 80
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, [I

    aput-object v3, v2, v1

    .line 81
    .local v2, "argClasses":[Ljava/lang/Class;
    sget-object v3, Landroid/util/MtkBoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "perfLockAcquire"

    invoke-virtual {v3, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/util/MtkBoostFramework;->sAcquireFunc:Ljava/lang/reflect/Method;

    .line 83
    new-array v3, v4, [Ljava/lang/Class;

    move-object v2, v3

    .line 84
    sget-object v3, Landroid/util/MtkBoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "perfLockRelease"

    invoke-virtual {v3, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/util/MtkBoostFramework;->sReleaseFunc:Ljava/lang/reflect/Method;

    .line 86
    new-array v3, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    move-object v2, v3

    .line 87
    sget-object v3, Landroid/util/MtkBoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v4, "perfLockRelease"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/util/MtkBoostFramework;->sReleaseHandlerFunc:Ljava/lang/reflect/Method;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_47} :catch_48
    .catchall {:try_start_8 .. :try_end_47} :catchall_65

    .line 90
    .end local v2    # "argClasses":[Ljava/lang/Class;
    goto :goto_61

    .line 88
    :catch_48
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/Exception;
    :try_start_49
    const-string v3, "MtkBoostFramework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception_1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_61
    sput-boolean v1, Landroid/util/MtkBoostFramework;->sIsLoaded:Z

    .line 93
    :cond_63
    monitor-exit v0

    .line 94
    return-void

    .line 93
    :catchall_65
    move-exception v1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_49 .. :try_end_67} :catchall_65

    throw v1
.end method


# virtual methods
.method public varargs blacklist perfLockAcquire(I[I)I
    .registers 11
    .param p1, "duration"    # I
    .param p2, "list"    # [I

    .line 98
    const/4 v0, -0x1

    .line 100
    .local v0, "ret":I
    :try_start_1
    sget-object v1, Landroid/util/MtkBoostFramework;->sAcquireFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2c

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 102
    .local v1, "startTime":J
    sget-object v3, Landroid/util/MtkBoostFramework;->sAcquireFunc:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/util/MtkBoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 103
    .local v3, "retVal":Ljava/lang/Object;
    const-string/jumbo v4, "perfLockAcquire"

    invoke-direct {p0, v1, v2, v4}, Landroid/util/MtkBoostFramework;->checkTime(JLjava/lang/String;)V

    .line 104
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_2d

    move v0, v4

    .line 108
    .end local v1    # "startTime":J
    .end local v3    # "retVal":Ljava/lang/Object;
    :cond_2c
    goto :goto_47

    .line 106
    :catch_2d
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "perfLockAcquire "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkBoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_47
    return v0
.end method

.method public blacklist perfLockRelease()I
    .registers 7

    .line 114
    const/4 v0, -0x1

    .line 116
    .local v0, "ret":I
    :try_start_1
    sget-object v1, Landroid/util/MtkBoostFramework;->sReleaseFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_22

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 118
    .local v1, "startTime":J
    sget-object v3, Landroid/util/MtkBoostFramework;->sReleaseFunc:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/util/MtkBoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 119
    .local v3, "retVal":Ljava/lang/Object;
    const-string/jumbo v4, "perfLockRelease"

    invoke-direct {p0, v1, v2, v4}, Landroid/util/MtkBoostFramework;->checkTime(JLjava/lang/String;)V

    .line 120
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_23

    move v0, v4

    .line 124
    .end local v1    # "startTime":J
    .end local v3    # "retVal":Ljava/lang/Object;
    :cond_22
    goto :goto_3d

    .line 122
    :catch_23
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "perfLockRelease "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkBoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3d
    return v0
.end method

.method public blacklist perfLockReleaseHandler(I)I
    .registers 10
    .param p1, "handle"    # I

    .line 130
    const/4 v0, -0x1

    .line 132
    .local v0, "ret":I
    :try_start_1
    sget-object v1, Landroid/util/MtkBoostFramework;->sReleaseHandlerFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_29

    .line 133
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 134
    .local v1, "startTime":J
    sget-object v3, Landroid/util/MtkBoostFramework;->sReleaseHandlerFunc:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/util/MtkBoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 135
    .local v3, "retVal":Ljava/lang/Object;
    const-string/jumbo v4, "perfLockReleaseHandler"

    invoke-direct {p0, v1, v2, v4}, Landroid/util/MtkBoostFramework;->checkTime(JLjava/lang/String;)V

    .line 136
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_2a

    move v0, v4

    .line 140
    .end local v1    # "startTime":J
    .end local v3    # "retVal":Ljava/lang/Object;
    :cond_29
    goto :goto_44

    .line 138
    :catch_2a
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "perfLockReleaseHandler "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkBoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_44
    return v0
.end method
