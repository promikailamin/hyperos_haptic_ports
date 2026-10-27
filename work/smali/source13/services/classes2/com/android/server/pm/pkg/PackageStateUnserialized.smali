.class public Lcom/android/server/pm/pkg/PackageStateUnserialized;
.super Ljava/lang/Object;
.source "PackageStateUnserialized.java"


# instance fields
.field private hiddenUntilInstalled:Z

.field private volatile lastPackageUsageTimeInMills:[J

.field private final mPackageSetting:Lcom/android/server/pm/PackageSetting;

.field private overrideSeInfo:Ljava/lang/String;

.field private updatedSystemApp:Z

.field private usesLibraryFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private usesLibraryInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageSetting;)V
    .registers 3
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    nop

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    .line 51
    nop

    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    .line 67
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    .line 68
    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 233
    return-void
.end method

.method static synthetic lambda$getNonNativeUsesLibraryInfos$0(Landroid/content/pm/SharedLibraryInfo;)Z
    .registers 2
    .param p0, "l"    # Landroid/content/pm/SharedLibraryInfo;

    .line 129
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private lazyInitLastPackageUsageTimeInMills()[J
    .registers 2

    .line 71
    const/16 v0, 0x9

    new-array v0, v0, [J

    return-object v0
.end method


# virtual methods
.method public getLastPackageUsageTimeInMills()[J
    .registers 3

    .line 205
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    .line 206
    .local v0, "_lastPackageUsageTimeInMills":[J
    if-nez v0, :cond_16

    .line 207
    monitor-enter p0

    .line 208
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    move-object v0, v1

    .line 209
    if-nez v0, :cond_11

    .line 210
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lazyInitLastPackageUsageTimeInMills()[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    move-object v0, v1

    .line 212
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v1

    .line 214
    :cond_16
    :goto_16
    return-object v0
.end method

.method public getLatestForegroundPackageUseTimeInMills()J
    .registers 9

    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    .line 103
    .local v0, "foregroundReasons":[I
    const-wide/16 v1, 0x0

    .line 104
    .local v1, "latestUse":J
    array-length v3, v0

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v3, :cond_1b

    aget v5, v0, v4

    .line 105
    .local v5, "reason":I
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    move-result-object v6

    aget-wide v6, v6, v5

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 104
    .end local v5    # "reason":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 107
    :cond_1b
    return-wide v1

    :array_1c
    .array-data 4
        0x0
        0x2
    .end array-data
.end method

.method public getLatestPackageUseTimeInMills()J
    .registers 8

    .line 90
    const-wide/16 v0, 0x0

    .line 91
    .local v0, "latestUse":J
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_13

    aget-wide v5, v2, v4

    .line 92
    .local v5, "use":J
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 91
    .end local v5    # "use":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 94
    :cond_13
    return-wide v0
.end method

.method public getNonNativeUsesLibraryInfos()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/pkg/PackageStateUnserialized$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized$$ExternalSyntheticLambda0;-><init>()V

    .line 129
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 128
    return-object v0
.end method

.method public getOverrideSeInfo()Ljava/lang/String;
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->overrideSeInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageSetting()Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    return-object v0
.end method

.method public getUsesLibraryFiles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    return-object v0
.end method

.method public getUsesLibraryInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    return-object v0
.end method

.method public isHiddenUntilInstalled()Z
    .registers 2

    .line 185
    iget-boolean v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    return v0
.end method

.method public isUpdatedSystemApp()Z
    .registers 2

    .line 200
    iget-boolean v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    return v0
.end method

.method public setHiddenUntilInstalled(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .registers 3
    .param p1, "value"    # Z

    .line 133
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    .line 134
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 135
    return-object p0
.end method

.method public setLastPackageUsageTimeInMills(IJ)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .registers 5
    .param p1, "reason"    # I
    .param p2, "time"    # J

    .line 75
    if-gez p1, :cond_3

    .line 76
    return-object p0

    .line 78
    :cond_3
    const/16 v0, 0x9

    if-lt p1, v0, :cond_8

    .line 79
    return-object p0

    .line 81
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    move-result-object v0

    aput-wide p2, v0, p1

    .line 86
    return-object p0
.end method

.method public varargs setLastPackageUsageTimeInMills([J)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .registers 3
    .param p1, "value"    # [J

    .line 157
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    .line 158
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 159
    return-object p0
.end method

.method public setOverrideSeInfo(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 163
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->overrideSeInfo:Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 165
    return-object p0
.end method

.method public setUpdatedSystemApp(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .registers 3
    .param p1, "value"    # Z

    .line 151
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    .line 152
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 153
    return-object p0
.end method

.method public setUsesLibraryFiles(Ljava/util/List;)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/pkg/PackageStateUnserialized;"
        }
    .end annotation

    .line 145
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    .line 146
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 147
    return-object p0
.end method

.method public setUsesLibraryInfos(Ljava/util/List;)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;)",
            "Lcom/android/server/pm/pkg/PackageStateUnserialized;"
        }
    .end annotation

    .line 139
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    .line 140
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 141
    return-object p0
.end method

.method public updateFrom(Lcom/android/server/pm/pkg/PackageStateUnserialized;)V
    .registers 4
    .param p1, "other"    # Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 111
    iget-boolean v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    .line 113
    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    .line 117
    :cond_15
    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    .line 121
    :cond_26
    iget-boolean v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    .line 122
    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    .line 123
    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->overrideSeInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->overrideSeInfo:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 125
    return-void
.end method
