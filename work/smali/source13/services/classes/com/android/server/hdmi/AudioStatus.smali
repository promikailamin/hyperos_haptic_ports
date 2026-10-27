.class public Lcom/android/server/hdmi/AudioStatus;
.super Ljava/lang/Object;
.source "AudioStatus.java"


# static fields
.field public static final MAX_VOLUME:I = 0x64

.field public static final MIN_VOLUME:I


# instance fields
.field mMute:Z

.field mVolume:I


# direct methods
.method public constructor <init>(IZ)V
    .registers 3
    .param p1, "volume"    # I
    .param p2, "mute"    # Z

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/android/server/hdmi/AudioStatus;->mVolume:I

    .line 36
    iput-boolean p2, p0, Lcom/android/server/hdmi/AudioStatus;->mMute:Z

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 49
    instance-of v0, p1, Lcom/android/server/hdmi/AudioStatus;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 50
    return v1

    .line 53
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/server/hdmi/AudioStatus;

    .line 54
    .local v0, "other":Lcom/android/server/hdmi/AudioStatus;
    iget v2, p0, Lcom/android/server/hdmi/AudioStatus;->mVolume:I

    iget v3, v0, Lcom/android/server/hdmi/AudioStatus;->mVolume:I

    if-ne v2, v3, :cond_16

    iget-boolean v2, p0, Lcom/android/server/hdmi/AudioStatus;->mMute:Z

    iget-boolean v3, v0, Lcom/android/server/hdmi/AudioStatus;->mMute:Z

    if-ne v2, v3, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public getMute()Z
    .registers 2

    .line 44
    iget-boolean v0, p0, Lcom/android/server/hdmi/AudioStatus;->mMute:Z

    return v0
.end method

.method public getVolume()I
    .registers 2

    .line 40
    iget v0, p0, Lcom/android/server/hdmi/AudioStatus;->mVolume:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/hdmi/AudioStatus;->mVolume:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/hdmi/AudioStatus;->mMute:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioStatus mVolume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/hdmi/AudioStatus;->mVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/hdmi/AudioStatus;->mMute:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
