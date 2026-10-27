.class final Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "AppStateTrackerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTrackerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppOpsWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppStateTrackerImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/AppStateTrackerImpl;)V
    .registers 2

    .line 776
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AppStateTrackerImpl;Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    return-void
.end method


# virtual methods
.method public opChanged(IILjava/lang/String;)V
    .registers 7
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 779
    const/4 v0, 0x0

    .line 781
    .local v0, "restricted":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v1, v1, Lcom/android/server/AppStateTrackerImpl;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v2, 0x46

    invoke-interface {v1, v2, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_12

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    move v0, v1

    .line 785
    goto :goto_13

    .line 783
    :catch_12
    move-exception v1

    .line 786
    :goto_13
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmLock(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 787
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v2, p2, p3, v0}, Lcom/android/server/AppStateTrackerImpl;->updateForcedAppStandbyUidPackageLocked(ILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 788
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v2}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmHandler(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyRunAnyAppOpsChanged(ILjava/lang/String;)V

    .line 790
    :cond_2b
    monitor-exit v1

    .line 791
    return-void

    .line 790
    :catchall_2d
    move-exception v2

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_1a .. :try_end_2f} :catchall_2d

    throw v2
.end method
