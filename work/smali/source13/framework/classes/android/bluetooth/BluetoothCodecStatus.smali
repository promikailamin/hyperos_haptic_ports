.class public final Landroid/bluetooth/BluetoothCodecStatus;
.super Ljava/lang/Object;
.source "BluetoothCodecStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothCodecStatus$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothCodecStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EXTRA_CODEC_STATUS:Ljava/lang/String; = "android.bluetooth.extra.CODEC_STATUS"


# instance fields
.field private final greylist-max-o mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

.field private final blacklist mCodecsLocalCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCodecsSelectableCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 168
    new-instance v0, Landroid/bluetooth/BluetoothCodecStatus$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothCodecStatus$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothCodecStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/bluetooth/BluetoothCodecConfig;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .param p1, "codecConfig"    # Landroid/bluetooth/BluetoothCodecConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p2, "codecsLocalCapabilities":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothCodecConfig;>;"
    .local p3, "codecsSelectableCapabilities":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothCodecConfig;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    .line 57
    iput-object p2, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:Ljava/util/List;

    .line 58
    iput-object p3, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:Ljava/util/List;

    .line 59
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Landroid/bluetooth/BluetoothCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothCodecConfig;

    iput-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    .line 63
    sget-object v0, Landroid/bluetooth/BluetoothCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:Ljava/util/List;

    .line 64
    sget-object v0, Landroid/bluetooth/BluetoothCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:Ljava/util/List;

    .line 65
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothCodecStatus-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothCodecStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist sameCapabilities(Ljava/util/List;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;)Z"
        }
    .end annotation

    .line 89
    .local p0, "c1":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothCodecConfig;>;"
    .local p1, "c2":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothCodecConfig;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_7

    .line 90
    if-nez p1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0

    .line 92
    :cond_7
    if-nez p1, :cond_a

    .line 93
    return v0

    .line 95
    :cond_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_15

    .line 96
    return v0

    .line 98
    :cond_15
    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 69
    instance-of v0, p1, Landroid/bluetooth/BluetoothCodecStatus;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 70
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothCodecStatus;

    .line 71
    .local v0, "other":Landroid/bluetooth/BluetoothCodecStatus;
    iget-object v2, v0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    iget-object v3, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, v0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:Ljava/util/List;

    iget-object v3, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:Ljava/util/List;

    .line 72
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothCodecStatus;->sameCapabilities(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, v0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:Ljava/util/List;

    iget-object v3, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:Ljava/util/List;

    .line 73
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothCodecStatus;->sameCapabilities(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    nop

    .line 71
    :goto_29
    return v1

    .line 76
    .end local v0    # "other":Landroid/bluetooth/BluetoothCodecStatus;
    :cond_2a
    return v1
.end method

.method public whitelist getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;
    .registers 2

    .line 196
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    return-object v0
.end method

.method public whitelist getCodecsLocalCapabilities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:Ljava/util/List;

    if-nez v0, :cond_9

    .line 204
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_a

    :cond_9
    nop

    .line 203
    :goto_a
    return-object v0
.end method

.method public whitelist getCodecsSelectableCapabilities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:Ljava/util/List;

    if-nez v0, :cond_9

    .line 212
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_a

    :cond_9
    nop

    .line 211
    :goto_a
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 143
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isCodecConfigSelectable(Landroid/bluetooth/BluetoothCodecConfig;)Z
    .registers 9
    .param p1, "codecConfig"    # Landroid/bluetooth/BluetoothCodecConfig;

    .line 110
    const/4 v0, 0x0

    if-eqz p1, :cond_60

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->hasSingleSampleRate()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 111
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->hasSingleBitsPerSample()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->hasSingleChannelMode()Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_60

    .line 114
    :cond_16
    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothCodecConfig;

    .line 115
    .local v2, "selectableConfig":Landroid/bluetooth/BluetoothCodecConfig;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v3

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v4

    if-eq v3, v4, :cond_33

    .line 116
    goto :goto_1c

    .line 118
    :cond_33
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getSampleRate()I

    move-result v3

    .line 119
    .local v3, "sampleRate":I
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getSampleRate()I

    move-result v4

    and-int/2addr v4, v3

    if-nez v4, :cond_41

    if-eqz v3, :cond_41

    .line 121
    goto :goto_1c

    .line 123
    :cond_41
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getBitsPerSample()I

    move-result v4

    .line 124
    .local v4, "bitsPerSample":I
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getBitsPerSample()I

    move-result v5

    and-int/2addr v5, v4

    if-nez v5, :cond_4f

    if-eqz v4, :cond_4f

    .line 126
    goto :goto_1c

    .line 128
    :cond_4f
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getChannelMode()I

    move-result v5

    .line 129
    .local v5, "channelMode":I
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getChannelMode()I

    move-result v6

    and-int/2addr v6, v5

    if-nez v6, :cond_5d

    if-eqz v5, :cond_5d

    .line 131
    goto :goto_1c

    .line 133
    :cond_5d
    const/4 v0, 0x1

    return v0

    .line 135
    .end local v2    # "selectableConfig":Landroid/bluetooth/BluetoothCodecConfig;
    .end local v3    # "sampleRate":I
    .end local v4    # "bitsPerSample":I
    .end local v5    # "channelMode":I
    :cond_5f
    return v0

    .line 112
    :cond_60
    :goto_60
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mCodecConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mCodecsLocalCapabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mCodecsSelectableCapabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 187
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 188
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 189
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 190
    return-void
.end method
