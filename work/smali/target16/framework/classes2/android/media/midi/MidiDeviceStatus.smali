.class public final Landroid/media/midi/MidiDeviceStatus;
.super Ljava/lang/Object;
.source "MidiDeviceStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/midi/MidiDeviceStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MidiDeviceStatus"


# instance fields
.field private final greylist-max-o mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

.field private final greylist-max-o mInputPortOpen:[Z

.field private final greylist-max-o mOutputPortOpenCount:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 114
    new-instance v0, Landroid/media/midi/MidiDeviceStatus$1;

    invoke-direct {v0}, Landroid/media/midi/MidiDeviceStatus$1;-><init>()V

    sput-object v0, Landroid/media/midi/MidiDeviceStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/media/midi/MidiDeviceInfo;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/media/midi/MidiDeviceStatus;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 57
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getInputPortCount()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mInputPortOpen:[Z

    .line 58
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/media/midi/MidiDeviceStatus;->mOutputPortOpenCount:[I

    .line 59
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/media/midi/MidiDeviceInfo;[Z[I)V
    .registers 6

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/media/midi/MidiDeviceStatus;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 44
    array-length p1, p2

    new-array p1, p1, [Z

    iput-object p1, p0, Landroid/media/midi/MidiDeviceStatus;->mInputPortOpen:[Z

    .line 45
    iget-object p1, p0, Landroid/media/midi/MidiDeviceStatus;->mInputPortOpen:[Z

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    array-length p1, p3

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/media/midi/MidiDeviceStatus;->mOutputPortOpenCount:[I

    .line 47
    iget-object p1, p0, Landroid/media/midi/MidiDeviceStatus;->mOutputPortOpenCount:[I

    array-length p2, p3

    invoke-static {p3, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    return-object v0
.end method

.method public whitelist getOutputPortOpenCount(I)I
    .registers 3

    .line 89
    iget-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mOutputPortOpenCount:[I

    aget p1, v0, p1

    return p1
.end method

.method public whitelist isInputPortOpen(I)Z
    .registers 3

    .line 78
    iget-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mInputPortOpen:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 94
    iget-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->getInputPortCount()I

    move-result v0

    .line 95
    iget-object v1, p0, Landroid/media/midi/MidiDeviceStatus;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v1}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result v1

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mInputPortOpen=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    const/4 v3, 0x0

    move v4, v3

    :goto_15
    const-string v5, ","

    if-ge v4, v0, :cond_2a

    .line 98
    iget-object v6, p0, Landroid/media/midi/MidiDeviceStatus;->mInputPortOpen:[Z

    aget-boolean v6, v6, v4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 99
    add-int/lit8 v6, v0, -0x1

    if-ge v4, v6, :cond_27

    .line 100
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 103
    :cond_2a
    const-string v0, "] mOutputPortOpenCount=["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    nop

    :goto_30
    if-ge v3, v1, :cond_43

    .line 105
    iget-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mOutputPortOpenCount:[I

    aget v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    add-int/lit8 v0, v1, -0x1

    if-ge v3, v0, :cond_40

    .line 107
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 110
    :cond_43
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 134
    iget-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 135
    iget-object p2, p0, Landroid/media/midi/MidiDeviceStatus;->mInputPortOpen:[Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 136
    iget-object p2, p0, Landroid/media/midi/MidiDeviceStatus;->mOutputPortOpenCount:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 137
    return-void
.end method
