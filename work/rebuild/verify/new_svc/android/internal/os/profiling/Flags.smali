.class public abstract Landroid/internal/os/profiling/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field public static FEATURE_FLAGS:Landroid/internal/os/profiling/FeatureFlags;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Landroid/internal/os/profiling/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/internal/os/profiling/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/internal/os/profiling/Flags;->FEATURE_FLAGS:Landroid/internal/os/profiling/FeatureFlags;

    return-void
.end method

.method public static profiling25q4()Z
    .registers 2

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    const v1, 0x36ee81

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    .line 30
    :cond_9
    sget-object v0, Landroid/internal/os/profiling/Flags;->FEATURE_FLAGS:Landroid/internal/os/profiling/FeatureFlags;

    invoke-interface {v0}, Landroid/internal/os/profiling/FeatureFlags;->profiling25q4()Z

    move-result v0

    return v0
.end method

.method public static profilingTriggerKillRecents()Z
    .registers 2

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    const v1, 0x36ee81

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    .line 37
    :cond_9
    sget-object v0, Landroid/internal/os/profiling/Flags;->FEATURE_FLAGS:Landroid/internal/os/profiling/FeatureFlags;

    invoke-interface {v0}, Landroid/internal/os/profiling/FeatureFlags;->profilingTriggerKillRecents()Z

    move-result v0

    return v0
.end method

.method public static systemTriggeredProfilingNew()Z
    .registers 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method
