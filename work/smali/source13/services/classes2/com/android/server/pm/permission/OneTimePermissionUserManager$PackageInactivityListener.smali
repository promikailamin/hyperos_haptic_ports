.class Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;
.super Ljava/lang/Object;
.source "OneTimePermissionUserManager.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/OneTimePermissionUserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageInactivityListener"
.end annotation


# static fields
.field private static final STATE_ACTIVE:I = 0x2

.field private static final STATE_GONE:I = 0x0

.field private static final STATE_TIMER:I = 0x1

.field private static final TIMER_INACTIVE:J = -0x1L


# instance fields
.field private final mInnerLock:Ljava/lang/Object;

.field private mIsAlarmSet:Z

.field private mIsFinished:Z

.field private final mObserver:Landroid/app/IUidObserver$Stub;

.field private final mPackageName:Ljava/lang/String;

.field private mRevokeAfterKilledDelay:J

.field private mTimeout:J

.field private mTimerStart:J

.field private final mToken:Ljava/lang/Object;

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmUid(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mUid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mcancel(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->cancel()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateUidState(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->updateUidState(I)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager;ILjava/lang/String;JJ)V
    .registers 14
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "timeout"    # J
    .param p6, "revokeAfterkilledDelay"    # J

    .line 201
    iput-object p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimerStart:J

    .line 167
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mInnerLock:Ljava/lang/Object;

    .line 168
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mToken:Ljava/lang/Object;

    .line 169
    new-instance v2, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$1;-><init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V

    iput-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mObserver:Landroid/app/IUidObserver$Stub;

    .line 202
    invoke-static {}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start tracking "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " timeout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " killedDelay="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iput p2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mUid:I

    .line 207
    iput-object p3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mPackageName:Ljava/lang/String;

    .line 208
    iput-wide p4, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimeout:J

    .line 209
    cmp-long v0, p6, v0

    if-nez v0, :cond_6d

    .line 210
    const-string/jumbo v0, "permissions"

    const-string/jumbo v1, "one_time_permissions_killed_delay_millis"

    const-wide/16 v3, 0x1388

    invoke-static {v0, v1, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_6e

    .line 213
    :cond_6d
    move-wide v0, p6

    :goto_6e
    iput-wide v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mRevokeAfterKilledDelay:J

    .line 216
    :try_start_70
    invoke-static {p1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$fgetmIActivityManager(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/app/IActivityManager;

    move-result-object p1

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_7a} :catch_7b

    .line 226
    goto :goto_8c

    .line 220
    :catch_7b
    move-exception p1

    .line 221
    .local p1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Couldn\'t check uid proc state"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mInnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_88
    invoke-direct {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->onPackageInactiveLocked()V

    .line 225
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_88 .. :try_end_8c} :catchall_90

    .line 228
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_8c
    invoke-direct {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->updateUidState()V

    .line 229
    return-void

    .line 225
    .restart local p1    # "e":Landroid/os/RemoteException;
    :catchall_90
    move-exception v1

    :try_start_91
    monitor-exit v0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw v1
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager;ILjava/lang/String;JJLcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;-><init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager;ILjava/lang/String;JJ)V

    return-void
.end method

.method private cancel()V
    .registers 5

    .line 317
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mInnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 318
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsFinished:Z

    .line 319
    invoke-direct {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->cancelAlarmLocked()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_21

    .line 321
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$fgetmIActivityManager(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mObserver:Landroid/app/IUidObserver$Stub;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15
    .catchall {:try_start_9 .. :try_end_14} :catchall_21

    .line 324
    goto :goto_1f

    .line 322
    :catch_15
    move-exception v1

    .line 323
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_16
    invoke-static {}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to unregister uid observer."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1f
    monitor-exit v0

    .line 326
    return-void

    .line 325
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private cancelAlarmLocked()V
    .registers 2

    .line 356
    iget-boolean v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    if-eqz v0, :cond_10

    .line 360
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$fgetmAlarmManager(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/app/AlarmManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    .line 363
    :cond_10
    return-void
.end method

.method private getCurrentState()I
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/app/ActivityManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mUid:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->getStateFromProcState(I)I

    move-result v0

    return v0
.end method

.method private getStateFromProcState(I)I
    .registers 3
    .param p1, "procState"    # I

    .line 252
    const/16 v0, 0x14

    if-ne p1, v0, :cond_6

    .line 253
    const/4 v0, 0x0

    return v0

    .line 255
    :cond_6
    const/4 v0, 0x4

    if-le p1, v0, :cond_b

    .line 256
    const/4 v0, 0x1

    return v0

    .line 258
    :cond_b
    const/4 v0, 0x2

    return v0
.end method

.method private onPackageInactiveLocked()V
    .registers 4

    .line 370
    iget-boolean v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsFinished:Z

    if-eqz v0, :cond_5

    .line 371
    return-void

    .line 377
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsFinished:Z

    .line 378
    invoke-direct {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->cancelAlarmLocked()V

    .line 379
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$fgetmHandler(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 388
    :try_start_19
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$fgetmIActivityManager(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mObserver:Landroid/app/IUidObserver$Stub;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_24} :catch_25

    .line 391
    goto :goto_2f

    .line 389
    :catch_25
    move-exception v0

    .line 390
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to unregister uid observer."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2f
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$fgetmLock(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 393
    :try_start_36
    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$fgetmListeners(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mUid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 394
    monitor-exit v0

    .line 395
    return-void

    .line 394
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_43

    throw v1
.end method

.method private setAlarmLocked()V
    .registers 12

    .line 333
    iget-boolean v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    if-eqz v0, :cond_5

    .line 334
    return-void

    .line 340
    :cond_5
    iget-wide v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimerStart:J

    iget-wide v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimeout:J

    add-long/2addr v0, v2

    .line 341
    .local v0, "revokeTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-lez v2, :cond_2c

    .line 342
    iget-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v2}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$fgetmAlarmManager(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/app/AlarmManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v8

    iget-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v2}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$fgetmHandler(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/os/Handler;

    move-result-object v10

    move-wide v6, v0

    move-object v9, p0

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 344
    iput-boolean v3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    goto :goto_31

    .line 346
    :cond_2c
    iput-boolean v3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    .line 347
    invoke-virtual {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->onAlarm()V

    .line 349
    :goto_31
    return-void
.end method

.method private updateUidState()V
    .registers 2

    .line 264
    invoke-direct {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->getCurrentState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->updateUidState(I)V

    .line 265
    return-void
.end method

.method private updateUidState(I)V
    .registers 8
    .param p1, "state"    # I

    .line 268
    invoke-static {}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mInnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_35
    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$fgetmHandler(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mToken:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 274
    if-nez p1, :cond_63

    .line 275
    iget-wide v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mRevokeAfterKilledDelay:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_4f

    .line 276
    invoke-direct {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->onPackageInactiveLocked()V

    .line 277
    monitor-exit v0

    return-void

    .line 280
    :cond_4f
    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$fgetmHandler(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V

    iget-object v3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mToken:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mRevokeAfterKilledDelay:J

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 296
    monitor-exit v0

    return-void

    .line 297
    :cond_63
    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    if-ne p1, v1, :cond_78

    .line 298
    iget-wide v4, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimerStart:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_80

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimerStart:J

    .line 304
    invoke-direct {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->setAlarmLocked()V

    goto :goto_80

    .line 306
    :cond_78
    const/4 v1, 0x2

    if-ne p1, v1, :cond_80

    .line 307
    iput-wide v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimerStart:J

    .line 308
    invoke-direct {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->cancelAlarmLocked()V

    .line 310
    :cond_80
    :goto_80
    monitor-exit v0

    .line 311
    return-void

    .line 310
    :catchall_82
    move-exception v1

    monitor-exit v0
    :try_end_84
    .catchall {:try_start_35 .. :try_end_84} :catchall_82

    throw v1
.end method


# virtual methods
.method synthetic lambda$onPackageInactiveLocked$1$com-android-server-pm-permission-OneTimePermissionUserManager$PackageInactivityListener()V
    .registers 4

    .line 381
    invoke-static {}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "One time session expired for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$fgetmPermissionControllerManager(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/permission/PermissionControllerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/permission/PermissionControllerManager;->notifyOneTimePermissionSessionTimeout(Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method synthetic lambda$updateUidState$0$com-android-server-pm-permission-OneTimePermissionUserManager$PackageInactivityListener()V
    .registers 3

    .line 282
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mInnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->getCurrentState()I

    move-result v1

    .line 284
    .local v1, "currentState":I
    if-nez v1, :cond_e

    .line 285
    invoke-direct {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->onPackageInactiveLocked()V

    .line 286
    monitor-exit v0

    return-void

    .line 288
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    .line 294
    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->updateUidState(I)V

    .line 295
    return-void

    .line 288
    .end local v1    # "currentState":I
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public onAlarm()V
    .registers 3

    .line 402
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mInnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 403
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    if-nez v1, :cond_9

    .line 404
    monitor-exit v0

    return-void

    .line 406
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    .line 407
    invoke-direct {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->onPackageInactiveLocked()V

    .line 408
    monitor-exit v0

    .line 409
    return-void

    .line 408
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public updateSessionParameters(JJ)V
    .registers 12
    .param p1, "timeoutMillis"    # J
    .param p3, "revokeAfterKilledDelayMillis"    # J

    .line 232
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mInnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 233
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimeout:J

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimeout:J

    .line 234
    iget-wide v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mRevokeAfterKilledDelay:J

    .line 235
    const-wide/16 v3, -0x1

    cmp-long v3, p3, v3

    if-nez v3, :cond_20

    .line 236
    const-string/jumbo v3, "permissions"

    const-string/jumbo v4, "one_time_permissions_killed_delay_millis"

    const-wide/16 v5, 0x1388

    invoke-static {v3, v4, v5, v6}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    goto :goto_21

    .line 239
    :cond_20
    move-wide v3, p3

    .line 234
    :goto_21
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mRevokeAfterKilledDelay:J

    .line 240
    invoke-static {}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated params for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". timeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimeout:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " killedDelay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mRevokeAfterKilledDelay:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-direct {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->updateUidState()V

    .line 244
    monitor-exit v0

    .line 245
    return-void

    .line 244
    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_60

    throw v1
.end method
