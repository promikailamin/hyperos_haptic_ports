.class public Lmiui/util/HardwareInfo;
.super Ljava/lang/Object;
.source "HardwareInfo.java"


# static fields
.field private static blacklist DEBUG_MEMORY_PERFORMANCE:Z = false

.field private static blacklist DEBUG_MEMORY_PERFORMANCE_MASK:I = 0x0

.field private static final blacklist GB:J = 0x40000000L

.field private static final blacklist MB:J = 0x100000L

.field private static final blacklist TAG:Ljava/lang/String; = "HardwareInfo"

.field private static blacklist sDevice2Memory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sDevice2MemoryAdjust:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sTotalMemory:J

.field private static blacklist sTotalPhysicalMemory:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 22
    const-wide/16 v0, 0x0

    sput-wide v0, Lmiui/util/HardwareInfo;->sTotalMemory:J

    .line 27
    const/4 v0, 0x1

    sput v0, Lmiui/util/HardwareInfo;->DEBUG_MEMORY_PERFORMANCE_MASK:I

    .line 28
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    .line 29
    const-string v1, "persist.sys.mem_perf_debug"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget v3, Lmiui/util/HardwareInfo;->DEBUG_MEMORY_PERFORMANCE_MASK:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_1e

    goto :goto_20

    :cond_1e
    move v0, v2

    goto :goto_21

    :cond_20
    :goto_20
    nop

    :goto_21
    sput-boolean v0, Lmiui/util/HardwareInfo;->DEBUG_MEMORY_PERFORMANCE:Z

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    .line 32
    const-wide/32 v1, 0x40000000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "hwu9200"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "hwu9500"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "maguro"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "ville"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "LT26i"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "ventana"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "stuttgart"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-wide v3, 0x80000000L

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "t03g"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "pisces"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "HM2014501"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-wide v3, 0x100000000L

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "leo"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "HM2014011"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "HM2013022"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "HM2013023"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/HardwareInfo;->sDevice2MemoryAdjust:Ljava/util/HashMap;

    .line 52
    const-wide/32 v1, -0x20000000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "lcsh92_wet_xm_td"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2MemoryAdjust:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "lcsh92_wet_xm_kk"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getAndroidCacheMemory()J
    .registers 2

    .line 119
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static whitelist getFreeMemory()J
    .registers 2

    .line 94
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getFreeMemory()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist getLowMemoryLimitation()J
    .registers 6

    .line 100
    :try_start_0
    const-string v0, "/sys/module/lowmemorykiller/parameters/minfree"

    invoke-static {v0}, Lmiui/io/IOUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_21

    .line 102
    .local v1, "value":I
    mul-int/lit8 v2, v1, 0x4

    int-to-long v2, v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    return-wide v2

    .line 103
    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "value":I
    :catch_21
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    .end local v0    # "e":Ljava/lang/Exception;
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static whitelist getTotalMemory()J
    .registers 4

    .line 58
    sget-wide v0, Lmiui/util/HardwareInfo;->sTotalMemory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 59
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    sput-wide v0, Lmiui/util/HardwareInfo;->sTotalMemory:J

    .line 61
    :cond_e
    sget-wide v0, Lmiui/util/HardwareInfo;->sTotalMemory:J

    return-wide v0
.end method

.method public static whitelist getTotalPhysicalMemory()J
    .registers 8

    .line 66
    const-wide/16 v0, 0x0

    .line 67
    .local v0, "tmp":J
    const-wide/16 v2, 0x0

    .line 68
    .local v2, "gTotalMemory":J
    sget-wide v4, Lmiui/util/HardwareInfo;->sTotalPhysicalMemory:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_74

    .line 69
    sget-object v4, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    sget-object v5, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 70
    sget-object v4, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    sget-object v5, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sput-wide v4, Lmiui/util/HardwareInfo;->sTotalPhysicalMemory:J

    goto :goto_74

    .line 74
    :cond_27
    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalMemory()J

    move-result-wide v2

    .line 75
    const-wide v4, 0x100000000L

    cmp-long v4, v2, v4

    if-gtz v4, :cond_38

    .line 76
    const-wide/32 v0, 0x40000000

    goto :goto_4c

    .line 77
    :cond_38
    const-wide v4, 0x200000000L

    cmp-long v4, v2, v4

    if-gtz v4, :cond_47

    .line 78
    const-wide v0, 0x80000000L

    goto :goto_4c

    .line 80
    :cond_47
    const-wide v0, 0x100000000L

    .line 82
    :goto_4c
    add-long v4, v2, v0

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    sub-long v6, v0, v6

    not-long v6, v6

    and-long/2addr v4, v6

    sput-wide v4, Lmiui/util/HardwareInfo;->sTotalPhysicalMemory:J

    .line 84
    sget-object v4, Lmiui/util/HardwareInfo;->sDevice2MemoryAdjust:Ljava/util/HashMap;

    sget-object v5, Lmiui/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 85
    sget-wide v4, Lmiui/util/HardwareInfo;->sTotalPhysicalMemory:J

    sget-object v6, Lmiui/util/HardwareInfo;->sDevice2MemoryAdjust:Ljava/util/HashMap;

    sget-object v7, Lmiui/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    sput-wide v4, Lmiui/util/HardwareInfo;->sTotalPhysicalMemory:J

    .line 89
    :cond_74
    :goto_74
    sget-wide v4, Lmiui/util/HardwareInfo;->sTotalPhysicalMemory:J

    return-wide v4
.end method
