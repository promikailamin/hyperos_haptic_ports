.class public Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;
.super Ljava/lang/Object;
.source "ActiveServices.java"

# interfaces
.implements Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActiveServices;)V
    .registers 2

    .line 588
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateBackgroundRestrictedForUidPackage(ILjava/lang/String;Z)V
    .registers 6

    .line 592
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 593
    :try_start_8
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ProcessList;->updateBackgroundRestrictedForUidPackageLocked(ILjava/lang/String;Z)V

    .line 595
    iget-object p3, p0, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-static {p3, p1, p2}, Lcom/android/server/am/ActiveServices;->-$$Nest$misForegroundServiceAllowedInBackgroundRestricted(Lcom/android/server/am/ActiveServices;ILjava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_29

    iget-object p3, p0, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;->this$0:Lcom/android/server/am/ActiveServices;

    .line 596
    invoke-static {p3, p1}, Lcom/android/server/am/ActiveServices;->-$$Nest$misTempAllowedByAlarmClock(Lcom/android/server/am/ActiveServices;I)Z

    move-result p3

    if-nez p3, :cond_29

    .line 597
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActiveServices;->stopAllForegroundServicesLocked(ILjava/lang/String;)V

    goto :goto_29

    :catchall_27
    move-exception p0

    goto :goto_2e

    .line 599
    :cond_29
    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_27

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_2e
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_27

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
