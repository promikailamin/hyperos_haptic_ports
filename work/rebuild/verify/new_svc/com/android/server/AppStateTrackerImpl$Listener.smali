.class public abstract Lcom/android/server/AppStateTrackerImpl$Listener;
.super Ljava/lang/Object;
.source "AppStateTrackerImpl.java"


# direct methods
.method public static bridge synthetic -$$Nest$monAutoRestrictedBucketFeatureFlagChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;Z)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl$Listener;->onAutoRestrictedBucketFeatureFlagChanged(Lcom/android/server/AppStateTrackerImpl;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monExemptedBucketChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl$Listener;->onExemptedBucketChanged(Lcom/android/server/AppStateTrackerImpl;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monForceAllAppsStandbyChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl$Listener;->onForceAllAppsStandbyChanged(Lcom/android/server/AppStateTrackerImpl;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPowerSaveExemptionListChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl$Listener;->onPowerSaveExemptionListChanged(Lcom/android/server/AppStateTrackerImpl;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPowerSaveUnexempted(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl$Listener;->onPowerSaveUnexempted(Lcom/android/server/AppStateTrackerImpl;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monRunAnyAppOpsChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;ILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/AppStateTrackerImpl$Listener;->onRunAnyAppOpsChanged(Lcom/android/server/AppStateTrackerImpl;ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monTempPowerSaveExemptionListChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl$Listener;->onTempPowerSaveExemptionListChanged(Lcom/android/server/AppStateTrackerImpl;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUidActiveStateChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl$Listener;->onUidActiveStateChanged(Lcom/android/server/AppStateTrackerImpl;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleUidCachedChanged(IZ)V
    .registers 3

    .line 0
    return-void
.end method

.method public final onAutoRestrictedBucketFeatureFlagChanged(Lcom/android/server/AppStateTrackerImpl;Z)V
    .registers 3

    .line 366
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    if-eqz p2, :cond_8

    .line 368
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->unblockAllUnrestrictedAlarms()V

    :cond_8
    return-void
.end method

.method public final onExemptedBucketChanged(Lcom/android/server/AppStateTrackerImpl;)V
    .registers 2

    .line 348
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    .line 349
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllAlarms()V

    return-void
.end method

.method public final onForceAllAppsStandbyChanged(Lcom/android/server/AppStateTrackerImpl;)V
    .registers 2

    .line 356
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    .line 357
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllAlarms()V

    return-void
.end method

.method public final onPowerSaveExemptionListChanged(Lcom/android/server/AppStateTrackerImpl;)V
    .registers 2

    .line 324
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    .line 325
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllAlarms()V

    .line 326
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->unblockAllUnrestrictedAlarms()V

    return-void
.end method

.method public final onPowerSaveUnexempted(Lcom/android/server/AppStateTrackerImpl;)V
    .registers 2

    .line 315
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    .line 316
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllAlarms()V

    return-void
.end method

.method public final onRunAnyAppOpsChanged(Lcom/android/server/AppStateTrackerImpl;ILjava/lang/String;)V
    .registers 7

    .line 280
    invoke-virtual {p1, p2}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v0

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateJobsForUidPackage(ILjava/lang/String;Z)V

    .line 282
    invoke-virtual {p1, p2, p3}, Lcom/android/server/AppStateTrackerImpl;->areAlarmsRestricted(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 283
    invoke-virtual {p0, p2, p3}, Lcom/android/server/AppStateTrackerImpl$Listener;->unblockAlarmsForUidPackage(ILjava/lang/String;)V

    .line 286
    :cond_10
    invoke-virtual {p1, p2, p3}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z

    move-result p1

    const-string v0, "/"

    const-string v1, "Package "

    const-string v2, "AppStateTracker"

    if-nez p1, :cond_3e

    .line 287
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " toggled into fg service restriction"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 289
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateBackgroundRestrictedForUidPackage(ILjava/lang/String;Z)V

    return-void

    .line 291
    :cond_3e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " toggled out of fg service restriction"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 293
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateBackgroundRestrictedForUidPackage(ILjava/lang/String;Z)V

    return-void
.end method

.method public final onTempPowerSaveExemptionListChanged(Lcom/android/server/AppStateTrackerImpl;)V
    .registers 2

    .line 337
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    return-void
.end method

.method public final onUidActiveStateChanged(Lcom/android/server/AppStateTrackerImpl;I)V
    .registers 3

    .line 301
    invoke-virtual {p1, p2}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result p1

    .line 303
    invoke-virtual {p0, p2, p1}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateJobsForUid(IZ)V

    .line 304
    invoke-virtual {p0, p2}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAlarmsForUid(I)V

    if-eqz p1, :cond_f

    .line 307
    invoke-virtual {p0, p2}, Lcom/android/server/AppStateTrackerImpl$Listener;->unblockAlarmsForUid(I)V

    :cond_f
    return-void
.end method

.method public removeAlarmsForUid(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public unblockAlarmsForUid(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public unblockAlarmsForUidPackage(ILjava/lang/String;)V
    .registers 3

    .line 0
    return-void
.end method

.method public unblockAllUnrestrictedAlarms()V
    .registers 1

    .line 0
    return-void
.end method

.method public updateAlarmsForUid(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public updateAllAlarms()V
    .registers 1

    .line 0
    return-void
.end method

.method public updateAllJobs()V
    .registers 1

    .line 0
    return-void
.end method

.method public updateBackgroundRestrictedForUidPackage(ILjava/lang/String;Z)V
    .registers 4

    .line 0
    return-void
.end method

.method public updateJobsForUid(IZ)V
    .registers 3

    .line 0
    return-void
.end method

.method public updateJobsForUidPackage(ILjava/lang/String;Z)V
    .registers 4

    .line 0
    return-void
.end method
