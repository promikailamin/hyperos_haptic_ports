.class public Landroid/os/MiuiProcess;
.super Ljava/lang/Object;
.source "MiuiProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MiuiProcess$PriorityState;
    }
.end annotation


# static fields
.field public static final blacklist BACKUP_UID:I = 0x17d4

.field public static final blacklist BIG_CORES_INDEX:[I

.field public static final blacklist BIG_PRIME_CORES_INDEX:[I

.field public static final blacklist FINDDEVICE_UID:I = 0x17de

.field public static final blacklist LAUNCH_RT_SCHED_DURATION_MS:J = 0x1f4L

.field public static final blacklist MAX_RT_SCHED_DURATION_MS:J = 0x1770L

.field public static final blacklist PROPERTY_CPU_CORE_COUNT:I

.field public static final blacklist RESET_SCHED_DURATION_MS:J = 0x0L

.field public static final blacklist SCHED_MODE_ALWAYS_RT:I = 0x3

.field public static final blacklist SCHED_MODE_ANIMATOR_RT:I = 0x1

.field public static final blacklist SCHED_MODE_BIND_BIG_CORE:I = 0x7

.field public static final blacklist SCHED_MODE_HOME_ANIMATION:I = 0x4

.field public static final blacklist SCHED_MODE_NORMAL:I = 0x0

.field public static final blacklist SCHED_MODE_SCROLL_NOTIFICATION:I = 0x6

.field public static final blacklist SCHED_MODE_TOUCH_RT:I = 0x2

.field public static final blacklist SCHED_MODE_UNLOCK:I = 0x5

.field public static final blacklist SCHED_RESET_ON_FORK:I = 0x40000000

.field public static final blacklist SCROLL_RT_SCHED_DURATION_MS:J = 0x1388L

.field private static final blacklist TAG:Ljava/lang/String; = "LockBoost"

.field public static final blacklist THEME_UID:I = 0x17d5

.field public static final blacklist THREAD_GROUP_DEFAULT:I = -0x1

.field public static final blacklist THREAD_GROUP_FG_LIMITED:I = 0xa

.field public static final blacklist THREAD_GROUP_FG_SERVICE:I = 0x9

.field public static final blacklist THREAD_GROUP_FOREGROUND:I = 0x1

.field public static final blacklist THREAD_GROUP_TOP_APP:I = 0x5

.field public static final blacklist TOUCH_RT_SCHED_DURATION_MS:J = 0x7d0L

.field public static final blacklist UPDATER_UID:I = 0x17d6

.field static blacklist sThreadPriorityState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/os/MiuiProcess$PriorityState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 62
    new-instance v0, Landroid/os/MiuiProcess$1;

    invoke-direct {v0}, Landroid/os/MiuiProcess$1;-><init>()V

    sput-object v0, Landroid/os/MiuiProcess;->sThreadPriorityState:Ljava/lang/ThreadLocal;

    .line 188
    nop

    .line 189
    const-string v0, "persist.sys.miui_animator_sched.cpu_cores"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/MiuiProcess;->PROPERTY_CPU_CORE_COUNT:I

    .line 190
    nop

    .line 191
    const-string v0, "persist.sys.miui_animator_sched.bigcores"

    invoke-static {v0}, Landroid/os/MiuiProcess;->loadCoresProperty(Ljava/lang/String;)[I

    move-result-object v0

    sput-object v0, Landroid/os/MiuiProcess;->BIG_CORES_INDEX:[I

    .line 192
    nop

    .line 193
    const-string v0, "persist.sys.miui_animator_sched.big_prime_cores"

    invoke-static {v0}, Landroid/os/MiuiProcess;->loadCoresProperty(Ljava/lang/String;)[I

    move-result-object v0

    sput-object v0, Landroid/os/MiuiProcess;->BIG_PRIME_CORES_INDEX:[I

    .line 192
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist boostPriorityForLockedSection()V
    .registers 6

    .line 73
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 74
    .local v0, "tid":I
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    .line 75
    .local v1, "prevPriority":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", prevPriority="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LockBoost"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget-object v2, Landroid/os/MiuiProcess;->sThreadPriorityState:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/MiuiProcess$PriorityState;

    .line 77
    .local v2, "state":Landroid/os/MiuiProcess$PriorityState;
    invoke-static {v2}, Landroid/os/MiuiProcess$PriorityState;->-$$Nest$fgetregionCounter(Landroid/os/MiuiProcess$PriorityState;)I

    move-result v4

    if-nez v4, :cond_5d

    const/4 v4, -0x2

    if-le v1, v4, :cond_5d

    .line 78
    invoke-static {v2, v1}, Landroid/os/MiuiProcess$PriorityState;->-$$Nest$fputprevPriority(Landroid/os/MiuiProcess$PriorityState;I)V

    .line 79
    invoke-static {v0, v4}, Landroid/os/Process;->setThreadPriority(II)V

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread tid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " priority is boosted to -2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_5d
    invoke-static {v2}, Landroid/os/MiuiProcess$PriorityState;->-$$Nest$fgetregionCounter(Landroid/os/MiuiProcess$PriorityState;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Landroid/os/MiuiProcess$PriorityState;->-$$Nest$fputregionCounter(Landroid/os/MiuiProcess$PriorityState;I)V

    .line 83
    return-void
.end method

.method public static blacklist getThreadPriority(ILjava/lang/String;)I
    .registers 6
    .param p0, "tid"    # I
    .param p1, "tag"    # Ljava/lang/String;

    .line 137
    if-nez p1, :cond_4

    .line 138
    const-string p1, "MiuiProcess"

    .line 140
    :cond_4
    const/4 v0, 0x0

    .line 142
    .local v0, "priority":I
    :try_start_5
    invoke-static {p0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_9} :catch_d
    .catchall {:try_start_5 .. :try_end_9} :catchall_b

    move v0, v1

    .line 146
    return v0

    :catchall_b
    move-exception v1

    goto :goto_2b

    .line 143
    :catch_d
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thread tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_b

    .line 146
    nop

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2b
    return v0
.end method

.method public static blacklist is32BitApp(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 153
    const-string v0, "LockBoost"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 154
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v3

    .line 153
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 155
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 156
    .local v3, "primaryCpuAbi":Ljava/lang/String;
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_15} :catch_32
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15} :catch_2b

    .line 157
    .local v4, "secondaryCpuAbi":Ljava/lang/String;
    const-string v5, "arm64"

    if-eqz v3, :cond_20

    :try_start_19
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 158
    return v1

    .line 159
    :cond_20
    if-eqz v4, :cond_29

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_26} :catch_32
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_26} :catch_2b

    if-eqz v0, :cond_29

    .line 160
    return v1

    .line 162
    :cond_29
    const/4 v0, 0x1

    return v0

    .line 167
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "primaryCpuAbi":Ljava/lang/String;
    .end local v4    # "secondaryCpuAbi":Ljava/lang/String;
    :catch_2b
    move-exception v2

    .line 168
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "failed to is32BitApp"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58

    .line 164
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_32
    move-exception v2

    .line 165
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApplicationInfo failed. packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 170
    :goto_58
    return v1
.end method

.method public static blacklist isLowMemoryDevice()Z
    .registers 7

    .line 196
    const-string v0, "ro.config.low_ram.threshold_gb"

    const-string v1, "3"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "lowmem_value":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v1

    .line 198
    .local v1, "totalMemory":J
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x400

    mul-long/2addr v3, v5

    mul-long/2addr v3, v5

    mul-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-gez v3, :cond_1b

    const/4 v3, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v3, 0x0

    :goto_1c
    return v3
.end method

.method private static blacklist loadCoresProperty(Ljava/lang/String;)[I
    .registers 10
    .param p0, "prop"    # Ljava/lang/String;

    .line 203
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "bigCoresStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 205
    return-object v0

    .line 208
    :cond_c
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "bigCoresStrSlice":[Ljava/lang/String;
    :try_start_12
    array-length v3, v2

    if-lez v3, :cond_68

    .line 211
    const/4 v3, -0x1

    .line 212
    .local v3, "start":I
    const/4 v4, -0x1

    .line 213
    .local v4, "end":I
    array-length v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2b

    .line 214
    aget-object v5, v2, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    .line 215
    aget-object v5, v2, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v4, v5

    goto :goto_3d

    .line 216
    :cond_2b
    array-length v5, v2

    const/4 v8, 0x2

    if-ne v5, v8, :cond_3d

    .line 217
    aget-object v5, v2, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    .line 218
    aget-object v5, v2, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v4, v5

    .line 221
    :cond_3d
    :goto_3d
    if-ltz v3, :cond_68

    if-ltz v4, :cond_68

    if-lt v4, v3, :cond_68

    .line 222
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 223
    .local v5, "bigCores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move v6, v3

    .local v6, "i":I
    :goto_4a
    if-gt v6, v4, :cond_56

    .line 224
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    add-int/lit8 v6, v6, 0x1

    goto :goto_4a

    .line 226
    .end local v6    # "i":I
    :cond_56
    invoke-virtual {v5}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Landroid/os/MiuiProcess$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Landroid/os/MiuiProcess$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_67} :catch_69

    return-object v0

    .line 231
    .end local v3    # "start":I
    .end local v4    # "end":I
    .end local v5    # "bigCores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_68
    goto :goto_82

    .line 229
    :catch_69
    move-exception v3

    .line 230
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load big cores property failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LockBoost"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_82
    return-object v0
.end method

.method public static blacklist resetPriorityAfterLockedSection()V
    .registers 3

    .line 90
    sget-object v0, Landroid/os/MiuiProcess;->sThreadPriorityState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MiuiProcess$PriorityState;

    .line 91
    .local v0, "state":Landroid/os/MiuiProcess$PriorityState;
    invoke-static {v0}, Landroid/os/MiuiProcess$PriorityState;->-$$Nest$fgetregionCounter(Landroid/os/MiuiProcess$PriorityState;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Landroid/os/MiuiProcess$PriorityState;->-$$Nest$fputregionCounter(Landroid/os/MiuiProcess$PriorityState;I)V

    .line 92
    invoke-static {v0}, Landroid/os/MiuiProcess$PriorityState;->-$$Nest$fgetregionCounter(Landroid/os/MiuiProcess$PriorityState;)I

    move-result v1

    if-nez v1, :cond_53

    invoke-static {v0}, Landroid/os/MiuiProcess$PriorityState;->-$$Nest$fgetprevPriority(Landroid/os/MiuiProcess$PriorityState;)I

    move-result v1

    const/4 v2, -0x2

    if-le v1, v2, :cond_53

    .line 93
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v0}, Landroid/os/MiuiProcess$PriorityState;->-$$Nest$fgetprevPriority(Landroid/os/MiuiProcess$PriorityState;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/Process;->setThreadPriority(II)V

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " priority is reset to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/os/MiuiProcess$PriorityState;->-$$Nest$fgetprevPriority(Landroid/os/MiuiProcess$PriorityState;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockBoost"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_53
    return-void
.end method

.method public static blacklist setThreadPriority(ILjava/lang/String;)V
    .registers 3
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;

    .line 127
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0, p0, p1}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)Z

    .line 128
    return-void
.end method

.method public static blacklist setThreadPriority(IILjava/lang/String;)Z
    .registers 6
    .param p0, "tid"    # I
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 106
    const-string v0, "thread tid="

    if-nez p2, :cond_6

    .line 107
    const-string p2, "MiuiProcess"

    .line 110
    :cond_6
    :try_start_6
    invoke-static {p0, p1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", priority is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_27} :catch_29

    .line 112
    const/4 v0, 0x1

    return v0

    .line 113
    :catch_29
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", set priority error"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method
