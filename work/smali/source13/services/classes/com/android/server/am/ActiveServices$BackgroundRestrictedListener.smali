.class Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;
.super Ljava/lang/Object;
.source "ActiveServices.java"

# interfaces
.implements Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackgroundRestrictedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActiveServices;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/ActiveServices;

    .line 395
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateBackgroundRestrictedForUidPackage(ILjava/lang/String;Z)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "restricted"    # Z

    .line 399
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 400
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-static {v1, p1, p2}, Lcom/android/server/am/ActiveServices;->-$$Nest$misForegroundServiceAllowedInBackgroundRestricted(Lcom/android/server/am/ActiveServices;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 401
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActiveServices;->stopAllForegroundServicesLocked(ILjava/lang/String;)V

    .line 403
    :cond_15
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ProcessList;->updateBackgroundRestrictedForUidPackageLocked(ILjava/lang/String;Z)V

    .line 405
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_23

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 406
    return-void

    .line 405
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
