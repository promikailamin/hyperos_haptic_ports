.class public Lcom/android/server/pm/pkg/PackageStateUnserialized;
.super Ljava/lang/Object;
.source "PackageStateUnserialized.java"


# instance fields
.field public apkInUpdatedApex:Z

.field public hiddenUntilInstalled:Z

.field public volatile lastPackageUsageTimeInMills:[J

.field public mApexModuleName:Ljava/lang/String;

.field public final mPackageSetting:Lcom/android/server/pm/PackageSetting;

.field public overrideSeInfo:Ljava/lang/String;

.field public seInfo:Ljava/lang/String;

.field public updatedSystemApp:Z

.field public usesLibraryFiles:Ljava/util/List;

.field public usesLibraryInfos:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageSetting;)V
    .registers 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    .line 54
    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    .line 76
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    return-void
.end method


# virtual methods
.method public getApexModuleName()Ljava/lang/String;
    .registers 1

    .line 269
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mApexModuleName:Ljava/lang/String;

    return-object p0
.end method

.method public getLastPackageUsageTimeInMills()[J
    .registers 2

    .line 240
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    if-nez v0, :cond_16

    .line 242
    monitor-enter p0

    .line 243
    :try_start_5
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    if-nez v0, :cond_12

    .line 245
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lazyInitLastPackageUsageTimeInMills()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    goto :goto_12

    :catchall_10
    move-exception v0

    goto :goto_14

    .line 247
    :cond_12
    :goto_12
    monitor-exit p0

    return-object v0

    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_10

    throw v0

    :cond_16
    return-object v0
.end method

.method public getLatestPackageUseTimeInMills()J
    .registers 7

    .line 112
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    move-result-object p0

    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_13

    aget-wide v4, p0, v3

    .line 113
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_13
    return-wide v1
.end method

.method public getOverrideSeInfo()Ljava/lang/String;
    .registers 1

    .line 254
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->overrideSeInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getSeInfo()Ljava/lang/String;
    .registers 1

    .line 259
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->seInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getUsesLibraryFiles()Ljava/util/List;
    .registers 1

    .line 225
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    return-object p0
.end method

.method public getUsesLibraryInfos()Ljava/util/List;
    .registers 1

    .line 220
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    return-object p0
.end method

.method public isApkInUpdatedApex()Z
    .registers 1

    .line 235
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->apkInUpdatedApex:Z

    return p0
.end method

.method public isHiddenUntilInstalled()Z
    .registers 1

    .line 215
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    return p0
.end method

.method public isUpdatedSystemApp()Z
    .registers 1

    .line 230
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    return p0
.end method

.method public final lazyInitLastPackageUsageTimeInMills()[J
    .registers 1

    const/16 p0, 0x8

    .line 92
    new-array p0, p0, [J

    return-object p0
.end method

.method public setApexModuleName(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .registers 2

    .line 193
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mApexModuleName:Ljava/lang/String;

    .line 194
    iget-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setApkInUpdatedApex(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .registers 2

    .line 167
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->apkInUpdatedApex:Z

    .line 168
    iget-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setHiddenUntilInstalled(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .registers 2

    .line 139
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    .line 140
    iget-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setLastPackageUsageTimeInMills(IJ)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .registers 5

    if-gez p1, :cond_3

    goto :goto_7

    :cond_3
    const/16 v0, 0x8

    if-lt p1, v0, :cond_8

    :goto_7
    return-object p0

    .line 102
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    move-result-object v0

    aput-wide p2, v0, p1

    return-object p0
.end method

.method public setOverrideSeInfo(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .registers 2

    .line 179
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->overrideSeInfo:Ljava/lang/String;

    .line 180
    iget-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setSeInfo(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .registers 2

    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->seInfo:Ljava/lang/String;

    .line 187
    iget-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setUpdatedSystemApp(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .registers 2

    .line 161
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    .line 162
    iget-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setUsesLibraryFiles(Ljava/util/List;)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    .line 156
    iget-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setUsesLibraryInfos(Ljava/util/List;)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .registers 6

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 146
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 147
    new-instance v2, Lcom/android/server/pm/pkg/SharedLibraryWrapper;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/SharedLibraryInfo;

    invoke-direct {v2, v3}, Lcom/android/server/pm/pkg/SharedLibraryWrapper;-><init>(Landroid/content/pm/SharedLibraryInfo;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 149
    :cond_1d
    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    .line 150
    iget-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public updateFrom(Lcom/android/server/pm/pkg/PackageStateUnserialized;)V
    .registers 4

    .line 119
    iget-boolean v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    .line 121
    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    .line 125
    :cond_15
    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    .line 129
    :cond_26
    iget-boolean v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    .line 130
    iget-boolean v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->apkInUpdatedApex:Z

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->apkInUpdatedApex:Z

    .line 131
    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    .line 132
    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->overrideSeInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->overrideSeInfo:Ljava/lang/String;

    .line 133
    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->seInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->seInfo:Ljava/lang/String;

    .line 134
    iget-object p1, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mApexModuleName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mApexModuleName:Ljava/lang/String;

    .line 135
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method
