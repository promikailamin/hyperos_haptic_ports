.class public final Landroid/companion/virtual/sensor/VirtualSensor;
.super Ljava/lang/Object;
.source "VirtualSensor.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/virtual/sensor/VirtualSensor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAdditionalInfoLock:Ljava/lang/Object;

.field private final blacklist mFlags:I

.field private final blacklist mHandle:I

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mToken:Landroid/os/IBinder;

.field private final blacklist mType:I

.field private final blacklist mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 192
    new-instance v0, Landroid/companion/virtual/sensor/VirtualSensor$1;

    invoke-direct {v0}, Landroid/companion/virtual/sensor/VirtualSensor$1;-><init>()V

    sput-object v0, Landroid/companion/virtual/sensor/VirtualSensor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;)V
    .registers 11

    .line 80
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/companion/virtual/sensor/VirtualSensor;-><init>(IILjava/lang/String;ILandroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V

    .line 81
    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;ILandroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    .registers 8

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mAdditionalInfoLock:Ljava/lang/Object;

    .line 66
    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mHandle:I

    .line 67
    iput p2, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mType:I

    .line 68
    iput-object p3, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mName:Ljava/lang/String;

    .line 69
    iput p4, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mFlags:I

    .line 70
    iput-object p5, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    .line 71
    iput-object p6, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mToken:Landroid/os/IBinder;

    .line 72
    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    .registers 13

    .line 58
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/companion/virtual/sensor/VirtualSensor;-><init>(IILjava/lang/String;ILandroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V

    .line 59
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mAdditionalInfoLock:Ljava/lang/Object;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mHandle:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mType:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mName:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mFlags:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/companion/virtual/IVirtualDevice$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDevice;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mToken:Landroid/os/IBinder;

    .line 90
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/virtual/sensor/VirtualSensor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/companion/virtual/sensor/VirtualSensor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDeviceId()I
    .registers 2

    .line 127
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0}, Landroid/companion/virtual/IVirtualDevice;->getDeviceId()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 128
    :catch_7
    move-exception v0

    .line 129
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getHandle()I
    .registers 2

    .line 100
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mHandle:I

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 110
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mType:I

    return v0
.end method

.method public whitelist sendAdditionalInfo(Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;)V
    .registers 5

    .line 176
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->virtualSensorAdditionalInfo()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 179
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_22

    .line 183
    :try_start_c
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mAdditionalInfoLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_1c

    .line 184
    :try_start_f
    iget-object v1, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v2, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1}, Landroid/companion/virtual/IVirtualDevice;->sendSensorAdditionalInfo(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;)Z

    .line 185
    monitor-exit v0

    .line 188
    nop

    .line 189
    return-void

    .line 185
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_19

    :try_start_1b
    throw p1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1c} :catch_1c

    .line 186
    :catch_1c
    move-exception p1

    .line 187
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 180
    :cond_22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Sensor additional info not supported."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 177
    :cond_2a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Sensor additional info not supported."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist sendEvent(Landroid/companion/virtual/sensor/VirtualSensorEvent;)V
    .registers 4

    .line 158
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Landroid/companion/virtual/IVirtualDevice;->sendSensorEvent(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorEvent;)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 161
    nop

    .line 162
    return-void

    .line 159
    :catch_9
    move-exception p1

    .line 160
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualSensor{ mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 140
    iget p2, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mHandle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget p2, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-object p2, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 143
    iget p2, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object p2, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {p2}, Landroid/companion/virtual/IVirtualDevice;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 145
    iget-object p2, p0, Landroid/companion/virtual/sensor/VirtualSensor;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 146
    return-void
.end method
