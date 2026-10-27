.class final Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;
.super Ljava/lang/Object;
.source "CloudSearchPerUserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cloudsearch/CloudSearchPerUserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CloudSearchCallbackInfo"
.end annotation


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private final mCallback:Landroid/app/cloudsearch/ICloudSearchManagerCallback;

.field final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mRequestId:Ljava/lang/String;

.field private final mSearchRequest:Landroid/app/cloudsearch/SearchRequest;

.field final mToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;)Landroid/app/cloudsearch/ICloudSearchManagerCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mCallback:Landroid/app/cloudsearch/ICloudSearchManagerCallback;

    return-object p0
.end method

.method constructor <init>(Ljava/lang/String;Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/ICloudSearchManagerCallback;Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/app/cloudsearch/SearchRequest;
    .param p3, "callback"    # Landroid/app/cloudsearch/ICloudSearchManagerCallback;
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "deathRecipient"    # Landroid/os/IBinder$DeathRecipient;

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-object p1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mRequestId:Ljava/lang/String;

    .line 364
    iput-object p2, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mSearchRequest:Landroid/app/cloudsearch/SearchRequest;

    .line 365
    iput-object p3, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mCallback:Landroid/app/cloudsearch/ICloudSearchManagerCallback;

    .line 366
    iput-object p4, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mToken:Landroid/os/IBinder;

    .line 367
    iput-object p5, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 368
    return-void
.end method


# virtual methods
.method destroy()V
    .registers 4

    .line 387
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 388
    iget-object v2, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 390
    :cond_a
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mCallback:Landroid/app/cloudsearch/ICloudSearchManagerCallback;

    invoke-interface {v0}, Landroid/app/cloudsearch/ICloudSearchManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 391
    return-void
.end method

.method linkToDeath()Z
    .registers 4

    .line 372
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_b

    .line 379
    nop

    .line 380
    const/4 v0, 0x1

    return v0

    .line 373
    :catch_b
    move-exception v1

    .line 378
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method resurrectSessionLocked(Lcom/android/server/cloudsearch/CloudSearchPerUserService;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/cloudsearch/CloudSearchPerUserService;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 398
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mSearchRequest:Landroid/app/cloudsearch/SearchRequest;

    iget-object v1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mCallback:Landroid/app/cloudsearch/ICloudSearchManagerCallback;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->onSearchLocked(Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/ICloudSearchManagerCallback;)V

    .line 399
    return-void
.end method
