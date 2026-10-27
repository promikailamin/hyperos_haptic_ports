.class public final Landroid/companion/virtual/VirtualDevice;
.super Ljava/lang/Object;
.source "VirtualDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/virtual/VirtualDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDisplayName:Ljava/lang/CharSequence;

.field private final blacklist mId:I

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPersistentId:Ljava/lang/String;

.field private final blacklist mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 225
    new-instance v0, Landroid/companion/virtual/VirtualDevice$1;

    invoke-direct {v0}, Landroid/companion/virtual/VirtualDevice$1;-><init>()V

    sput-object v0, Landroid/companion/virtual/VirtualDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/companion/virtual/IVirtualDevice;ILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 54
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/companion/virtual/VirtualDevice;-><init>(Landroid/companion/virtual/IVirtualDevice;ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method

.method public constructor blacklist <init>(Landroid/companion/virtual/IVirtualDevice;ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 6

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-lez p2, :cond_10

    .line 70
    iput-object p1, p0, Landroid/companion/virtual/VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    .line 71
    iput p2, p0, Landroid/companion/virtual/VirtualDevice;->mId:I

    .line 72
    iput-object p3, p0, Landroid/companion/virtual/VirtualDevice;->mPersistentId:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Landroid/companion/virtual/VirtualDevice;->mName:Ljava/lang/String;

    .line 74
    iput-object p5, p0, Landroid/companion/virtual/VirtualDevice;->mDisplayName:Ljava/lang/CharSequence;

    .line 75
    return-void

    .line 67
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "VirtualDevice ID must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/companion/virtual/IVirtualDevice$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDevice;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/VirtualDevice;->mId:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/VirtualDevice;->mPersistentId:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/VirtualDevice;->mName:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/virtual/VirtualDevice;->mDisplayName:Ljava/lang/CharSequence;

    .line 83
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/virtual/VirtualDevice-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/companion/virtual/VirtualDevice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDeviceId()I
    .registers 2

    .line 98
    iget v0, p0, Landroid/companion/virtual/VirtualDevice;->mId:I

    return v0
.end method

.method public whitelist getDisplayIds()[I
    .registers 2

    .line 140
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0}, Landroid/companion/virtual/IVirtualDevice;->getDisplayIds()[I

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 141
    :catch_7
    move-exception v0

    .line 142
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getDisplayName()Ljava/lang/CharSequence;
    .registers 2

    .line 129
    iget-object v0, p0, Landroid/companion/virtual/VirtualDevice;->mDisplayName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Landroid/companion/virtual/VirtualDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPersistentDeviceId()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/companion/virtual/VirtualDevice;->mPersistentId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist hasCustomAudioInputSupport()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 172
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0}, Landroid/companion/virtual/IVirtualDevice;->hasCustomAudioInputSupport()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 173
    :catch_7
    move-exception v0

    .line 174
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist hasCustomCameraSupport()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 193
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/companion/virtual/IVirtualDevice;->getDevicePolicy(I)I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_d

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1

    .line 194
    :catch_d
    move-exception v0

    .line 195
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist hasCustomSensorSupport()Z
    .registers 4

    .line 158
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/companion/virtual/IVirtualDevice;->getDevicePolicy(I)I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_c

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    move v1, v2

    :cond_b
    return v1

    .line 159
    :catch_c
    move-exception v0

    .line 160
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualDevice( mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDevice;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPersistentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDevice;->mPersistentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDisplayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDevice;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 206
    iget-object p2, p0, Landroid/companion/virtual/VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {p2}, Landroid/companion/virtual/IVirtualDevice;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 207
    iget p2, p0, Landroid/companion/virtual/VirtualDevice;->mId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget-object p2, p0, Landroid/companion/virtual/VirtualDevice;->mPersistentId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 209
    iget-object p2, p0, Landroid/companion/virtual/VirtualDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 210
    iget-object p2, p0, Landroid/companion/virtual/VirtualDevice;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 211
    return-void
.end method
