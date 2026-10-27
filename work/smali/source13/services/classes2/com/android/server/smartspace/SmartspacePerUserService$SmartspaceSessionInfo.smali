.class final Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;
.super Ljava/lang/Object;
.source "SmartspacePerUserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartspace/SmartspacePerUserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SmartspaceSessionInfo"
.end annotation


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/smartspace/ISmartspaceCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

.field private final mSmartspaceConfig:Landroid/app/smartspace/SmartspaceConfig;

.field final mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceConfig;Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V
    .registers 6
    .param p1, "id"    # Landroid/app/smartspace/SmartspaceSessionId;
    .param p2, "context"    # Landroid/app/smartspace/SmartspaceConfig;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "deathRecipient"    # Landroid/os/IBinder$DeathRecipient;

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 347
    iput-object p1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

    .line 348
    iput-object p2, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mSmartspaceConfig:Landroid/app/smartspace/SmartspaceConfig;

    .line 349
    iput-object p3, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mToken:Landroid/os/IBinder;

    .line 350
    iput-object p4, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 351
    return-void
.end method


# virtual methods
.method addCallbackLocked(Landroid/app/smartspace/ISmartspaceCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/app/smartspace/ISmartspaceCallback;

    .line 358
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 359
    return-void
.end method

.method destroy()V
    .registers 4

    .line 387
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_a

    .line 388
    iget-object v1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 390
    :cond_a
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 391
    return-void
.end method

.method synthetic lambda$resurrectSessionLocked$0$com-android-server-smartspace-SmartspacePerUserService$SmartspaceSessionInfo(Lcom/android/server/smartspace/SmartspacePerUserService;Landroid/app/smartspace/ISmartspaceCallback;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/smartspace/SmartspacePerUserService;
    .param p2, "callback"    # Landroid/app/smartspace/ISmartspaceCallback;

    .line 402
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

    invoke-virtual {p1, v0, p2}, Lcom/android/server/smartspace/SmartspacePerUserService;->registerSmartspaceUpdatesLocked(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    return-void
.end method

.method linkToDeath()Z
    .registers 4

    .line 371
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_b

    .line 378
    nop

    .line 379
    const/4 v0, 0x1

    return v0

    .line 372
    :catch_b
    move-exception v1

    .line 377
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method removeCallbackLocked(Landroid/app/smartspace/ISmartspaceCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/app/smartspace/ISmartspaceCallback;

    .line 366
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 367
    return-void
.end method

.method resurrectSessionLocked(Lcom/android/server/smartspace/SmartspacePerUserService;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/smartspace/SmartspacePerUserService;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 394
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    .line 400
    .local v0, "callbackCount":I
    iget-object v1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mSmartspaceConfig:Landroid/app/smartspace/SmartspaceConfig;

    iget-object v2, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

    invoke-virtual {p1, v1, v2, p2}, Lcom/android/server/smartspace/SmartspacePerUserService;->onCreateSmartspaceSessionLocked(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/os/IBinder;)V

    .line 401
    iget-object v1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v2, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;Lcom/android/server/smartspace/SmartspacePerUserService;)V

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 403
    return-void
.end method
