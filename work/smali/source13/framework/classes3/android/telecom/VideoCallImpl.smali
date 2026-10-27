.class public Landroid/telecom/VideoCallImpl;
.super Landroid/telecom/InCallService$VideoCall;
.source "VideoCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/VideoCallImpl$MessageHandler;,
        Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;
    }
.end annotation


# instance fields
.field private final greylist-max-o mBinder:Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

.field private greylist-max-o mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

.field private final greylist-max-o mCallingPackageName:Ljava/lang/String;

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mTargetSdkVersion:I

.field private final greylist-max-o mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

.field private greylist-max-o mVideoQuality:I

.field private greylist-max-o mVideoState:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;
    .registers 1

    iget-object p0, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/telecom/VideoCallImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVideoQuality(Landroid/telecom/VideoCallImpl;I)V
    .registers 2

    iput p1, p0, Landroid/telecom/VideoCallImpl;->mVideoQuality:I

    return-void
.end method

.method constructor greylist-max-o <init>(Lcom/android/internal/telecom/IVideoProvider;Ljava/lang/String;I)V
    .registers 6
    .param p1, "videoProvider"    # Lcom/android/internal/telecom/IVideoProvider;
    .param p2, "callingPackageName"    # Ljava/lang/String;
    .param p3, "targetSdkVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    invoke-direct {p0}, Landroid/telecom/InCallService$VideoCall;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/VideoCallImpl;->mVideoQuality:I

    .line 50
    iput v0, p0, Landroid/telecom/VideoCallImpl;->mVideoState:I

    .line 215
    iput-object p1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    .line 219
    new-instance v0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;-><init>(Landroid/telecom/VideoCallImpl;Landroid/telecom/VideoCallImpl$VideoCallListenerBinder-IA;)V

    iput-object v0, p0, Landroid/telecom/VideoCallImpl;->mBinder:Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

    .line 220
    invoke-interface {p1, v0}, Lcom/android/internal/telecom/IVideoProvider;->addVideoCallback(Landroid/os/IBinder;)V

    .line 221
    iput-object p2, p0, Landroid/telecom/VideoCallImpl;->mCallingPackageName:Ljava/lang/String;

    .line 222
    invoke-virtual {p0, p3}, Landroid/telecom/VideoCallImpl;->setTargetSdkVersion(I)V

    .line 223
    return-void
.end method


# virtual methods
.method public greylist-max-p destroy()V
    .registers 2

    .line 232
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    invoke-virtual {p0, v0}, Landroid/telecom/VideoCallImpl;->unregisterCallback(Landroid/telecom/InCallService$VideoCall$Callback;)V

    .line 240
    return-void
.end method

.method public blacklist getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;
    .registers 2

    .line 382
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    return-object v0
.end method

.method public whitelist registerCallback(Landroid/telecom/InCallService$VideoCall$Callback;)V
    .registers 3
    .param p1, "callback"    # Landroid/telecom/InCallService$VideoCall$Callback;

    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/telecom/VideoCallImpl;->registerCallback(Landroid/telecom/InCallService$VideoCall$Callback;Landroid/os/Handler;)V

    .line 245
    return-void
.end method

.method public whitelist registerCallback(Landroid/telecom/InCallService$VideoCall$Callback;Landroid/os/Handler;)V
    .registers 5
    .param p1, "callback"    # Landroid/telecom/InCallService$VideoCall$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 249
    iput-object p1, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    .line 250
    if-nez p2, :cond_10

    .line 251
    new-instance v0, Landroid/telecom/VideoCallImpl$MessageHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/VideoCallImpl$MessageHandler;-><init>(Landroid/telecom/VideoCallImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/VideoCallImpl;->mHandler:Landroid/os/Handler;

    goto :goto_1b

    .line 253
    :cond_10
    new-instance v0, Landroid/telecom/VideoCallImpl$MessageHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/VideoCallImpl$MessageHandler;-><init>(Landroid/telecom/VideoCallImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/VideoCallImpl;->mHandler:Landroid/os/Handler;

    .line 255
    :goto_1b
    return-void
.end method

.method public whitelist requestCallDataUsage()V
    .registers 2

    .line 356
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->requestCallDataUsage()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 358
    goto :goto_7

    .line 357
    :catch_6
    move-exception v0

    .line 359
    :goto_7
    return-void
.end method

.method public whitelist requestCameraCapabilities()V
    .registers 2

    .line 348
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->requestCameraCapabilities()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 350
    goto :goto_7

    .line 349
    :catch_6
    move-exception v0

    .line 351
    :goto_7
    return-void
.end method

.method public whitelist sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .registers 5
    .param p1, "requestProfile"    # Landroid/telecom/VideoProfile;

    .line 330
    :try_start_0
    new-instance v0, Landroid/telecom/VideoProfile;

    iget v1, p0, Landroid/telecom/VideoCallImpl;->mVideoState:I

    iget v2, p0, Landroid/telecom/VideoCallImpl;->mVideoQuality:I

    invoke-direct {v0, v1, v2}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 332
    .local v0, "originalProfile":Landroid/telecom/VideoProfile;
    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v1, v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 334
    .end local v0    # "originalProfile":Landroid/telecom/VideoProfile;
    goto :goto_10

    .line 333
    :catch_f
    move-exception v0

    .line 335
    :goto_10
    return-void
.end method

.method public whitelist sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .registers 3
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 340
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 342
    goto :goto_7

    .line 341
    :catch_6
    move-exception v0

    .line 343
    :goto_7
    return-void
.end method

.method public whitelist setCamera(Ljava/lang/String;)V
    .registers 6
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 278
    :try_start_0
    const-string/jumbo v0, "setCamera: cameraId=%s, calling=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/telecom/VideoCallImpl;->mCallingPackageName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mCallingPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/telecom/VideoCallImpl;->mTargetSdkVersion:I

    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telecom/IVideoProvider;->setCamera(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 281
    goto :goto_1c

    .line 280
    :catch_1b
    move-exception v0

    .line 282
    :goto_1c
    return-void
.end method

.method public whitelist setDeviceOrientation(I)V
    .registers 3
    .param p1, "rotation"    # I

    .line 303
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDeviceOrientation(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 305
    goto :goto_7

    .line 304
    :catch_6
    move-exception v0

    .line 306
    :goto_7
    return-void
.end method

.method public whitelist setDisplaySurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 295
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDisplaySurface(Landroid/view/Surface;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 297
    goto :goto_7

    .line 296
    :catch_6
    move-exception v0

    .line 298
    :goto_7
    return-void
.end method

.method public whitelist setPauseImage(Landroid/net/Uri;)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 364
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPauseImage(Landroid/net/Uri;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 366
    goto :goto_7

    .line 365
    :catch_6
    move-exception v0

    .line 367
    :goto_7
    return-void
.end method

.method public whitelist setPreviewSurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 287
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPreviewSurface(Landroid/view/Surface;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 289
    goto :goto_7

    .line 288
    :catch_6
    move-exception v0

    .line 290
    :goto_7
    return-void
.end method

.method public greylist-max-o setTargetSdkVersion(I)V
    .registers 2
    .param p1, "sdkVersion"    # I

    .line 227
    iput p1, p0, Landroid/telecom/VideoCallImpl;->mTargetSdkVersion:I

    .line 228
    return-void
.end method

.method public greylist-max-o setVideoState(I)V
    .registers 2
    .param p1, "videoState"    # I

    .line 374
    iput p1, p0, Landroid/telecom/VideoCallImpl;->mVideoState:I

    .line 375
    return-void
.end method

.method public whitelist setZoom(F)V
    .registers 3
    .param p1, "value"    # F

    .line 311
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setZoom(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 313
    goto :goto_7

    .line 312
    :catch_6
    move-exception v0

    .line 314
    :goto_7
    return-void
.end method

.method public whitelist unregisterCallback(Landroid/telecom/InCallService$VideoCall$Callback;)V
    .registers 4
    .param p1, "callback"    # Landroid/telecom/InCallService$VideoCall$Callback;

    .line 259
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    if-eq p1, v0, :cond_5

    .line 260
    return-void

    .line 263
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    .line 267
    :try_start_8
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    if-eqz v0, :cond_11

    .line 268
    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mBinder:Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IVideoProvider;->removeVideoCallback(Landroid/os/IBinder;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    .line 272
    :cond_11
    goto :goto_13

    .line 271
    :catch_12
    move-exception v0

    .line 273
    :goto_13
    return-void
.end method
