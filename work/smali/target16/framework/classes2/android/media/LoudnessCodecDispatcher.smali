.class public Landroid/media/LoudnessCodecDispatcher;
.super Ljava/lang/Object;
.source "LoudnessCodecDispatcher.java"

# interfaces
.implements Landroid/media/CallbackUtil$DispatcherStub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "LoudnessCodecDispatcher"


# instance fields
.field private final blacklist mAudioService:Landroid/media/IAudioService;


# direct methods
.method public constructor blacklist <init>(Landroid/media/IAudioService;)V
    .registers 2

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/IAudioService;

    iput-object p1, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    .line 210
    return-void
.end method


# virtual methods
.method public blacklist addLoudnessCodecInfo(IILandroid/media/LoudnessCodecInfo;)V
    .registers 5

    .line 262
    :try_start_0
    iget-object v0, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/IAudioService;->addLoudnessCodecInfo(IILandroid/media/LoudnessCodecInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 265
    goto :goto_a

    .line 263
    :catch_6
    move-exception p1

    .line 264
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 266
    :goto_a
    return-void
.end method

.method public blacklist addLoudnessCodecListener(Landroid/media/LoudnessCodecController;Ljava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V
    .registers 5

    .line 231
    invoke-static {}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->getInstance()Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->addLoudnessCodecListener(Landroid/media/CallbackUtil$DispatcherStub;Landroid/media/LoudnessCodecController;Ljava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V

    .line 233
    return-void
.end method

.method public blacklist getLoudnessCodecParams(Landroid/media/LoudnessCodecInfo;)Landroid/os/Bundle;
    .registers 4

    .line 279
    nop

    .line 281
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getLoudnessParams(Landroid/media/LoudnessCodecInfo;)Landroid/os/PersistableBundle;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_d

    .line 284
    goto :goto_12

    .line 282
    :catch_d
    move-exception p1

    .line 283
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    .line 285
    :goto_12
    return-object v0
.end method

.method public blacklist register(Z)V
    .registers 3

    .line 215
    if-eqz p1, :cond_c

    .line 216
    :try_start_2
    iget-object p1, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    .line 217
    invoke-static {}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->getInstance()Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;

    move-result-object v0

    .line 216
    invoke-interface {p1, v0}, Landroid/media/IAudioService;->registerLoudnessCodecUpdatesDispatcher(Landroid/media/ILoudnessCodecUpdatesDispatcher;)V

    goto :goto_15

    .line 219
    :cond_c
    iget-object p1, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    .line 220
    invoke-static {}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->getInstance()Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;

    move-result-object v0

    .line 219
    invoke-interface {p1, v0}, Landroid/media/IAudioService;->unregisterLoudnessCodecUpdatesDispatcher(Landroid/media/ILoudnessCodecUpdatesDispatcher;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_15} :catch_16

    .line 224
    :goto_15
    goto :goto_1a

    .line 222
    :catch_16
    move-exception p1

    .line 223
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 225
    :goto_1a
    return-void
.end method

.method public blacklist removeLoudnessCodecInfo(ILandroid/media/LoudnessCodecInfo;)V
    .registers 4

    .line 271
    :try_start_0
    iget-object v0, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->removeLoudnessCodecInfo(ILandroid/media/LoudnessCodecInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 274
    goto :goto_a

    .line 272
    :catch_6
    move-exception p1

    .line 273
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 275
    :goto_a
    return-void
.end method

.method public blacklist removeLoudnessCodecListener(Landroid/media/LoudnessCodecController;)V
    .registers 3

    .line 237
    invoke-static {}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->getInstance()Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->removeLoudnessCodecListener(Landroid/media/LoudnessCodecController;)V

    .line 238
    return-void
.end method

.method public blacklist startLoudnessCodecUpdates(I)V
    .registers 3

    .line 243
    :try_start_0
    iget-object v0, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->startLoudnessCodecUpdates(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 246
    goto :goto_a

    .line 244
    :catch_6
    move-exception p1

    .line 245
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 247
    :goto_a
    return-void
.end method

.method public blacklist stopLoudnessCodecUpdates(I)V
    .registers 3

    .line 252
    :try_start_0
    iget-object v0, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->stopLoudnessCodecUpdates(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 255
    goto :goto_a

    .line 253
    :catch_6
    move-exception p1

    .line 254
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 256
    :goto_a
    return-void
.end method
