.class Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup$1;
.super Ljava/lang/Object;
.source "AudioProductStrategy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;
    .registers 9

    .line 1114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1118
    new-array v4, v3, [Landroid/media/AudioAttributes;

    .line 1119
    const/4 v5, 0x0

    :goto_13
    if-ge v5, v3, :cond_22

    .line 1120
    sget-object v6, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioAttributes;

    aput-object v6, v4, v5

    .line 1119
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 1122
    :cond_22
    new-instance p1, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    invoke-direct {p1, v0, v1, v2, v4}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;-><init>(III[Landroid/media/AudioAttributes;)V

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

    .line 1111
    invoke-virtual {p0, p1}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;
    .registers 2

    .line 1127
    new-array p1, p1, [Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

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

    .line 1111
    invoke-virtual {p0, p1}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup$1;->newArray(I)[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    move-result-object p1

    return-object p1
.end method
