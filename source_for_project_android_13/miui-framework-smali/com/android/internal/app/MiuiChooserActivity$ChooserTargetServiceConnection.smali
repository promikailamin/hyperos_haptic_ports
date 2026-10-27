.class Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;
.super Ljava/lang/Object;
.source "MiuiChooserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MiuiChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChooserTargetServiceConnection"
.end annotation


# instance fields
.field private blacklist mChooserActivity:Lcom/android/internal/app/MiuiChooserActivity;

.field private final blacklist mChooserTargetResult:Landroid/service/chooser/IChooserTargetResult;

.field private blacklist mConnectedComponent:Landroid/content/ComponentName;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChooserActivity(Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;)Lcom/android/internal/app/MiuiChooserActivity;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/MiuiChooserActivity;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectedComponent(Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->mConnectedComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOriginalTarget(Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;)Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserHandle(Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;)Landroid/os/UserHandle;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/app/MiuiChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/os/UserHandle;)V
    .registers 5
    .param p1, "chooserActivity"    # Lcom/android/internal/app/MiuiChooserActivity;
    .param p2, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 4313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4285
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->mLock:Ljava/lang/Object;

    .line 4287
    new-instance v0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection$1;-><init>(Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;)V

    iput-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->mChooserTargetResult:Landroid/service/chooser/IChooserTargetResult;

    .line 4314
    iput-object p1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/MiuiChooserActivity;

    .line 4315
    iput-object p2, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 4316
    iput-object p3, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->mUserHandle:Landroid/os/UserHandle;

    .line 4317
    return-void
.end method


# virtual methods
.method public blacklist destroy()V
    .registers 3

    .line 4365
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4366
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/MiuiChooserActivity;

    .line 4367
    iput-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 4368
    monitor-exit v0

    .line 4369
    return-void

    .line 4368
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 4381
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 4321
    const-string v0, "MiuiChooserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4322
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4323
    :try_start_1b
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/MiuiChooserActivity;

    if-nez v1, :cond_28

    .line 4324
    const-string v1, "MiuiChooserActivity"

    const-string v2, "destroyed ChooserTargetServiceConnection got onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4325
    monitor-exit v0

    return-void

    .line 4328
    :cond_28
    invoke-static {p2}, Landroid/service/chooser/IChooserTargetService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/chooser/IChooserTargetService;

    move-result-object v1
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_72

    .line 4330
    .local v1, "icts":Landroid/service/chooser/IChooserTargetService;
    :try_start_2c
    iget-object v2, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 4331
    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    iget-object v4, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->mChooserTargetResult:Landroid/service/chooser/IChooserTargetResult;

    .line 4330
    invoke-interface {v1, v2, v3, v4}, Landroid/service/chooser/IChooserTargetService;->getChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/service/chooser/IChooserTargetResult;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_3f} :catch_40
    .catchall {:try_start_2c .. :try_end_3f} :catchall_72

    .line 4337
    goto :goto_70

    .line 4332
    :catch_40
    move-exception v2

    .line 4333
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_41
    const-string v3, "MiuiChooserActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Querying ChooserTargetService "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4334
    iget-object v3, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-virtual {v3, p0}, Lcom/android/internal/app/MiuiChooserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 4335
    iget-object v3, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/MiuiChooserActivity;->-$$Nest$fgetmServiceConnections(Lcom/android/internal/app/MiuiChooserActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4336
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->destroy()V

    .line 4338
    .end local v1    # "icts":Landroid/service/chooser/IChooserTargetService;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_70
    monitor-exit v0

    .line 4339
    return-void

    .line 4338
    :catchall_72
    move-exception v1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_41 .. :try_end_74} :catchall_72

    throw v1
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 4343
    const-string v0, "MiuiChooserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4344
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4345
    :try_start_1b
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/MiuiChooserActivity;

    if-nez v1, :cond_28

    .line 4346
    const-string v1, "MiuiChooserActivity"

    const-string v2, "destroyed ChooserTargetServiceConnection got onServiceDisconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4348
    monitor-exit v0

    return-void

    .line 4351
    :cond_28
    invoke-virtual {v1, p0}, Lcom/android/internal/app/MiuiChooserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 4352
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/MiuiChooserActivity;->-$$Nest$fgetmServiceConnections(Lcom/android/internal/app/MiuiChooserActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4353
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/MiuiChooserActivity;->-$$Nest$fgetmServiceConnections(Lcom/android/internal/app/MiuiChooserActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 4355
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/MiuiChooserActivity;->-$$Nest$fgetmChooserHandler(Lcom/android/internal/app/MiuiChooserActivity;)Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->removeMessages(I)V

    .line 4357
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/MiuiChooserActivity;->sendVoiceChoicesIfNeeded()V

    .line 4359
    :cond_50
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->mConnectedComponent:Landroid/content/ComponentName;

    .line 4360
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->destroy()V

    .line 4361
    monitor-exit v0

    .line 4362
    return-void

    .line 4361
    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_1b .. :try_end_5a} :catchall_58

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 4373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChooserTargetServiceConnection{service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->mConnectedComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4375
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v1, :cond_26

    .line 4376
    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_28

    .line 4377
    :cond_26
    const-string v1, "<connection destroyed>"

    :goto_28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4373
    return-object v0
.end method
