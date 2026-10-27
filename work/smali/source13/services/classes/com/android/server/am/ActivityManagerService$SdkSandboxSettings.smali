.class Lcom/android/server/am/ActivityManagerService$SdkSandboxSettings;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SdkSandboxSettings"
.end annotation


# static fields
.field public static final ENFORCE_BROADCAST_RECEIVER_RESTRICTIONS:Ljava/lang/String; = "enforce_broadcast_receiver_restrictions"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnforceBroadcastReceiverRestrictions:Z

.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 2329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2317
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$SdkSandboxSettings;->mLock:Ljava/lang/Object;

    .line 2330
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$SdkSandboxSettings;->mContext:Landroid/content/Context;

    .line 2331
    return-void
.end method


# virtual methods
.method isBroadcastReceiverRestrictionsEnforced()Z
    .registers 3

    .line 2352
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$SdkSandboxSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2353
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$SdkSandboxSettings;->mEnforceBroadcastReceiverRestrictions:Z

    monitor-exit v0

    return v1

    .line 2354
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 5
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 2345
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$SdkSandboxSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2346
    :try_start_3
    const-string v1, "enforce_broadcast_receiver_restrictions"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$SdkSandboxSettings;->mEnforceBroadcastReceiverRestrictions:Z

    .line 2348
    monitor-exit v0

    .line 2349
    return-void

    .line 2348
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method registerObserver()V
    .registers 5

    .line 2334
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$SdkSandboxSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2335
    :try_start_3
    const-string/jumbo v1, "sdk_sandbox"

    const-string v2, "enforce_broadcast_receiver_restrictions"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$SdkSandboxSettings;->mEnforceBroadcastReceiverRestrictions:Z

    .line 2338
    const-string/jumbo v1, "sdk_sandbox"

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$SdkSandboxSettings;->mContext:Landroid/content/Context;

    .line 2339
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 2338
    invoke-static {v1, v2, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 2340
    monitor-exit v0

    .line 2341
    return-void

    .line 2340
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method
