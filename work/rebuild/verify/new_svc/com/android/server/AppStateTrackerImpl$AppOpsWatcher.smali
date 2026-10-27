.class public final Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "AppStateTrackerImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/AppStateTrackerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/AppStateTrackerImpl;)V
    .registers 2

    .line 755
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/AppStateTrackerImpl;Lcom/android/server/AppStateTrackerImpl-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    return-void
.end method


# virtual methods
.method public opChanged(IILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 p1, 0x0

    .line 761
    :try_start_1
    iget-object p4, p0, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object p4, p4, Lcom/android/server/AppStateTrackerImpl;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v0, 0x46

    invoke-interface {p4, v0, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result p4
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_e

    if-eqz p4, :cond_e

    const/4 p1, 0x1

    :catch_e
    :cond_e
    if-eqz p1, :cond_15

    .line 767
    const-string p4, "battery.value_app_background_restricted"

    invoke-static {p4, p2}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 769
    :cond_15
    iget-object p4, p0, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p4}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmLock(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object p4

    monitor-enter p4

    .line 770
    :try_start_1c
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v0, p2, p3, p1}, Lcom/android/server/AppStateTrackerImpl;->updateForcedAppStandbyUidPackageLocked(ILjava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 771
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmHandler(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyRunAnyAppOpsChanged(ILjava/lang/String;)V

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_32

    .line 773
    :cond_30
    :goto_30
    monitor-exit p4

    return-void

    :goto_32
    monitor-exit p4
    :try_end_33
    .catchall {:try_start_1c .. :try_end_33} :catchall_2e

    throw p0
.end method
