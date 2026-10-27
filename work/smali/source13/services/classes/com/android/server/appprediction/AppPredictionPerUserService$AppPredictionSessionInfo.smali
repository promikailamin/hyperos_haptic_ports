.class final Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;
.super Ljava/lang/Object;
.source "AppPredictionPerUserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appprediction/AppPredictionPerUserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AppPredictionSessionInfo"
.end annotation


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/prediction/IPredictionCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mPredictionContext:Landroid/app/prediction/AppPredictionContext;

.field private final mSessionId:Landroid/app/prediction/AppPredictionSessionId;

.field final mToken:Landroid/os/IBinder;

.field private final mUsesPeopleService:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmUsesPeopleService(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mUsesPeopleService:Z

    return p0
.end method

.method constructor <init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppPredictionContext;ZLandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V
    .registers 7
    .param p1, "id"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "predictionContext"    # Landroid/app/prediction/AppPredictionContext;
    .param p3, "usesPeopleService"    # Z
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "deathRecipient"    # Landroid/os/IBinder$DeathRecipient;

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 412
    iput-object p1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    .line 413
    iput-object p2, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mPredictionContext:Landroid/app/prediction/AppPredictionContext;

    .line 414
    iput-boolean p3, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mUsesPeopleService:Z

    .line 415
    iput-object p4, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mToken:Landroid/os/IBinder;

    .line 416
    iput-object p5, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 417
    return-void
.end method


# virtual methods
.method addCallbackLocked(Landroid/app/prediction/IPredictionCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/app/prediction/IPredictionCallback;

    .line 424
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 425
    return-void
.end method

.method destroy()V
    .registers 4

    .line 453
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_a

    .line 454
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 456
    :cond_a
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 457
    return-void
.end method

.method synthetic lambda$resurrectSessionLocked$0$com-android-server-appprediction-AppPredictionPerUserService$AppPredictionSessionInfo(Lcom/android/server/appprediction/AppPredictionPerUserService;Landroid/app/prediction/IPredictionCallback;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/appprediction/AppPredictionPerUserService;
    .param p2, "callback"    # Landroid/app/prediction/IPredictionCallback;

    .line 468
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    invoke-virtual {p1, v0, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->registerPredictionUpdatesLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method linkToDeath()Z
    .registers 4

    .line 437
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_b

    .line 444
    nop

    .line 445
    const/4 v0, 0x1

    return v0

    .line 438
    :catch_b
    move-exception v1

    .line 443
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method removeCallbackLocked(Landroid/app/prediction/IPredictionCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/app/prediction/IPredictionCallback;

    .line 432
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 433
    return-void
.end method

.method resurrectSessionLocked(Lcom/android/server/appprediction/AppPredictionPerUserService;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/appprediction/AppPredictionPerUserService;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 460
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    .line 466
    .local v0, "callbackCount":I
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mPredictionContext:Landroid/app/prediction/AppPredictionContext;

    iget-object v2, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    invoke-virtual {p1, v1, v2, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->onCreatePredictionSessionLocked(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;Landroid/os/IBinder;)V

    .line 467
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v2, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;Lcom/android/server/appprediction/AppPredictionPerUserService;)V

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 469
    return-void
.end method
