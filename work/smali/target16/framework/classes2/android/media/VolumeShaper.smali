.class public final Landroid/media/VolumeShaper;
.super Ljava/lang/Object;
.source "VolumeShaper.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumeShaper$Operation;,
        Landroid/media/VolumeShaper$Configuration;,
        Landroid/media/VolumeShaper$State;
    }
.end annotation


# instance fields
.field private greylist-max-o mId:I

.field private final greylist-max-o mWeakPlayerBase:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/PlayerBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Landroid/media/VolumeShaper$Configuration;Landroid/media/PlayerBase;)V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/VolumeShaper;->mWeakPlayerBase:Ljava/lang/ref/WeakReference;

    .line 57
    new-instance p2, Landroid/media/VolumeShaper$Operation$Builder;

    invoke-direct {p2}, Landroid/media/VolumeShaper$Operation$Builder;-><init>()V

    invoke-virtual {p2}, Landroid/media/VolumeShaper$Operation$Builder;->defer()Landroid/media/VolumeShaper$Operation$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/media/VolumeShaper;->applyPlayer(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    move-result p1

    iput p1, p0, Landroid/media/VolumeShaper;->mId:I

    .line 58
    return-void
.end method

.method private greylist-max-o applyPlayer(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
    .registers 5

    .line 175
    iget-object v0, p0, Landroid/media/VolumeShaper;->mWeakPlayerBase:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_43

    .line 176
    iget-object v0, p0, Landroid/media/VolumeShaper;->mWeakPlayerBase:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 177
    if-eqz v0, :cond_3b

    .line 180
    invoke-virtual {v0, p1, p2}, Landroid/media/PlayerBase;->playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    move-result p1

    .line 181
    nop

    .line 184
    if-gez p1, :cond_3a

    .line 189
    const/16 p2, -0x26

    if-ne p1, p2, :cond_21

    .line 190
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "player or VolumeShaper deallocated"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 192
    :cond_21
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid configuration or operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 195
    :cond_3a
    return p1

    .line 178
    :cond_3b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "player deallocated"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 182
    :cond_43
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "uninitialized shaper"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o getStatePlayer(I)Landroid/media/VolumeShaper$State;
    .registers 3

    .line 206
    iget-object v0, p0, Landroid/media/VolumeShaper;->mWeakPlayerBase:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_26

    .line 207
    iget-object v0, p0, Landroid/media/VolumeShaper;->mWeakPlayerBase:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 208
    if-eqz v0, :cond_1e

    .line 211
    invoke-virtual {v0, p1}, Landroid/media/PlayerBase;->playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;

    move-result-object p1

    .line 212
    nop

    .line 215
    if-eqz p1, :cond_16

    .line 218
    return-object p1

    .line 216
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "shaper cannot be found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 209
    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "player deallocated"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 213
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "uninitialized shaper"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist apply(Landroid/media/VolumeShaper$Operation;)V
    .registers 4

    .line 81
    new-instance v0, Landroid/media/VolumeShaper$Configuration;

    iget v1, p0, Landroid/media/VolumeShaper;->mId:I

    invoke-direct {v0, v1}, Landroid/media/VolumeShaper$Configuration;-><init>(I)V

    invoke-direct {p0, v0, p1}, Landroid/media/VolumeShaper;->applyPlayer(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    .line 82
    return-void
.end method

.method public whitelist test-api close()V
    .registers 3

    .line 147
    :try_start_0
    new-instance v0, Landroid/media/VolumeShaper$Configuration;

    iget v1, p0, Landroid/media/VolumeShaper;->mId:I

    invoke-direct {v0, v1}, Landroid/media/VolumeShaper$Configuration;-><init>(I)V

    new-instance v1, Landroid/media/VolumeShaper$Operation$Builder;

    invoke-direct {v1}, Landroid/media/VolumeShaper$Operation$Builder;-><init>()V

    .line 149
    invoke-virtual {v1}, Landroid/media/VolumeShaper$Operation$Builder;->terminate()Landroid/media/VolumeShaper$Operation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v1

    .line 147
    invoke-direct {p0, v0, v1}, Landroid/media/VolumeShaper;->applyPlayer(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_17} :catch_18

    .line 152
    goto :goto_19

    .line 150
    :catch_18
    move-exception v0

    .line 153
    :goto_19
    iget-object v0, p0, Landroid/media/VolumeShaper;->mWeakPlayerBase:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_22

    .line 154
    iget-object v0, p0, Landroid/media/VolumeShaper;->mWeakPlayerBase:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 156
    :cond_22
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 160
    invoke-virtual {p0}, Landroid/media/VolumeShaper;->close()V

    .line 161
    return-void
.end method

.method greylist-max-o getId()I
    .registers 2

    .line 61
    iget v0, p0, Landroid/media/VolumeShaper;->mId:I

    return v0
.end method

.method public whitelist getVolume()F
    .registers 2

    .line 130
    iget v0, p0, Landroid/media/VolumeShaper;->mId:I

    invoke-direct {p0, v0}, Landroid/media/VolumeShaper;->getStatePlayer(I)Landroid/media/VolumeShaper$State;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/VolumeShaper$State;->getVolume()F

    move-result v0

    return v0
.end method

.method public whitelist replace(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;Z)V
    .registers 5

    .line 112
    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    invoke-direct {v0, p2}, Landroid/media/VolumeShaper$Operation$Builder;-><init>(Landroid/media/VolumeShaper$Operation;)V

    iget p2, p0, Landroid/media/VolumeShaper;->mId:I

    .line 114
    invoke-virtual {v0, p2, p3}, Landroid/media/VolumeShaper$Operation$Builder;->replace(IZ)Landroid/media/VolumeShaper$Operation$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object p2

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/media/VolumeShaper;->applyPlayer(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    move-result p1

    iput p1, p0, Landroid/media/VolumeShaper;->mId:I

    .line 115
    return-void
.end method
