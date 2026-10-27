.class public final Landroid/internal/os/profiling/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/internal/os/profiling/FeatureFlags;


# static fields
.field public static volatile isCached:Z

.field public static persistQueue:Z

.field public static profiling25q4:Z

.field public static profilingTriggerKillRecents:Z

.field public static redactionEnabled:Z

.field public static systemTriggeredProfilingNew:Z

.field public static telemetryApis:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final init()V
    .registers 7

    .line 19
    const-string p0, "FeatureFlagsImplExport"

    const/4 v0, 0x1

    :try_start_3
    const-string v1, "android.os.profiling"

    invoke-static {v1}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v1

    .line 20
    sput-boolean v0, Landroid/internal/os/profiling/FeatureFlagsImpl;->persistQueue:Z

    .line 21
    sget v2, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    const/4 v3, 0x0

    const v4, 0x36ee81

    if-lt v2, v4, :cond_15

    move v5, v0

    goto :goto_1c

    :cond_15
    const-string/jumbo v5, "profiling_25q4"

    invoke-virtual {v1, v5, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v5

    :goto_1c
    sput-boolean v5, Landroid/internal/os/profiling/FeatureFlagsImpl;->profiling25q4:Z

    if-lt v2, v4, :cond_22

    move v1, v0

    goto :goto_29

    .line 22
    :cond_22
    const-string/jumbo v2, "profiling_trigger_kill_recents"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v1

    :goto_29
    sput-boolean v1, Landroid/internal/os/profiling/FeatureFlagsImpl;->profilingTriggerKillRecents:Z

    .line 23
    sput-boolean v0, Landroid/internal/os/profiling/FeatureFlagsImpl;->redactionEnabled:Z

    .line 24
    sput-boolean v0, Landroid/internal/os/profiling/FeatureFlagsImpl;->systemTriggeredProfilingNew:Z

    .line 25
    sput-boolean v0, Landroid/internal/os/profiling/FeatureFlagsImpl;->telemetryApis:Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_31} :catch_34
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_31} :catch_32

    goto :goto_45

    :catch_32
    move-exception v1

    goto :goto_36

    :catch_34
    move-exception v1

    goto :goto_3e

    .line 32
    :goto_36
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 28
    :goto_3e
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :goto_45
    sput-boolean v0, Landroid/internal/os/profiling/FeatureFlagsImpl;->isCached:Z

    return-void
.end method

.method public profiling25q4()Z
    .registers 2

    .line 46
    sget-boolean v0, Landroid/internal/os/profiling/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 47
    invoke-virtual {p0}, Landroid/internal/os/profiling/FeatureFlagsImpl;->init()V

    .line 49
    :cond_7
    sget-boolean p0, Landroid/internal/os/profiling/FeatureFlagsImpl;->profiling25q4:Z

    return p0
.end method

.method public profilingTriggerKillRecents()Z
    .registers 2

    .line 54
    sget-boolean v0, Landroid/internal/os/profiling/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 55
    invoke-virtual {p0}, Landroid/internal/os/profiling/FeatureFlagsImpl;->init()V

    .line 57
    :cond_7
    sget-boolean p0, Landroid/internal/os/profiling/FeatureFlagsImpl;->profilingTriggerKillRecents:Z

    return p0
.end method
