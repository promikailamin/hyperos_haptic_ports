.class final Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;
.super Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppStandbyTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 2

    .line 5273
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    return-void
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z
    .param p4, "bucket"    # I
    .param p5, "reason"    # I

    .line 5281
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5282
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5283
    return-void
.end method

.method public triggerTemporaryQuotaBump(Ljava/lang/String;I)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5288
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5289
    :try_start_5
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v1, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->TEMPORARY_QUOTA_BUMP:I

    .line 5290
    .local v1, "quotaBump":I
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_51

    .line 5291
    if-gtz v1, :cond_f

    .line 5292
    return-void

    .line 5294
    :cond_f
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmPackageManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 5295
    .local v0, "uid":I
    if-ltz v0, :cond_50

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_50

    .line 5301
    :cond_24
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v2, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 5302
    :try_start_29
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v3}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v3

    .line 5303
    invoke-virtual {v3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v6

    .line 5302
    move-object v3, p1

    move v4, p2

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->replenishQuota(Ljava/lang/String;IIJ)V

    .line 5304
    monitor-exit v8
    :try_end_3e
    .catchall {:try_start_29 .. :try_end_3e} :catchall_4d

    .line 5305
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/16 v3, 0xe

    const/4 v4, -0x1

    invoke-virtual {v2, v3, p2, v4, p1}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 5306
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 5307
    return-void

    .line 5304
    :catchall_4d
    move-exception v2

    :try_start_4e
    monitor-exit v8
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v2

    .line 5296
    :cond_50
    :goto_50
    return-void

    .line 5290
    .end local v0    # "uid":I
    .end local v1    # "quotaBump":I
    :catchall_51
    move-exception v1

    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v1
.end method
