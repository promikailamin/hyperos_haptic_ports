.class public final Landroid/companion/ObservingDevicePresenceRequest;
.super Ljava/lang/Object;
.source "ObservingDevicePresenceRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/ObservingDevicePresenceRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/ObservingDevicePresenceRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PARCEL_UUID_NOT_NULL:I = 0x1

.field private static final blacklist PARCEL_UUID_NULL:I


# instance fields
.field private final blacklist mAssociationId:I

.field private final blacklist mDeviceId:Landroid/companion/DeviceId;

.field private final blacklist mUuid:Landroid/os/ParcelUuid;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 130
    new-instance v0, Landroid/companion/ObservingDevicePresenceRequest$1;

    invoke-direct {v0}, Landroid/companion/ObservingDevicePresenceRequest$1;-><init>()V

    sput-object v0, Landroid/companion/ObservingDevicePresenceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/os/ParcelUuid;Landroid/companion/DeviceId;)V
    .registers 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Landroid/companion/ObservingDevicePresenceRequest;->mAssociationId:I

    .line 58
    iput-object p2, p0, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    .line 59
    iput-object p3, p0, Landroid/companion/ObservingDevicePresenceRequest;->mDeviceId:Landroid/companion/DeviceId;

    .line 60
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/os/ParcelUuid;Landroid/companion/DeviceId;Landroid/companion/ObservingDevicePresenceRequest-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/companion/ObservingDevicePresenceRequest;-><init>(ILandroid/os/ParcelUuid;Landroid/companion/DeviceId;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/ObservingDevicePresenceRequest;->mAssociationId:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 65
    iput-object v1, p0, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    goto :goto_1d

    .line 67
    :cond_13
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    iput-object v0, p0, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    .line 70
    :goto_1d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_35

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->associationVerification()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 71
    sget-object v0, Landroid/companion/DeviceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/DeviceId;

    iput-object p1, p0, Landroid/companion/ObservingDevicePresenceRequest;->mDeviceId:Landroid/companion/DeviceId;

    goto :goto_37

    .line 73
    :cond_35
    iput-object v1, p0, Landroid/companion/ObservingDevicePresenceRequest;->mDeviceId:Landroid/companion/DeviceId;

    .line 75
    :goto_37
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/ObservingDevicePresenceRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/companion/ObservingDevicePresenceRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 153
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 154
    :cond_4
    instance-of v1, p1, Landroid/companion/ObservingDevicePresenceRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_41

    check-cast p1, Landroid/companion/ObservingDevicePresenceRequest;

    .line 156
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->associationVerification()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 157
    iget-object v1, p0, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    iget-object v3, p1, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget v1, p0, Landroid/companion/ObservingDevicePresenceRequest;->mAssociationId:I

    iget v3, p1, Landroid/companion/ObservingDevicePresenceRequest;->mAssociationId:I

    if-ne v1, v3, :cond_2c

    iget-object v1, p0, Landroid/companion/ObservingDevicePresenceRequest;->mDeviceId:Landroid/companion/DeviceId;

    iget-object p1, p1, Landroid/companion/ObservingDevicePresenceRequest;->mDeviceId:Landroid/companion/DeviceId;

    .line 159
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v2

    .line 157
    :goto_2d
    return v0

    .line 162
    :cond_2e
    iget-object v1, p0, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    iget-object v3, p1, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    iget v1, p0, Landroid/companion/ObservingDevicePresenceRequest;->mAssociationId:I

    iget p1, p1, Landroid/companion/ObservingDevicePresenceRequest;->mAssociationId:I

    if-ne v1, p1, :cond_3f

    goto :goto_40

    :cond_3f
    move v0, v2

    :goto_40
    return v0

    .line 154
    :cond_41
    return v2
.end method

.method public whitelist getAssociationId()I
    .registers 2

    .line 83
    iget v0, p0, Landroid/companion/ObservingDevicePresenceRequest;->mAssociationId:I

    return v0
.end method

.method public whitelist getDeviceId()Landroid/companion/DeviceId;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 102
    iget-object v0, p0, Landroid/companion/ObservingDevicePresenceRequest;->mDeviceId:Landroid/companion/DeviceId;

    return-object v0
.end method

.method public whitelist getUuid()Landroid/os/ParcelUuid;
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 168
    iget v0, p0, Landroid/companion/ObservingDevicePresenceRequest;->mAssociationId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObservingDevicePresenceRequest { Association Id= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/ObservingDevicePresenceRequest;->mAssociationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ParcelUuid= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Device id= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/ObservingDevicePresenceRequest;->mDeviceId:Landroid/companion/DeviceId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 107
    iget v0, p0, Landroid/companion/ObservingDevicePresenceRequest;->mAssociationId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v0, p0, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_f

    .line 110
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 112
    :cond_f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object v0, p0, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 116
    :goto_17
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->associationVerification()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/companion/ObservingDevicePresenceRequest;->mDeviceId:Landroid/companion/DeviceId;

    if-eqz v0, :cond_2a

    .line 117
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v0, p0, Landroid/companion/ObservingDevicePresenceRequest;->mDeviceId:Landroid/companion/DeviceId;

    invoke-virtual {v0, p1, p2}, Landroid/companion/DeviceId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2d

    .line 120
    :cond_2a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    :goto_2d
    return-void
.end method
