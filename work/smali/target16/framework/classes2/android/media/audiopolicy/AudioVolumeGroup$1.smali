.class Landroid/media/audiopolicy/AudioVolumeGroup$1;
.super Ljava/lang/Object;
.source "AudioVolumeGroup.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioVolumeGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/audiopolicy/AudioVolumeGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/audiopolicy/AudioVolumeGroup;
    .registers 9

    .line 189
    const-string v0, "in Parcel must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 193
    new-array v3, v2, [Landroid/media/AudioAttributes;

    .line 194
    const/4 v4, 0x0

    move v5, v4

    :goto_15
    if-ge v5, v2, :cond_24

    .line 195
    sget-object v6, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioAttributes;

    aput-object v6, v3, v5

    .line 194
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 197
    :cond_24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 198
    new-array v5, v2, [I

    .line 199
    nop

    :goto_2b
    if-ge v4, v2, :cond_36

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    aput v6, v5, v4

    .line 199
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 202
    :cond_36
    new-instance p1, Landroid/media/audiopolicy/AudioVolumeGroup;

    invoke-direct {p1, v0, v1, v3, v5}, Landroid/media/audiopolicy/AudioVolumeGroup;-><init>(Ljava/lang/String;I[Landroid/media/AudioAttributes;[I)V

    return-object p1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 186
    invoke-virtual {p0, p1}, Landroid/media/audiopolicy/AudioVolumeGroup$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/audiopolicy/AudioVolumeGroup;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/audiopolicy/AudioVolumeGroup;
    .registers 2

    .line 207
    new-array p1, p1, [Landroid/media/audiopolicy/AudioVolumeGroup;

    return-object p1
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 186
    invoke-virtual {p0, p1}, Landroid/media/audiopolicy/AudioVolumeGroup$1;->newArray(I)[Landroid/media/audiopolicy/AudioVolumeGroup;

    move-result-object p1

    return-object p1
.end method
