.class Landroid/media/PlayerBase$IPlayerWrapper;
.super Landroid/media/IPlayer$Stub;
.source "PlayerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/PlayerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IPlayerWrapper"
.end annotation


# instance fields
.field private final greylist-max-o mWeakPB:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/PlayerBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/media/PlayerBase;)V
    .registers 3
    .param p1, "pb"    # Landroid/media/PlayerBase;

    .line 378
    invoke-direct {p0}, Landroid/media/IPlayer$Stub;-><init>()V

    .line 379
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    .line 380
    return-void
.end method


# virtual methods
.method public blacklist applyVolumeShaper(Landroid/media/VolumeShaperConfiguration;Landroid/media/VolumeShaperOperation;)V
    .registers 6
    .param p1, "configuration"    # Landroid/media/VolumeShaperConfiguration;
    .param p2, "operation"    # Landroid/media/VolumeShaperOperation;

    .line 434
    iget-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 435
    .local v0, "pb":Landroid/media/PlayerBase;
    if-eqz v0, :cond_15

    .line 436
    invoke-static {p1}, Landroid/media/VolumeShaper$Configuration;->fromParcelable(Landroid/media/VolumeShaperConfiguration;)Landroid/media/VolumeShaper$Configuration;

    move-result-object v1

    .line 437
    invoke-static {p2}, Landroid/media/VolumeShaper$Operation;->fromParcelable(Landroid/media/VolumeShaperOperation;)Landroid/media/VolumeShaper$Operation;

    move-result-object v2

    .line 436
    invoke-virtual {v0, v1, v2}, Landroid/media/PlayerBase;->playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    .line 439
    :cond_15
    return-void
.end method

.method public greylist-max-o pause()V
    .registers 2

    .line 392
    iget-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 393
    .local v0, "pb":Landroid/media/PlayerBase;
    if-eqz v0, :cond_d

    .line 394
    invoke-virtual {v0}, Landroid/media/PlayerBase;->playerPause()V

    .line 396
    :cond_d
    return-void
.end method

.method public greylist-max-o setPan(F)V
    .registers 3
    .param p1, "pan"    # F

    .line 416
    iget-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 417
    .local v0, "pb":Landroid/media/PlayerBase;
    if-eqz v0, :cond_d

    .line 418
    invoke-virtual {v0, p1}, Landroid/media/PlayerBase;->baseSetPan(F)V

    .line 420
    :cond_d
    return-void
.end method

.method public greylist-max-o setStartDelayMs(I)V
    .registers 3
    .param p1, "delayMs"    # I

    .line 424
    iget-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 425
    .local v0, "pb":Landroid/media/PlayerBase;
    if-eqz v0, :cond_d

    .line 426
    invoke-virtual {v0, p1}, Landroid/media/PlayerBase;->baseSetStartDelayMs(I)V

    .line 428
    :cond_d
    return-void
.end method

.method public greylist-max-o setVolume(F)V
    .registers 3
    .param p1, "vol"    # F

    .line 408
    iget-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 409
    .local v0, "pb":Landroid/media/PlayerBase;
    if-eqz v0, :cond_d

    .line 410
    invoke-virtual {v0, p1}, Landroid/media/PlayerBase;->setVolumeMultiplier(F)V

    .line 412
    :cond_d
    return-void
.end method

.method public greylist-max-o start()V
    .registers 2

    .line 384
    iget-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 385
    .local v0, "pb":Landroid/media/PlayerBase;
    if-eqz v0, :cond_d

    .line 386
    invoke-virtual {v0}, Landroid/media/PlayerBase;->playerStart()V

    .line 388
    :cond_d
    return-void
.end method

.method public greylist-max-o stop()V
    .registers 2

    .line 400
    iget-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 401
    .local v0, "pb":Landroid/media/PlayerBase;
    if-eqz v0, :cond_d

    .line 402
    invoke-virtual {v0}, Landroid/media/PlayerBase;->playerStop()V

    .line 404
    :cond_d
    return-void
.end method
