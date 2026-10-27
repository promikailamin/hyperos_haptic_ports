.class Landroid/media/audiopolicy/AudioProductStrategy$1;
.super Ljava/lang/Object;
.source "AudioProductStrategy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioProductStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/audiopolicy/AudioProductStrategy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/audiopolicy/AudioProductStrategy;
    .registers 9

    .line 800
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 801
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 802
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 803
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 804
    new-array v4, v0, [Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    .line 805
    const/4 v5, 0x0

    :goto_13
    if-ge v5, v0, :cond_22

    .line 806
    sget-object v6, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    aput-object v6, v4, v5

    .line 805
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 808
    :cond_22
    new-instance v0, Landroid/media/audiopolicy/AudioProductStrategy;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/media/audiopolicy/AudioProductStrategy;-><init>(Ljava/lang/String;II[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;Landroid/media/audiopolicy/AudioProductStrategy-IA;)V

    return-object v0
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

    .line 797
    invoke-virtual {p0, p1}, Landroid/media/audiopolicy/AudioProductStrategy$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/audiopolicy/AudioProductStrategy;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/audiopolicy/AudioProductStrategy;
    .registers 2

    .line 813
    new-array p1, p1, [Landroid/media/audiopolicy/AudioProductStrategy;

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

    .line 797
    invoke-virtual {p0, p1}, Landroid/media/audiopolicy/AudioProductStrategy$1;->newArray(I)[Landroid/media/audiopolicy/AudioProductStrategy;

    move-result-object p1

    return-object p1
.end method
