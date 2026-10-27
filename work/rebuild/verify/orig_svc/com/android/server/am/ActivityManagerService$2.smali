.class public Lcom/android/server/am/ActivityManagerService$2;
.super Lcom/android/server/wm/ActivityMetricsLaunchObserver;
.source "ActivityManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .line 1072
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityLaunchCancelled(J)V
    .registers 3

    .line 1102
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppStartInfoTracker;->onActivityLaunchCancelled(J)V

    return-void
.end method

.method public onActivityLaunchFinished(JLandroid/content/ComponentName;JI)V
    .registers 14

    .line 1108
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;

    move-result-object v0

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppStartInfoTracker;->onActivityLaunchFinished(JLandroid/content/ComponentName;JI)V

    return-void
.end method

.method public onActivityLaunched(JLandroid/content/ComponentName;ILjava/lang/String;I)V
    .registers 9

    .line 1090
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler;->onActivityLaunched()V

    .line 1091
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 1094
    :try_start_d
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p5, p6}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object p6

    .line 1095
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;

    move-result-object p0

    int-to-long p4, p4

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/AppStartInfoTracker;->onActivityLaunched(JLandroid/content/ComponentName;JLcom/android/server/am/ProcessRecord;)V

    .line 1097
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_24

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_24
    move-exception v0

    move-object p0, v0

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_24

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onIntentFailed(J)V
    .registers 3

    .line 1084
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppStartInfoTracker;->onActivityIntentFailed(J)V

    return-void
.end method

.method public onIntentStarted(Landroid/content/Intent;J)V
    .registers 5

    .line 1076
    monitor-enter p0

    .line 1077
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;

    move-result-object v0

    .line 1078
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/AppStartInfoTracker;->onActivityIntentStarted(Landroid/content/Intent;J)V

    .line 1079
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public onReportFullyDrawn(JJ)V
    .registers 6

    .line 1114
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;

    move-result-object v0

    .line 1115
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/AppStartInfoTracker;->onActivityReportFullyDrawn(JJ)Landroid/app/ApplicationStartInfo;

    move-result-object p1

    .line 1117
    invoke-static {}, Landroid/internal/os/profiling/Flags;->systemTriggeredProfilingNew()Z

    move-result p2

    if-eqz p2, :cond_2e

    if-eqz p1, :cond_2e

    .line 1119
    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getStartType()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2e

    .line 1120
    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2e

    .line 1121
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1122
    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getRealUid()I

    move-result p2

    .line 1123
    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1121
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ActivityManagerService;->sendProfilingTrigger(ILjava/lang/String;I)V

    :cond_2e
    return-void
.end method
