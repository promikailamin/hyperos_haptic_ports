.class public Lcom/android/server/compat/PlatformCompat;
.super Lcom/android/internal/compat/IPlatformCompat$Stub;
.source "PlatformCompat.java"


# instance fields
.field public final mBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

.field public final mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

.field public final mCompatConfig:Lcom/android/server/compat/CompatConfig;

.field public final mContext:Landroid/content/Context;

.field public mIsWear:Ljava/lang/Boolean;

.field public mLogChangeChecksToStatsD:Ljava/lang/Boolean;


# direct methods
.method public static synthetic $r8$lambda$-zCtnrhX3uL10YRKH31OPs5_I_s(Lcom/android/server/compat/PlatformCompat;Lcom/android/internal/compat/CompatibilityChangeInfo;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/compat/PlatformCompat;->isShownInUI(Lcom/android/internal/compat/CompatibilityChangeInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Scg1oad3I4U5dU8481owPl2CreI(I)[Lcom/android/internal/compat/CompatibilityChangeInfo;
    .registers 1

    .line 433
    new-array p0, p0, [Lcom/android/internal/compat/CompatibilityChangeInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCompatConfig(Lcom/android/server/compat/PlatformCompat;)Lcom/android/server/compat/CompatConfig;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 83
    invoke-static {p1}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 80
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mLogChangeChecksToStatsD:Ljava/lang/Boolean;

    .line 84
    iput-object p1, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    .line 85
    new-instance v0, Lcom/android/internal/compat/ChangeReporter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/compat/ChangeReporter;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    .line 86
    new-instance v0, Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-direct {v0}, Lcom/android/internal/compat/AndroidBuildClassifier;-><init>()V

    iput-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    .line 87
    invoke-static {v0, p1}, Lcom/android/server/compat/CompatConfig;->create(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;)Lcom/android/server/compat/CompatConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/compat/CompatConfig;Lcom/android/internal/compat/AndroidBuildClassifier;Lcom/android/internal/compat/ChangeReporter;)V
    .registers 6

    .line 94
    invoke-static {p1}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 80
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mLogChangeChecksToStatsD:Ljava/lang/Boolean;

    .line 95
    iput-object p1, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    .line 96
    iput-object p4, p0, Lcom/android/server/compat/PlatformCompat;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    .line 97
    iput-object p2, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 98
    iput-object p3, p0, Lcom/android/server/compat/PlatformCompat;->mBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/compat/PlatformCompat;->registerPackageReceiver(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final checkAllCompatOverridesAreOverridable(Ljava/util/Collection;)V
    .registers 6

    .line 569
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 570
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/compat/PlatformCompat;->isKnownChangeId(J)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/compat/CompatConfig;->isOverridable(J)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_4

    .line 571
    :cond_27
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only change ids marked as Overridable can be overridden."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    return-void
.end method

.method public clearOverride(JLjava/lang/String;)Z
    .registers 5

    .line 365
    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverride_enforcePermission()V

    .line 367
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->removeOverride(JLjava/lang/String;)Z

    move-result p1

    .line 368
    invoke-virtual {p0, p3}, Lcom/android/server/compat/PlatformCompat;->killPackage(Ljava/lang/String;)V

    return p1
.end method

.method public clearOverrideForTest(JLjava/lang/String;)Z
    .registers 4

    .line 375
    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverrideForTest_enforcePermission()V

    .line 377
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->removeOverride(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public clearOverrides(Ljava/lang/String;)V
    .registers 3

    .line 348
    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverrides_enforcePermission()V

    .line 350
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/compat/CompatConfig;->removePackageOverrides(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0, p1}, Lcom/android/server/compat/PlatformCompat;->killPackage(Ljava/lang/String;)V

    return-void
.end method

.method public clearOverridesForTest(Ljava/lang/String;)V
    .registers 2

    .line 357
    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverridesForTest_enforcePermission()V

    .line 359
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatConfig;->removePackageOverrides(Ljava/lang/String;)V

    return-void
.end method

.method public disableTargetSdkChanges(Ljava/lang/String;I)I
    .registers 4

    .line 337
    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->disableTargetSdkChanges_enforcePermission()V

    .line 339
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 340
    invoke-virtual {v0, p1, p2}, Lcom/android/server/compat/CompatConfig;->disableTargetSdkChangesForPackage(Ljava/lang/String;I)I

    move-result p2

    .line 341
    invoke-virtual {p0, p1}, Lcom/android/server/compat/PlatformCompat;->killPackage(Ljava/lang/String;)V

    return p2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 479
    iget-object p1, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    const-string/jumbo p3, "platform_compat"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    .line 482
    :cond_c
    iget-object p1, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.READ_COMPAT_CHANGE_CONFIG"

    const-string v0, "Cannot read compat change"

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object p1, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.LOG_COMPAT_CHANGE"

    const-string v0, "Cannot read log compat change usage"

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p2}, Lcom/android/server/compat/CompatConfig;->dumpConfig(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public enableTargetSdkChanges(Ljava/lang/String;I)I
    .registers 4

    .line 326
    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->enableTargetSdkChanges_enforcePermission()V

    .line 328
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 329
    invoke-virtual {v0, p1, p2}, Lcom/android/server/compat/CompatConfig;->enableTargetSdkChangesForPackage(Ljava/lang/String;I)I

    move-result p2

    .line 330
    invoke-virtual {p0, p1}, Lcom/android/server/compat/PlatformCompat;->killPackage(Ljava/lang/String;)V

    return p2
.end method

.method public final fixTargetSdk(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;
    .registers 5

    .line 514
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mIsWear:Ljava/lang/Boolean;

    if-nez v0, :cond_16

    .line 515
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mIsWear:Ljava/lang/Boolean;

    .line 520
    :cond_16
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mIsWear:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2c

    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_2c

    if-eqz p1, :cond_2c

    .line 522
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {p0}, Lcom/android/internal/compat/AndroidBuildClassifier;->platformTargetSdk()I

    move-result p0

    iput p0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    :cond_2c
    return-object p1
.end method

.method public getAppConfig(Landroid/content/pm/ApplicationInfo;)Lcom/android/internal/compat/CompatibilityChangeConfig;
    .registers 2

    .line 416
    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getAppConfig_enforcePermission()V

    .line 418
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatConfig;->getAppConfig(Landroid/content/pm/ApplicationInfo;)Lcom/android/internal/compat/CompatibilityChangeConfig;

    move-result-object p0

    return-object p0
.end method

.method public final getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 9

    .line 507
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x0

    .line 508
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    move-object v1, p1

    move v5, p2

    .line 507
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDisabledChanges(Landroid/content/pm/ApplicationInfo;)[J
    .registers 2

    .line 451
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatConfig;->getDisabledChanges(Landroid/content/pm/ApplicationInfo;)[J

    move-result-object p0

    return-object p0
.end method

.method public getLoggableChanges(Landroid/content/pm/ApplicationInfo;)[J
    .registers 2

    .line 464
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatConfig;->getLoggableChanges(Landroid/content/pm/ApplicationInfo;)[J

    move-result-object p0

    return-object p0
.end method

.method public getOverrideValidator()Lcom/android/internal/compat/IOverrideValidator;
    .registers 1

    .line 492
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->getOverrideValidator()Lcom/android/internal/compat/IOverrideValidator;

    move-result-object p0

    return-object p0
.end method

.method public isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z
    .registers 5

    .line 133
    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->isChangeEnabled_enforcePermission()V

    .line 135
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mLogChangeChecksToStatsD:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledAndReportInternal(JLandroid/content/pm/ApplicationInfo;Z)Z

    move-result p0

    return p0
.end method

.method public isChangeEnabledAndReportInternal(JLandroid/content/pm/ApplicationInfo;Z)Z
    .registers 15

    .line 184
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/compat/CompatConfig;->getCompatChange(J)Lcom/android/server/compat/CompatChange;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v1, v0, p3}, Lcom/android/server/compat/CompatConfig;->isChangeEnabled(Lcom/android/server/compat/CompatChange;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v2, 0x1

    :goto_f
    move v7, v2

    goto :goto_13

    :cond_11
    const/4 v2, 0x2

    goto :goto_f

    :goto_13
    if-eqz p3, :cond_2e

    .line 189
    iget-object v2, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    iget v3, p3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 190
    invoke-virtual {v2, v0, v3}, Lcom/android/server/compat/CompatConfig;->isChangeTargetingLatestSdk(Lcom/android/server/compat/CompatChange;I)Z

    move-result v0

    if-nez v0, :cond_21

    if-eqz p4, :cond_2e

    .line 192
    :cond_21
    iget-object v3, p0, Lcom/android/server/compat/PlatformCompat;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    iget v4, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 196
    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v8

    move-wide v5, p1

    move v9, p4

    .line 192
    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/compat/ChangeReporter;->reportChange(IJIZZ)V

    :cond_2e
    return v1
.end method

.method public isChangeEnabledByPackageName(JLjava/lang/String;I)Z
    .registers 5

    .line 142
    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->isChangeEnabledByPackageName_enforcePermission()V

    .line 144
    invoke-virtual {p0, p3, p4}, Lcom/android/server/compat/PlatformCompat;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    if-nez p4, :cond_10

    .line 146
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->willChangeBeEnabled(JLjava/lang/String;)Z

    move-result p0

    return p0

    .line 148
    :cond_10
    iget-object p3, p0, Lcom/android/server/compat/PlatformCompat;->mLogChangeChecksToStatsD:Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledAndReportInternal(JLandroid/content/pm/ApplicationInfo;Z)Z

    move-result p0

    return p0
.end method

.method public isChangeEnabledByUid(JI)Z
    .registers 5

    .line 154
    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->isChangeEnabledByUid_enforcePermission()V

    .line 156
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mLogChangeChecksToStatsD:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByUidInternal(JIZ)Z

    move-result p0

    return p0
.end method

.method public isChangeEnabledByUidInternal(JIZ)Z
    .registers 11

    .line 231
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 232
    array-length v1, v0

    if-nez v1, :cond_10

    goto :goto_2c

    .line 236
    :cond_10
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 237
    array-length v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v2, :cond_2b

    aget-object v5, v0, v4

    .line 239
    invoke-virtual {p0, v5, v1}, Lcom/android/server/compat/PlatformCompat;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {p0, v5, p3}, Lcom/android/server/compat/PlatformCompat;->fixTargetSdk(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 240
    invoke-virtual {p0, p1, p2, v5, p4}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledAndReportInternal(JLandroid/content/pm/ApplicationInfo;Z)Z

    move-result v5

    and-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_2b
    return v3

    .line 233
    :cond_2c
    :goto_2c
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/compat/CompatConfig;->defaultChangeIdValue(J)Z

    move-result p0

    return p0
.end method

.method public isChangeEnabledByUidInternalNoLogging(JI)Z
    .registers 10

    .line 251
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 252
    array-length v1, v0

    if-nez v1, :cond_10

    goto :goto_2c

    .line 256
    :cond_10
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 257
    array-length v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v2, :cond_2b

    aget-object v5, v0, v4

    .line 259
    invoke-virtual {p0, v5, v1}, Lcom/android/server/compat/PlatformCompat;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {p0, v5, p3}, Lcom/android/server/compat/PlatformCompat;->fixTargetSdk(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 260
    invoke-virtual {p0, p1, p2, v5}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v5

    and-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_2b
    return v3

    .line 253
    :cond_2c
    :goto_2c
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/compat/CompatConfig;->defaultChangeIdValue(J)Z

    move-result p0

    return p0
.end method

.method public isChangeEnabledInternal(JLjava/lang/String;I)Z
    .registers 6

    .line 216
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->willChangeBeEnabled(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 217
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 218
    iput-object p3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 219
    iput p4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 220
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z
    .registers 4

    .line 166
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public isKnownChangeId(J)Z
    .registers 3

    .line 438
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/compat/CompatConfig;->isKnownChangeId(J)Z

    move-result p0

    return p0
.end method

.method public isLogChangeChecksToStatsd()Z
    .registers 1

    .line 386
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mLogChangeChecksToStatsD:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isShownInUI(Lcom/android/internal/compat/CompatibilityChangeInfo;)Z
    .registers 8

    .line 578
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getLoggingOnly()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 581
    :cond_8
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v2

    const-wide/32 v4, 0x8e787b1

    cmp-long v0, v2, v4

    if-nez v0, :cond_14

    return v1

    .line 584
    :cond_14
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_31

    .line 585
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v0

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_30

    .line 586
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {p0}, Lcom/android/internal/compat/AndroidBuildClassifier;->platformTargetSdk()I

    move-result p0

    if-gt p1, p0, :cond_30

    return v2

    :cond_30
    return v1

    :cond_31
    return v2
.end method

.method public final killPackage(Ljava/lang/String;)V
    .registers 6

    .line 529
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    .line 530
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 529
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 532
    const-string v1, "Compatibility"

    if-gez v0, :cond_30

    .line 533
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Didn\'t find package "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on device."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 537
    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Killing package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (UID "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/compat/PlatformCompat;->killUid(I)V

    return-void
.end method

.method public final killUid(I)V
    .registers 6

    .line 549
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 551
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 553
    const-string v2, "PlatformCompat overrides"

    const/4 v3, -0x1

    invoke-interface {p0, p1, v3, v2}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_1b
    .catchall {:try_start_4 .. :try_end_10} :catchall_11

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_17

    .line 558
    :cond_13
    :goto_13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 559
    throw p0

    .line 558
    :catch_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public listAllChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;
    .registers 1

    .line 424
    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->listAllChanges_enforcePermission()V

    .line 426
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->dumpChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;

    move-result-object p0

    return-object p0
.end method

.method public listUIChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;
    .registers 3

    .line 432
    invoke-virtual {p0}, Lcom/android/server/compat/PlatformCompat;->listAllChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/compat/PlatformCompat$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/compat/PlatformCompat$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/compat/PlatformCompat;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/compat/PlatformCompat$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/compat/PlatformCompat$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/internal/compat/CompatibilityChangeInfo;

    return-object p0
.end method

.method public lookupChangeId(Ljava/lang/String;)J
    .registers 2

    .line 474
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatConfig;->lookupChangeId(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public putAllOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;)V
    .registers 4

    .line 304
    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->putAllOverridesOnReleaseBuilds_enforcePermission()V

    .line 307
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;->packageNameToOverrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    .line 308
    iget-object v1, v1, Lcom/android/internal/compat/CompatibilityOverrideConfig;->overrides:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/compat/PlatformCompat;->checkAllCompatOverridesAreOverridable(Ljava/util/Collection;)V

    goto :goto_d

    .line 310
    :cond_23
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/compat/CompatConfig;->addAllPackageOverrides(Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;Z)V

    return-void
.end method

.method public putOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;)V
    .registers 4

    .line 317
    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->putOverridesOnReleaseBuilds_enforcePermission()V

    .line 319
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverrideConfig;->overrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/compat/PlatformCompat;->checkAllCompatOverridesAreOverridable(Ljava/util/Collection;)V

    .line 320
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/compat/CompatConfig;->addPackageOverrides(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V

    return-void
.end method

.method public registerContentObserver()V
    .registers 1

    .line 647
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->registerContentObserver()V

    return-void
.end method

.method public registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z
    .registers 4

    .line 607
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z

    move-result p0

    return p0
.end method

.method public registerPackageReceiver(Landroid/content/Context;)V
    .registers 4

    .line 616
    new-instance v0, Lcom/android/server/compat/PlatformCompat$1;

    invoke-direct {v0, p0}, Lcom/android/server/compat/PlatformCompat$1;-><init>(Lcom/android/server/compat/PlatformCompat;)V

    .line 633
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 634
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 635
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 636
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 637
    const-string/jumbo v1, "package"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 638
    invoke-virtual {p1, v0, p0, v1, v1}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public removeAllOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;)V
    .registers 4

    .line 393
    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->removeAllOverridesOnReleaseBuilds_enforcePermission()V

    .line 396
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;->packageNameToOverridesToRemove:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;

    .line 397
    iget-object v1, v1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;->changeIds:Ljava/util/Set;

    invoke-virtual {p0, v1}, Lcom/android/server/compat/PlatformCompat;->checkAllCompatOverridesAreOverridable(Ljava/util/Collection;)V

    goto :goto_d

    .line 399
    :cond_1f
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatConfig;->removeAllPackageOverrides(Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;)V

    return-void
.end method

.method public removeOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)V
    .registers 4

    .line 407
    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->removeOverridesOnReleaseBuilds_enforcePermission()V

    .line 409
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;->changeIds:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/android/server/compat/PlatformCompat;->checkAllCompatOverridesAreOverridable(Ljava/util/Collection;)V

    .line 410
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/compat/CompatConfig;->removePackageOverrides(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)V

    return-void
.end method

.method public reportChange(JLandroid/content/pm/ApplicationInfo;)V
    .registers 5

    .line 106
    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->reportChange_enforcePermission()V

    const/4 v0, 0x1

    .line 107
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledAndReportInternal(JLandroid/content/pm/ApplicationInfo;Z)Z

    return-void
.end method

.method public reportChangeByPackageName(JLjava/lang/String;I)V
    .registers 5

    .line 114
    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->reportChangeByPackageName_enforcePermission()V

    .line 116
    invoke-virtual {p0, p3, p4}, Lcom/android/server/compat/PlatformCompat;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    if-eqz p3, :cond_d

    const/4 p4, 0x1

    .line 118
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledAndReportInternal(JLandroid/content/pm/ApplicationInfo;Z)Z

    :cond_d
    return-void
.end method

.method public reportChangeByUid(JI)V
    .registers 5

    .line 125
    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->reportChangeByUid_enforcePermission()V

    const/4 v0, 0x1

    .line 127
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByUidInternal(JIZ)Z

    return-void
.end method

.method public resetReporting(Landroid/content/pm/ApplicationInfo;)V
    .registers 2

    .line 503
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p1}, Lcom/android/internal/compat/ChangeReporter;->resetReportedChanges(I)V

    return-void
.end method

.method public setLogChangeChecksToStatsd(Z)V
    .registers 2

    .line 382
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/compat/PlatformCompat;->mLogChangeChecksToStatsD:Ljava/lang/Boolean;

    return-void
.end method

.method public setOverrides(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V
    .registers 8

    .line 268
    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->setOverrides_enforcePermission()V

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 271
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeConfig;->enabledChanges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 272
    new-instance v3, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v3}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 274
    :cond_31
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeConfig;->disabledChanges()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 275
    new-instance v3, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v3}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    invoke-virtual {v3, v2}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v2

    .line 276
    invoke-virtual {v2}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v2

    .line 275
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 278
    :cond_5a
    iget-object p1, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    new-instance v1, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    invoke-direct {v1, v0}, Lcom/android/internal/compat/CompatibilityOverrideConfig;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v1, p2, v2}, Lcom/android/server/compat/CompatConfig;->addPackageOverrides(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V

    .line 280
    invoke-virtual {p0, p2}, Lcom/android/server/compat/PlatformCompat;->killPackage(Ljava/lang/String;)V

    return-void
.end method

.method public setOverridesForTest(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V
    .registers 8

    .line 286
    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->setOverridesForTest_enforcePermission()V

    .line 288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 289
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeConfig;->enabledChanges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 290
    new-instance v3, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v3}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 292
    :cond_31
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeConfig;->disabledChanges()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 293
    new-instance v3, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v3}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    invoke-virtual {v3, v2}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v2

    .line 294
    invoke-virtual {v2}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v2

    .line 293
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 296
    :cond_5a
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    new-instance p1, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    invoke-direct {p1, v0}, Lcom/android/internal/compat/CompatibilityOverrideConfig;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/compat/CompatConfig;->addPackageOverrides(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V

    return-void
.end method
