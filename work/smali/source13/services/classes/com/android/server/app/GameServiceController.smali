.class final Lcom/android/server/app/GameServiceController;
.super Ljava/lang/Object;
.source "GameServiceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/app/GameServiceController$PackageChangedBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GameServiceController"


# instance fields
.field private volatile mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

.field private volatile mActiveGameServiceProviderPackage:Ljava/lang/String;

.field private final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field private final mContext:Landroid/content/Context;

.field private volatile mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

.field private mGameServicePackageChangedReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mGameServiceProviderInstance:Lcom/android/server/app/GameServiceProviderInstance;

.field private final mGameServiceProviderInstanceFactory:Lcom/android/server/app/GameServiceProviderInstanceFactory;

.field private volatile mGameServiceProviderOverride:Ljava/lang/String;

.field private final mGameServiceProviderSelector:Lcom/android/server/app/GameServiceProviderSelector;

.field private volatile mHasBootCompleted:Z

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$a3O72hiYpbFn47wdnz-HC0iXPMA(Lcom/android/server/app/GameServiceController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/app/GameServiceController;->evaluateActiveGameServiceProvider()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBackgroundExecutor(Lcom/android/server/app/GameServiceController;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/app/GameServiceController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mevaluateActiveGameServiceProvider(Lcom/android/server/app/GameServiceController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/app/GameServiceController;->evaluateActiveGameServiceProvider()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/server/app/GameServiceProviderSelector;Lcom/android/server/app/GameServiceProviderInstanceFactory;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backgroundExecutor"    # Ljava/util/concurrent/Executor;
    .param p3, "gameServiceProviderSelector"    # Lcom/android/server/app/GameServiceProviderSelector;
    .param p4, "gameServiceProviderInstanceFactory"    # Lcom/android/server/app/GameServiceProviderInstanceFactory;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameServiceController;->mLock:Ljava/lang/Object;

    .line 73
    iput-object p1, p0, Lcom/android/server/app/GameServiceController;->mContext:Landroid/content/Context;

    .line 74
    iput-object p4, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstanceFactory:Lcom/android/server/app/GameServiceProviderInstanceFactory;

    .line 75
    iput-object p2, p0, Lcom/android/server/app/GameServiceController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 76
    iput-object p3, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderSelector:Lcom/android/server/app/GameServiceProviderSelector;

    .line 77
    return-void
.end method

.method private evaluateActiveGameServiceProvider()V
    .registers 10

    .line 150
    iget-boolean v0, p0, Lcom/android/server/app/GameServiceController;->mHasBootCompleted:Z

    if-nez v0, :cond_5

    .line 151
    return-void

    .line 154
    :cond_5
    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_8
    iget-object v1, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderSelector:Lcom/android/server/app/GameServiceProviderSelector;

    iget-object v2, p0, Lcom/android/server/app/GameServiceController;->mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

    iget-object v3, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderOverride:Ljava/lang/String;

    .line 156
    invoke-interface {v1, v2, v3}, Lcom/android/server/app/GameServiceProviderSelector;->get(Lcom/android/server/SystemService$TargetUser;Ljava/lang/String;)Lcom/android/server/app/GameServiceConfiguration;

    move-result-object v1

    .line 159
    .local v1, "selectedGameServiceConfiguration":Lcom/android/server/app/GameServiceConfiguration;
    const/4 v2, 0x0

    if-nez v1, :cond_17

    move-object v3, v2

    goto :goto_1b

    .line 160
    :cond_17
    invoke-virtual {v1}, Lcom/android/server/app/GameServiceConfiguration;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_1b
    nop

    .line 162
    .local v3, "gameServicePackage":Ljava/lang/String;
    if-nez v1, :cond_20

    move-object v4, v2

    goto :goto_24

    .line 164
    :cond_20
    invoke-virtual {v1}, Lcom/android/server/app/GameServiceConfiguration;->getGameServiceComponentConfiguration()Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    move-result-object v4

    :goto_24
    nop

    .line 166
    .local v4, "gameServiceComponentConfiguration":Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;
    invoke-direct {p0, v3}, Lcom/android/server/app/GameServiceController;->evaluateGameServiceProviderPackageChangedListenerLocked(Ljava/lang/String;)V

    .line 168
    iget-object v5, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    .line 169
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 171
    .local v5, "didActiveGameServiceProviderChange":Z
    if-nez v5, :cond_34

    .line 172
    monitor-exit v0

    return-void

    .line 175
    :cond_34
    iget-object v6, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstance:Lcom/android/server/app/GameServiceProviderInstance;

    if-eqz v6, :cond_59

    .line 176
    const-string v6, "GameServiceController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Stopping Game Service provider: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v6, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstance:Lcom/android/server/app/GameServiceProviderInstance;

    invoke-interface {v6}, Lcom/android/server/app/GameServiceProviderInstance;->stop()V

    .line 179
    iput-object v2, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstance:Lcom/android/server/app/GameServiceProviderInstance;

    .line 182
    :cond_59
    iput-object v4, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    .line 183
    iget-object v2, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    if-nez v2, :cond_61

    .line 184
    monitor-exit v0

    return-void

    .line 187
    :cond_61
    const-string v2, "GameServiceController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting Game Service provider: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v2, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstanceFactory:Lcom/android/server/app/GameServiceProviderInstanceFactory;

    iget-object v6, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    .line 190
    invoke-interface {v2, v6}, Lcom/android/server/app/GameServiceProviderInstanceFactory;->create(Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;)Lcom/android/server/app/GameServiceProviderInstance;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstance:Lcom/android/server/app/GameServiceProviderInstance;

    .line 192
    iget-object v2, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstance:Lcom/android/server/app/GameServiceProviderInstance;

    invoke-interface {v2}, Lcom/android/server/app/GameServiceProviderInstance;->start()V

    .line 193
    .end local v1    # "selectedGameServiceConfiguration":Lcom/android/server/app/GameServiceConfiguration;
    .end local v3    # "gameServicePackage":Ljava/lang/String;
    .end local v4    # "gameServiceComponentConfiguration":Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;
    .end local v5    # "didActiveGameServiceProviderChange":Z
    monitor-exit v0

    .line 194
    return-void

    .line 193
    :catchall_8c
    move-exception v1

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_8 .. :try_end_8e} :catchall_8c

    throw v1
.end method

.method private evaluateGameServiceProviderPackageChangedListenerLocked(Ljava/lang/String;)V
    .registers 5
    .param p1, "gameServicePackage"    # Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceProviderPackage:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 200
    return-void

    .line 203
    :cond_9
    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mGameServicePackageChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_15

    .line 204
    iget-object v1, p0, Lcom/android/server/app/GameServiceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/app/GameServiceController;->mGameServicePackageChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 208
    :cond_15
    iput-object p1, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceProviderPackage:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceProviderPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 211
    return-void

    .line 214
    :cond_20
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 215
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 219
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 220
    new-instance v1, Lcom/android/server/app/GameServiceController$PackageChangedBroadcastReceiver;

    invoke-direct {v1, p0, p1}, Lcom/android/server/app/GameServiceController$PackageChangedBroadcastReceiver;-><init>(Lcom/android/server/app/GameServiceController;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/app/GameServiceController;->mGameServicePackageChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 222
    iget-object v2, p0, Lcom/android/server/app/GameServiceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 225
    return-void
.end method

.method private setCurrentForegroundUserAndEvaluateProvider(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 138
    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

    .line 139
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 140
    .local v0, "hasUserChanged":Z
    if-nez v0, :cond_b

    .line 141
    return-void

    .line 143
    :cond_b
    iput-object p1, p0, Lcom/android/server/app/GameServiceController;->mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

    .line 145
    iget-object v1, p0, Lcom/android/server/app/GameServiceController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceController;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 146
    return-void
.end method


# virtual methods
.method notifyNewForegroundUser(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/app/GameServiceController;->setCurrentForegroundUserAndEvaluateProvider(Lcom/android/server/SystemService$TargetUser;)V

    .line 98
    return-void
.end method

.method notifyUserStarted(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 89
    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

    if-eqz v0, :cond_5

    .line 90
    return-void

    .line 93
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/app/GameServiceController;->setCurrentForegroundUserAndEvaluateProvider(Lcom/android/server/SystemService$TargetUser;)V

    .line 94
    return-void
.end method

.method notifyUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 116
    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

    .line 118
    invoke-virtual {v0}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 119
    .local v0, "isSameAsForegroundUser":Z
    :goto_13
    if-nez v0, :cond_16

    .line 120
    return-void

    .line 123
    :cond_16
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/app/GameServiceController;->setCurrentForegroundUserAndEvaluateProvider(Lcom/android/server/SystemService$TargetUser;)V

    .line 124
    return-void
.end method

.method notifyUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 101
    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

    .line 103
    invoke-virtual {v0}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 104
    .local v0, "isSameAsForegroundUser":Z
    :goto_13
    if-nez v0, :cond_16

    .line 105
    return-void

    .line 112
    :cond_16
    iget-object v1, p0, Lcom/android/server/app/GameServiceController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceController;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method onBootComplete()V
    .registers 3

    .line 80
    iget-boolean v0, p0, Lcom/android/server/app/GameServiceController;->mHasBootCompleted:Z

    if-eqz v0, :cond_5

    .line 81
    return-void

    .line 83
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/app/GameServiceController;->mHasBootCompleted:Z

    .line 85
    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method setGameServiceProvider(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderOverride:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 128
    .local v0, "hasPackageChanged":Z
    if-nez v0, :cond_b

    .line 129
    return-void

    .line 131
    :cond_b
    iput-object p1, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderOverride:Ljava/lang/String;

    .line 133
    iget-object v1, p0, Lcom/android/server/app/GameServiceController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceController;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method
