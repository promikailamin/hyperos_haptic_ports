.class Landroid/media/MediaRouter$Static;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Static"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouter$Static$Client;
    }
.end annotation


# instance fields
.field greylist-max-o mActivelyScanningWifiDisplays:Z

.field final greylist-max-o mAudioRoutesObserver:Landroid/media/IAudioRoutesObserver$Stub;

.field final greylist-max-o mAudioService:Landroid/media/IAudioService;

.field greylist-max-o mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

.field final greylist-max-o mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mCanConfigureWifiDisplays:Z

.field final greylist-max-o mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaRouter$RouteCategory;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mClient:Landroid/media/IMediaRouterClient;

.field greylist-max-o mClientState:Landroid/media/MediaRouterClientState;

.field final greylist-max-o mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

.field greylist-max-o mCurrentUserId:I

.field greylist-max-o mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

.field greylist-max-o mDiscoverRequestActiveScan:Z

.field greylist-max-o mDiscoveryRequestRouteTypes:I

.field final greylist-max-o mDisplayService:Landroid/hardware/display/DisplayManager;

.field final greylist-max-o mHandler:Landroid/os/Handler;

.field blacklist mIsBluetoothA2dpOn:Z

.field final greylist-max-o mMediaRouterService:Landroid/media/IMediaRouterService;

.field final greylist-max-o mPackageName:Ljava/lang/String;

.field greylist-max-o mPreviousActiveWifiDisplayAddress:Ljava/lang/String;

.field final greylist-max-o mResources:Landroid/content/res/Resources;

.field final greylist-max-o mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

.field blacklist mStreamVolume:Landroid/util/SparseIntArray;

.field final greylist-max-o mSystemCategory:Landroid/media/MediaRouter$RouteCategory;


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 7

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Landroid/media/AudioRoutesInfo;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaRouter$Static;->mCurrentUserId:I

    .line 118
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mStreamVolume:Landroid/util/SparseIntArray;

    .line 120
    new-instance v0, Landroid/media/MediaRouter$Static$1;

    invoke-direct {v0, p0}, Landroid/media/MediaRouter$Static$1;-><init>(Landroid/media/MediaRouter$Static;)V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mAudioRoutesObserver:Landroid/media/IAudioRoutesObserver$Stub;

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mPackageName:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mHandler:Landroid/os/Handler;

    .line 143
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 144
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    .line 146
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    .line 148
    nop

    .line 149
    const-string v0, "media_router"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 148
    invoke-static {v0}, Landroid/media/IMediaRouterService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterService;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    .line 151
    new-instance v0, Landroid/media/MediaRouter$RouteCategory;

    const v1, 0x104036d

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/MediaRouter$RouteCategory;-><init>(IIZ)V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    .line 154
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/media/MediaRouter$RouteCategory;->mIsSystem:Z

    .line 159
    nop

    .line 161
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 159
    const-string v4, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {p1, v4, v0, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_8d

    move v3, v1

    :cond_8d
    iput-boolean v3, p0, Landroid/media/MediaRouter$Static;->mCanConfigureWifiDisplays:Z

    .line 162
    return-void
.end method

.method private greylist-max-o updatePresentationDisplays(I)V
    .registers 6

    .line 415
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 416
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_29

    .line 417
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    .line 418
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, v2, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    if-eqz v3, :cond_26

    iget-object v3, v2, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    .line 419
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    if-ne v3, p1, :cond_26

    .line 420
    :cond_23
    invoke-static {v2}, Landroid/media/MediaRouter;->dispatchRoutePresentationDisplayChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 416
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 423
    :cond_29
    return-void
.end method


# virtual methods
.method greylist-max-o findGlobalRoute(Ljava/lang/String;)Landroid/media/MediaRouter$RouteInfo;
    .registers 6

    .line 651
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 652
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    .line 653
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    .line 654
    iget-object v3, v2, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 655
    return-object v2

    .line 652
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 658
    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-o getAllPresentationDisplays()[Landroid/view/Display;
    .registers 4

    .line 407
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    const-string v1, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 408
    :catch_9
    move-exception v0

    .line 409
    const-string v1, "MediaRouter"

    const-string v2, "Unable to get displays."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist getStreamVolume(I)I
    .registers 5

    .line 294
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mStreamVolume:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 295
    if-gez v0, :cond_21

    .line 296
    nop

    .line 298
    const/4 v0, 0x0

    :try_start_a
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getStreamVolume(I)I

    move-result v0

    .line 299
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mStreamVolume:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_18
    .catchall {:try_start_a .. :try_end_15} :catchall_16

    .line 303
    return v0

    :catchall_16
    move-exception p1

    goto :goto_20

    .line 300
    :catch_18
    move-exception p1

    .line 301
    :try_start_19
    const-string v1, "MediaRouter"

    const-string v2, "Error getting local stream volume"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_16

    .line 303
    :goto_20
    return v0

    .line 306
    :cond_21
    iget-object p1, p0, Landroid/media/MediaRouter$Static;->mStreamVolume:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1
.end method

.method blacklist handleGroupRouteSelected(Ljava/lang/String;)V
    .registers 8

    .line 426
    invoke-virtual {p0}, Landroid/media/MediaRouter$Static;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 427
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    .line 428
    :goto_b
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 429
    const/4 v2, 0x0

    move v3, v2

    :goto_13
    if-ge v3, v1, :cond_29

    .line 430
    iget-object v4, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaRouter$RouteInfo;

    .line 431
    iget-object v5, v4, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 432
    move-object v0, v4

    .line 429
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 435
    :cond_29
    iget-object p1, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eq v0, p1, :cond_32

    .line 436
    iget p1, v0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    invoke-static {p1, v0, v2}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    .line 438
    :cond_32
    return-void
.end method

.method greylist-max-o isBluetoothA2dpOn()Z
    .registers 2

    .line 310
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/media/MediaRouter$Static;->mIsBluetoothA2dpOn:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method greylist-max-o isPlaybackActive()Z
    .registers 3

    .line 662
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v0, :cond_11

    .line 664
    :try_start_4
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    invoke-interface {v0, v1}, Landroid/media/IMediaRouterService;->isPlaybackActive(Landroid/media/IMediaRouterClient;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 665
    :catch_d
    move-exception v0

    .line 666
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 669
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o makeGlobalRoute(Landroid/media/MediaRouterClientState$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;
    .registers 4

    .line 565
    new-instance v0, Landroid/media/MediaRouter$RouteInfo;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    invoke-direct {v0, v1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .line 566
    iget-object v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    .line 567
    iget-object v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 568
    iget-object v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    .line 569
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 570
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->deviceType:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mDeviceType:I

    .line 571
    iget-boolean v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    iput-boolean v1, v0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 572
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$RouteInfo;->setRealStatusCode(I)Z

    .line 573
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    .line 574
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    .line 575
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    .line 576
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    .line 577
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 578
    iget p1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    iput p1, v0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    .line 579
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    .line 580
    return-object v0
.end method

.method public whitelist onDisplayAdded(I)V
    .registers 2

    .line 382
    invoke-direct {p0, p1}, Landroid/media/MediaRouter$Static;->updatePresentationDisplays(I)V

    .line 383
    return-void
.end method

.method public whitelist onDisplayChanged(I)V
    .registers 2

    .line 387
    invoke-direct {p0, p1}, Landroid/media/MediaRouter$Static;->updatePresentationDisplays(I)V

    .line 388
    return-void
.end method

.method public whitelist onDisplayRemoved(I)V
    .registers 2

    .line 392
    invoke-direct {p0, p1}, Landroid/media/MediaRouter$Static;->updatePresentationDisplays(I)V

    .line 393
    return-void
.end method

.method greylist-max-o publishClientDiscoveryRequest()V
    .registers 5

    .line 474
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v0, :cond_14

    .line 476
    :try_start_4
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    iget v2, p0, Landroid/media/MediaRouter$Static;->mDiscoveryRequestRouteTypes:I

    iget-boolean v3, p0, Landroid/media/MediaRouter$Static;->mDiscoverRequestActiveScan:Z

    invoke-interface {v0, v1, v2, v3}, Landroid/media/IMediaRouterService;->setDiscoveryRequest(Landroid/media/IMediaRouterClient;IZ)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    .line 480
    goto :goto_14

    .line 478
    :catch_10
    move-exception v0

    .line 479
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 482
    :cond_14
    :goto_14
    return-void
.end method

.method greylist-max-o publishClientSelectedRoute(Z)V
    .registers 5

    .line 485
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v0, :cond_1a

    .line 487
    :try_start_4
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    .line 488
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v2, :cond_11

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    iget-object v2, v2, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    .line 487
    :goto_12
    invoke-interface {v0, v1, v2, p1}, Landroid/media/IMediaRouterService;->setSelectedRoute(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_16

    .line 492
    goto :goto_1a

    .line 490
    :catch_16
    move-exception p1

    .line 491
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 494
    :cond_1a
    :goto_1a
    return-void
.end method

.method greylist-max-o rebindAsUser(I)V
    .registers 5

    .line 447
    iget v0, p0, Landroid/media/MediaRouter$Static;->mCurrentUserId:I

    if-ne v0, p1, :cond_a

    if-ltz p1, :cond_a

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-nez v0, :cond_40

    .line 448
    :cond_a
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v0, :cond_1d

    .line 450
    :try_start_e
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    invoke-interface {v0, v1}, Landroid/media/IMediaRouterService;->unregisterClient(Landroid/media/IMediaRouterClient;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_16

    .line 453
    goto :goto_1a

    .line 451
    :catch_16
    move-exception v0

    .line 452
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 454
    :goto_1a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    .line 457
    :cond_1d
    iput p1, p0, Landroid/media/MediaRouter$Static;->mCurrentUserId:I

    .line 460
    :try_start_1f
    new-instance v0, Landroid/media/MediaRouter$Static$Client;

    invoke-direct {v0, p0}, Landroid/media/MediaRouter$Static$Client;-><init>(Landroid/media/MediaRouter$Static;)V

    .line 461
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v0, v2, p1}, Landroid/media/IMediaRouterService;->registerClientAsUser(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V

    .line 462
    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2d} :catch_2e

    .line 465
    goto :goto_36

    .line 463
    :catch_2e
    move-exception p1

    .line 464
    const-string v0, "MediaRouter"

    const-string v1, "Unable to register media router client."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 467
    :goto_36
    invoke-virtual {p0}, Landroid/media/MediaRouter$Static;->publishClientDiscoveryRequest()V

    .line 468
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$Static;->publishClientSelectedRoute(Z)V

    .line 469
    invoke-virtual {p0}, Landroid/media/MediaRouter$Static;->updateClientState()V

    .line 471
    :cond_40
    return-void
.end method

.method greylist-max-o requestSetVolume(Landroid/media/MediaRouter$RouteInfo;I)V
    .registers 5

    .line 543
    iget-object v0, p1, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v0, :cond_16

    .line 545
    :try_start_8
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    iget-object p1, p1, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/media/IMediaRouterService;->requestSetVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    .line 549
    goto :goto_16

    .line 547
    :catch_12
    move-exception p1

    .line 548
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 551
    :cond_16
    :goto_16
    return-void
.end method

.method greylist-max-o requestUpdateVolume(Landroid/media/MediaRouter$RouteInfo;I)V
    .registers 5

    .line 554
    iget-object v0, p1, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v0, :cond_16

    .line 556
    :try_start_8
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    iget-object p1, p1, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/media/IMediaRouterService;->requestUpdateVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    .line 560
    goto :goto_16

    .line 558
    :catch_12
    move-exception p1

    .line 559
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 562
    :cond_16
    :goto_16
    return-void
.end method

.method public blacklist setRouterGroupId(Ljava/lang/String;)V
    .registers 4

    .line 396
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v0, :cond_10

    .line 398
    :try_start_4
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    invoke-interface {v0, v1, p1}, Landroid/media/IMediaRouterService;->registerClientGroupId(Landroid/media/IMediaRouterClient;Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 401
    goto :goto_10

    .line 399
    :catch_c
    move-exception p1

    .line 400
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 403
    :cond_10
    :goto_10
    return-void
.end method

.method greylist-max-o setSelectedRoute(Landroid/media/MediaRouter$RouteInfo;Z)V
    .registers 3

    .line 442
    iput-object p1, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 443
    invoke-virtual {p0, p2}, Landroid/media/MediaRouter$Static;->publishClientSelectedRoute(Z)V

    .line 444
    return-void
.end method

.method greylist-max-o startMonitoringRoutes(Landroid/content/Context;)V
    .registers 5

    .line 166
    new-instance v0, Landroid/media/MediaRouter$RouteInfo;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    invoke-direct {v0, v1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    .line 167
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    const v1, 0x104036f

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mNameResId:I

    .line 168
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    const/4 v1, 0x3

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 169
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    .line 170
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 171
    invoke-virtual {v0}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 172
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    const/4 v1, 0x0

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 174
    :cond_2d
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    const v2, 0x104036e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v0}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 179
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaRouter;->updateWifiDisplayStatus(Landroid/hardware/display/WifiDisplayStatus;)V

    .line 181
    new-instance v0, Landroid/media/MediaRouter$WifiDisplayStatusChangedReceiver;

    invoke-direct {v0}, Landroid/media/MediaRouter$WifiDisplayStatusChangedReceiver;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    new-instance v0, Landroid/media/MediaRouter$VolumeChangeReceiver;

    invoke-direct {v0}, Landroid/media/MediaRouter$VolumeChangeReceiver;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->displayListenerPerformanceImprovements()Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 189
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->delayImplicitRrRegistrationUntilRrAccessed()Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 190
    iget-object p1, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    goto :goto_85

    .line 195
    :cond_7e
    iget-object p1, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 198
    :goto_85
    nop

    .line 200
    :try_start_86
    iget-object p1, p0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {p1}, Landroid/media/IAudioService;->isBluetoothA2dpOn()Z

    move-result p1

    iput-boolean p1, p0, Landroid/media/MediaRouter$Static;->mIsBluetoothA2dpOn:Z

    .line 201
    iget-object p1, p0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mAudioRoutesObserver:Landroid/media/IAudioRoutesObserver$Stub;

    invoke-interface {p1, v0}, Landroid/media/IAudioService;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object p1
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_96} :catch_97

    .line 203
    goto :goto_99

    .line 202
    :catch_97
    move-exception p1

    const/4 p1, 0x0

    .line 204
    :goto_99
    if-eqz p1, :cond_9e

    .line 208
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$Static;->updateAudioRoutes(Landroid/media/AudioRoutesInfo;)V

    .line 212
    :cond_9e
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$Static;->rebindAsUser(I)V

    .line 216
    iget-object p1, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-nez p1, :cond_ac

    .line 217
    invoke-static {}, Landroid/media/MediaRouter;->selectDefaultRouteStatic()V

    .line 219
    :cond_ac
    return-void
.end method

.method greylist-max-o updateAudioRoutes(Landroid/media/AudioRoutesInfo;)V
    .registers 8

    .line 222
    nop

    .line 223
    nop

    .line 225
    iget v0, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget v1, v1, Landroid/media/AudioRoutesInfo;->mainType:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_57

    .line 226
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget v1, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    iput v1, v0, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 228
    iget v0, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_40

    iget v0, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_1e

    goto :goto_40

    .line 231
    :cond_1e
    iget v0, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_28

    .line 232
    const v0, 0x1040374

    goto :goto_43

    .line 233
    :cond_28
    iget v0, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_32

    .line 234
    const v0, 0x1040376

    goto :goto_43

    .line 235
    :cond_32
    iget v0, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3c

    .line 236
    const v0, 0x1040379

    goto :goto_43

    .line 238
    :cond_3c
    const v0, 0x104036f

    goto :goto_43

    .line 230
    :cond_40
    :goto_40
    const v0, 0x1040378

    .line 240
    :goto_43
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    iput v0, v1, Landroid/media/MediaRouter$RouteInfo;->mNameResId:I

    .line 241
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v0}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 243
    iget v0, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v0, v0, 0x13

    if-eqz v0, :cond_54

    .line 245
    move v0, v2

    goto :goto_55

    .line 243
    :cond_54
    move v0, v3

    .line 247
    :goto_55
    move v1, v2

    goto :goto_59

    .line 225
    :cond_57
    move v0, v3

    move v1, v0

    .line 250
    :goto_59
    iget-object v4, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget-object v5, v5, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b8

    .line 251
    nop

    .line 252
    iget-object v0, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_aa

    .line 253
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-nez v0, :cond_9e

    .line 255
    new-instance v0, Landroid/media/MediaRouter$RouteInfo;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    invoke-direct {v0, v1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .line 256
    iget-object v1, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 257
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    const v4, 0x10401c8

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    .line 259
    iput v2, v0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 260
    const/4 v1, 0x3

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mDeviceType:I

    .line 261
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    const v4, 0x10401c7

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    .line 264
    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 265
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v0}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 266
    goto :goto_b6

    .line 267
    :cond_9e
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    iget-object v1, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 268
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v0}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_b6

    .line 270
    :cond_aa
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_b6

    .line 272
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 273
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 274
    invoke-static {v0}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 276
    :cond_b6
    :goto_b6
    move v1, v2

    move v0, v3

    .line 279
    :cond_b8
    if-eqz v1, :cond_106

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio routes updated: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", a2dp="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaRouter$Static;->isBluetoothA2dpOn()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "MediaRouter"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v1, :cond_f4

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v1

    if-nez v1, :cond_f4

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 282
    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->isBluetooth()Z

    move-result v1

    if-eqz v1, :cond_106

    .line 283
    :cond_f4
    if-nez v0, :cond_101

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-nez v0, :cond_fb

    goto :goto_101

    .line 286
    :cond_fb
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v2, v0, v3}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    goto :goto_106

    .line 284
    :cond_101
    :goto_101
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v2, v0, v3}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    .line 290
    :cond_106
    :goto_106
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget-object p1, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    iput-object p1, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 291
    return-void
.end method

.method greylist-max-o updateClientState()V
    .registers 9

    .line 498
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mClientState:Landroid/media/MediaRouterClientState;

    .line 499
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v1, :cond_16

    .line 501
    :try_start_7
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    invoke-interface {v1, v2}, Landroid/media/IMediaRouterService;->getState(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mClientState:Landroid/media/MediaRouterClientState;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_12

    .line 504
    goto :goto_16

    .line 502
    :catch_12
    move-exception v1

    .line 503
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 507
    :cond_16
    :goto_16
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClientState:Landroid/media/MediaRouterClientState;

    if-eqz v1, :cond_1e

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClientState:Landroid/media/MediaRouterClientState;

    iget-object v0, v0, Landroid/media/MediaRouterClientState;->routes:Ljava/util/ArrayList;

    .line 510
    :cond_1e
    const/4 v1, 0x0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_27

    :cond_26
    move v2, v1

    .line 511
    :goto_27
    move v3, v1

    :goto_28
    if-ge v3, v2, :cond_46

    .line 512
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaRouterClientState$RouteInfo;

    .line 513
    iget-object v5, v4, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/media/MediaRouter$Static;->findGlobalRoute(Ljava/lang/String;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v5

    .line 514
    if-nez v5, :cond_40

    .line 515
    invoke-virtual {p0, v4}, Landroid/media/MediaRouter$Static;->makeGlobalRoute(Landroid/media/MediaRouterClientState$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v4

    .line 516
    invoke-static {v4}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_43

    .line 518
    :cond_40
    invoke-virtual {p0, v5, v4}, Landroid/media/MediaRouter$Static;->updateGlobalRoute(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouterClientState$RouteInfo;)V

    .line 511
    :goto_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 523
    :cond_46
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_4c
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_84

    .line 524
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRouter$RouteInfo;

    .line 525
    iget-object v5, v3, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    .line 526
    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v6

    if-nez v6, :cond_82

    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->isBluetooth()Z

    move-result v6

    if-eqz v6, :cond_67

    .line 527
    goto :goto_82

    .line 529
    :cond_67
    if-eqz v5, :cond_81

    .line 530
    move v6, v1

    :goto_6a
    if-ge v6, v2, :cond_7e

    .line 531
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/MediaRouterClientState$RouteInfo;

    .line 532
    iget-object v7, v7, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7b

    .line 533
    goto :goto_82

    .line 530
    :cond_7b
    add-int/lit8 v6, v6, 0x1

    goto :goto_6a

    .line 537
    :cond_7e
    invoke-static {v3}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 539
    :cond_81
    nop

    .line 523
    :cond_82
    :goto_82
    move v3, v4

    goto :goto_4c

    .line 540
    :cond_84
    return-void
.end method

.method greylist-max-o updateDiscoveryRequest()V
    .registers 12

    .line 315
    nop

    .line 316
    nop

    .line 317
    nop

    .line 318
    nop

    .line 319
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .line 320
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_10
    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ge v2, v0, :cond_45

    .line 321
    iget-object v9, p0, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/MediaRouter$CallbackInfo;

    .line 322
    iget v10, v9, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    and-int/lit8 v10, v10, 0x5

    if-eqz v10, :cond_26

    .line 325
    iget v10, v9, Landroid/media/MediaRouter$CallbackInfo;->type:I

    or-int/2addr v3, v10

    goto :goto_33

    .line 326
    :cond_26
    iget v10, v9, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_30

    .line 328
    iget v10, v9, Landroid/media/MediaRouter$CallbackInfo;->type:I

    or-int/2addr v5, v10

    goto :goto_33

    .line 333
    :cond_30
    iget v10, v9, Landroid/media/MediaRouter$CallbackInfo;->type:I

    or-int/2addr v3, v10

    .line 335
    :goto_33
    iget v10, v9, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    and-int/2addr v10, v8

    if-eqz v10, :cond_42

    .line 336
    nop

    .line 337
    iget v4, v9, Landroid/media/MediaRouter$CallbackInfo;->type:I

    and-int/2addr v4, v7

    if-eqz v4, :cond_41

    .line 338
    move v4, v8

    move v6, v4

    goto :goto_42

    .line 337
    :cond_41
    move v4, v8

    .line 320
    :cond_42
    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 342
    :cond_45
    if-nez v3, :cond_49

    if-eqz v4, :cond_4a

    .line 346
    :cond_49
    or-int/2addr v3, v5

    .line 351
    :cond_4a
    iget-boolean v0, p0, Landroid/media/MediaRouter$Static;->mCanConfigureWifiDisplays:Z

    if-eqz v0, :cond_74

    .line 352
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 353
    invoke-virtual {v0, v7}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 356
    move v6, v1

    .line 358
    :cond_5b
    if-eqz v6, :cond_69

    .line 359
    iget-boolean v0, p0, Landroid/media/MediaRouter$Static;->mActivelyScanningWifiDisplays:Z

    if-nez v0, :cond_74

    .line 360
    iput-boolean v8, p0, Landroid/media/MediaRouter$Static;->mActivelyScanningWifiDisplays:Z

    .line 361
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->startWifiDisplayScan()V

    goto :goto_74

    .line 364
    :cond_69
    iget-boolean v0, p0, Landroid/media/MediaRouter$Static;->mActivelyScanningWifiDisplays:Z

    if-eqz v0, :cond_74

    .line 365
    iput-boolean v1, p0, Landroid/media/MediaRouter$Static;->mActivelyScanningWifiDisplays:Z

    .line 366
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->stopWifiDisplayScan()V

    .line 372
    :cond_74
    :goto_74
    iget v0, p0, Landroid/media/MediaRouter$Static;->mDiscoveryRequestRouteTypes:I

    if-ne v3, v0, :cond_7c

    iget-boolean v0, p0, Landroid/media/MediaRouter$Static;->mDiscoverRequestActiveScan:Z

    if-eq v4, v0, :cond_83

    .line 374
    :cond_7c
    iput v3, p0, Landroid/media/MediaRouter$Static;->mDiscoveryRequestRouteTypes:I

    .line 375
    iput-boolean v4, p0, Landroid/media/MediaRouter$Static;->mDiscoverRequestActiveScan:Z

    .line 376
    invoke-virtual {p0}, Landroid/media/MediaRouter$Static;->publishClientDiscoveryRequest()V

    .line 378
    :cond_83
    return-void
.end method

.method greylist-max-o updateGlobalRoute(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouterClientState$RouteInfo;)V
    .registers 10

    .line 584
    nop

    .line 585
    nop

    .line 586
    nop

    .line 588
    iget-object v0, p1, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    iget-object v1, p2, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_15

    .line 589
    iget-object v0, p2, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    iput-object v0, p1, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 590
    move v0, v1

    goto :goto_16

    .line 588
    :cond_15
    move v0, v2

    .line 592
    :goto_16
    iget-object v3, p1, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    iget-object v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 593
    iget-object v0, p2, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    iput-object v0, p1, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    .line 594
    move v0, v1

    .line 596
    :cond_25
    iget v3, p1, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 597
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    if-eq v3, v4, :cond_30

    .line 598
    iget v0, p2, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    iput v0, p1, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 599
    move v0, v1

    .line 601
    :cond_30
    iget-boolean v4, p1, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    iget-boolean v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    if-eq v4, v5, :cond_3b

    .line 602
    iget-boolean v0, p2, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    iput-boolean v0, p1, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 603
    move v0, v1

    .line 605
    :cond_3b
    invoke-static {p1}, Landroid/media/MediaRouter$RouteInfo;->-$$Nest$fgetmRealStatusCode(Landroid/media/MediaRouter$RouteInfo;)I

    move-result v4

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    if-eq v4, v5, :cond_49

    .line 606
    iget v0, p2, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter$RouteInfo;->setRealStatusCode(I)Z

    .line 607
    move v0, v1

    .line 609
    :cond_49
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    if-eq v4, v5, :cond_54

    .line 610
    iget v0, p2, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    iput v0, p1, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    .line 611
    move v0, v1

    .line 613
    :cond_54
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    if-eq v4, v5, :cond_5f

    .line 614
    iget v0, p2, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    iput v0, p1, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    .line 615
    move v0, v1

    .line 617
    :cond_5f
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    if-eq v4, v5, :cond_6d

    .line 618
    iget v0, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    iput v0, p1, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    .line 619
    nop

    .line 620
    move v0, v1

    move v4, v0

    goto :goto_6e

    .line 617
    :cond_6d
    move v4, v2

    .line 622
    :goto_6e
    iget v5, p1, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    iget v6, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    if-eq v5, v6, :cond_7b

    .line 623
    iget v0, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    iput v0, p1, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    .line 624
    nop

    .line 625
    move v0, v1

    move v4, v0

    .line 627
    :cond_7b
    iget v5, p1, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    iget v6, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    if-eq v5, v6, :cond_88

    .line 628
    iget v0, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    iput v0, p1, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 629
    nop

    .line 630
    move v0, v1

    move v4, v0

    .line 632
    :cond_88
    iget v5, p1, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    iget v6, p2, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    if-eq v5, v6, :cond_98

    .line 633
    iget p2, p2, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    iput p2, p1, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    .line 634
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    .line 635
    nop

    .line 636
    move v2, v1

    goto :goto_99

    .line 632
    :cond_98
    move v1, v0

    .line 639
    :goto_99
    if-eqz v1, :cond_9e

    .line 640
    invoke-static {p1, v3}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;I)V

    .line 642
    :cond_9e
    if-eqz v4, :cond_a3

    .line 643
    invoke-static {p1}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 645
    :cond_a3
    if-eqz v2, :cond_a8

    .line 646
    invoke-static {p1}, Landroid/media/MediaRouter;->dispatchRoutePresentationDisplayChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 648
    :cond_a8
    return-void
.end method
