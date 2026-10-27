.class public Lcom/android/server/am/ProcessList$ProcessListSettingsListener;
.super Ljava/lang/Object;
.source "ProcessList.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public mSdkSandboxApplyRestrictionsAudit:Z

.field public mSdkSandboxApplyRestrictionsNext:Z


# direct methods
.method public static bridge synthetic -$$Nest$mregisterObserver(Lcom/android/server/am/ProcessList$ProcessListSettingsListener;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->registerObserver()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mLock:Ljava/lang/Object;

    .line 603
    const-string v0, "adservices"

    const-string v1, "apply_sdk_sandbox_audit_restrictions"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mSdkSandboxApplyRestrictionsAudit:Z

    .line 608
    const-string v1, "apply_sdk_sandbox_next_restrictions"

    .line 610
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mSdkSandboxApplyRestrictionsNext:Z

    .line 616
    iput-object p1, p0, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public applySdkSandboxRestrictionsAudit()Z
    .registers 2

    .line 630
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 631
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mSdkSandboxApplyRestrictionsAudit:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 632
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public applySdkSandboxRestrictionsNext()Z
    .registers 2

    .line 636
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 637
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mSdkSandboxApplyRestrictionsNext:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 638
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 8

    .line 643
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 644
    :try_start_3
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1a

    goto :goto_b

    .line 649
    :cond_1a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const v4, -0x1b6d945b

    const/4 v5, 0x0

    if-eq v3, v4, :cond_3d

    const v4, 0x503e8299

    if-eq v3, v4, :cond_2a

    goto :goto_b

    :cond_2a
    const-string v3, "apply_sdk_sandbox_audit_restrictions"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 651
    const-string v2, "apply_sdk_sandbox_audit_restrictions"

    .line 652
    invoke-virtual {p1, v2, v5}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mSdkSandboxApplyRestrictionsAudit:Z

    goto :goto_b

    :catchall_3b
    move-exception p0

    goto :goto_50

    .line 649
    :cond_3d
    const-string v3, "apply_sdk_sandbox_next_restrictions"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 657
    const-string v2, "apply_sdk_sandbox_next_restrictions"

    .line 658
    invoke-virtual {p1, v2, v5}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mSdkSandboxApplyRestrictionsNext:Z

    goto :goto_b

    .line 665
    :cond_4e
    monitor-exit v0

    return-void

    :goto_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_3b

    throw p0
.end method

.method public final registerObserver()V
    .registers 3

    .line 620
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mContext:Landroid/content/Context;

    .line 621
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 620
    const-string v1, "adservices"

    invoke-static {v1, v0, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public unregisterObserver()V
    .registers 1

    .line 626
    invoke-static {p0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method
