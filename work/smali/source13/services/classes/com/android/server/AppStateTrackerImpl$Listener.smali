.class public abstract Lcom/android/server/AppStateTrackerImpl$Listener;
.super Ljava/lang/Object;
.source "AppStateTrackerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTrackerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$monAutoRestrictedBucketFeatureFlagChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl$Listener;->onAutoRestrictedBucketFeatureFlagChanged(Lcom/android/server/AppStateTrackerImpl;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monExemptedBucketChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/AppStateTrackerImpl$Listener;->onExemptedBucketChanged(Lcom/android/server/AppStateTrackerImpl;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monForceAllAppsStandbyChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/AppStateTrackerImpl$Listener;->onForceAllAppsStandbyChanged(Lcom/android/server/AppStateTrackerImpl;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monPowerSaveExemptionListChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/AppStateTrackerImpl$Listener;->onPowerSaveExemptionListChanged(Lcom/android/server/AppStateTrackerImpl;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monPowerSaveUnexempted(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/AppStateTrackerImpl$Listener;->onPowerSaveUnexempted(Lcom/android/server/AppStateTrackerImpl;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monRunAnyAppOpsChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppStateTrackerImpl$Listener;->onRunAnyAppOpsChanged(Lcom/android/server/AppStateTrackerImpl;ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monTempPowerSaveExemptionListChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/AppStateTrackerImpl$Listener;->onTempPowerSaveExemptionListChanged(Lcom/android/server/AppStateTrackerImpl;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUidActiveStateChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl$Listener;->onUidActiveStateChanged(Lcom/android/server/AppStateTrackerImpl;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onAutoRestrictedBucketFeatureFlagChanged(Lcom/android/server/AppStateTrackerImpl;Z)V
    .registers 3
    .param p1, "sender"    # Lcom/android/server/AppStateTrackerImpl;
    .param p2, "autoRestrictedBucket"    # Z

    .line 387
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    .line 388
    if-eqz p2, :cond_8

    .line 389
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->unblockAllUnrestrictedAlarms()V

    .line 391
    :cond_8
    return-void
.end method

.method private onExemptedBucketChanged(Lcom/android/server/AppStateTrackerImpl;)V
    .registers 2
    .param p1, "sender"    # Lcom/android/server/AppStateTrackerImpl;

    .line 369
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    .line 370
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllAlarms()V

    .line 371
    return-void
.end method

.method private onForceAllAppsStandbyChanged(Lcom/android/server/AppStateTrackerImpl;)V
    .registers 2
    .param p1, "sender"    # Lcom/android/server/AppStateTrackerImpl;

    .line 377
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    .line 378
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllAlarms()V

    .line 379
    return-void
.end method

.method private onPowerSaveExemptionListChanged(Lcom/android/server/AppStateTrackerImpl;)V
    .registers 2
    .param p1, "sender"    # Lcom/android/server/AppStateTrackerImpl;

    .line 345
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    .line 346
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllAlarms()V

    .line 347
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->unblockAllUnrestrictedAlarms()V

    .line 348
    return-void
.end method

.method private onPowerSaveUnexempted(Lcom/android/server/AppStateTrackerImpl;)V
    .registers 2
    .param p1, "sender"    # Lcom/android/server/AppStateTrackerImpl;

    .line 336
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    .line 337
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllAlarms()V

    .line 338
    return-void
.end method

.method private onRunAnyAppOpsChanged(Lcom/android/server/AppStateTrackerImpl;ILjava/lang/String;)V
    .registers 8
    .param p1, "sender"    # Lcom/android/server/AppStateTrackerImpl;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 301
    invoke-virtual {p1, p2}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v0

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateJobsForUidPackage(ILjava/lang/String;Z)V

    .line 303
    invoke-virtual {p1, p2, p3}, Lcom/android/server/AppStateTrackerImpl;->areAlarmsRestricted(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 304
    invoke-virtual {p0, p2, p3}, Lcom/android/server/AppStateTrackerImpl$Listener;->unblockAlarmsForUidPackage(ILjava/lang/String;)V

    .line 307
    :cond_10
    invoke-virtual {p1, p2, p3}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z

    move-result v0

    const-string v1, "/"

    const-string v2, "Package "

    const-string v3, "AppStateTracker"

    if-nez v0, :cond_43

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " toggled into fg service restriction"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v0, 0x1

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateBackgroundRestrictedForUidPackage(ILjava/lang/String;Z)V

    goto :goto_69

    .line 312
    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " toggled out of fg service restriction"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateBackgroundRestrictedForUidPackage(ILjava/lang/String;Z)V

    .line 316
    :goto_69
    return-void
.end method

.method private onTempPowerSaveExemptionListChanged(Lcom/android/server/AppStateTrackerImpl;)V
    .registers 2
    .param p1, "sender"    # Lcom/android/server/AppStateTrackerImpl;

    .line 358
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    .line 362
    return-void
.end method

.method private onUidActiveStateChanged(Lcom/android/server/AppStateTrackerImpl;I)V
    .registers 4
    .param p1, "sender"    # Lcom/android/server/AppStateTrackerImpl;
    .param p2, "uid"    # I

    .line 322
    invoke-virtual {p1, p2}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v0

    .line 324
    .local v0, "isActive":Z
    invoke-virtual {p0, p2, v0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateJobsForUid(IZ)V

    .line 325
    invoke-virtual {p0, p2}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAlarmsForUid(I)V

    .line 327
    if-eqz v0, :cond_f

    .line 328
    invoke-virtual {p0, p2}, Lcom/android/server/AppStateTrackerImpl$Listener;->unblockAlarmsForUid(I)V

    .line 330
    :cond_f
    return-void
.end method


# virtual methods
.method public removeAlarmsForUid(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 457
    return-void
.end method

.method public unblockAlarmsForUid(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 445
    return-void
.end method

.method public unblockAlarmsForUidPackage(ILjava/lang/String;)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 451
    return-void
.end method

.method public unblockAllUnrestrictedAlarms()V
    .registers 1

    .line 439
    return-void
.end method

.method public updateAlarmsForUid(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 432
    return-void
.end method

.method public updateAllAlarms()V
    .registers 1

    .line 426
    return-void
.end method

.method public updateAllJobs()V
    .registers 1

    .line 398
    return-void
.end method

.method public updateBackgroundRestrictedForUidPackage(ILjava/lang/String;Z)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "restricted"    # Z

    .line 419
    return-void
.end method

.method public updateJobsForUid(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "isNowActive"    # Z

    .line 405
    return-void
.end method

.method public updateJobsForUidPackage(ILjava/lang/String;Z)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isNowActive"    # Z

    .line 412
    return-void
.end method
