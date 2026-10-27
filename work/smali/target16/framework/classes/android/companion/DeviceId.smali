.class public final Landroid/companion/DeviceId;
.super Ljava/lang/Object;
.source "DeviceId.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/DeviceId$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/DeviceId;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist CUSTOM_ID_LENGTH_LIMIT:I = 0x400


# instance fields
.field private final blacklist mCustomId:Ljava/lang/String;

.field private final blacklist mKey:[B

.field private final blacklist mMacAddress:Landroid/net/MacAddress;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 128
    new-instance v0, Landroid/companion/DeviceId$1;

    invoke-direct {v0}, Landroid/companion/DeviceId$1;-><init>()V

    sput-object v0, Landroid/companion/DeviceId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 114
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    goto :goto_14

    .line 117
    :cond_12
    iput-object v1, p0, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    .line 119
    :goto_14
    sget-object v0, Landroid/net/MacAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/MacAddress;

    iput-object v0, p0, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2b

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Landroid/companion/DeviceId;->mKey:[B

    goto :goto_2d

    .line 123
    :cond_2b
    iput-object v1, p0, Landroid/companion/DeviceId;->mKey:[B

    .line 125
    :goto_2d
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/DeviceId-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/companion/DeviceId;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/net/MacAddress;[B)V
    .registers 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    .line 52
    iput-object p3, p0, Landroid/companion/DeviceId;->mKey:[B

    .line 53
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 150
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 151
    :cond_4
    instance-of v1, p1, Landroid/companion/DeviceId;

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    check-cast p1, Landroid/companion/DeviceId;

    .line 153
    iget-object v1, p0, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    iget-object v3, p1, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    iget-object v3, p1, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    .line 154
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/companion/DeviceId;->mKey:[B

    iget-object p1, p1, Landroid/companion/DeviceId;->mKey:[B

    .line 155
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v2

    .line 153
    :goto_2b
    return v0

    .line 151
    :cond_2c
    return v2
.end method

.method public whitelist getCustomId()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getKey()[B
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/companion/DeviceId;->mKey:[B

    return-object v0
.end method

.method public whitelist getMacAddress()Landroid/net/MacAddress;
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    return-object v0
.end method

.method public blacklist getMacAddressAsString()Ljava/lang/String;
    .registers 3

    .line 58
    iget-object v0, p0, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 143
    iget-object v0, p0, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    iget-object v1, p0, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 144
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/companion/DeviceId;->mKey:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceId{,mCustomId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mMacAddress= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

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

    .line 97
    iget-object p2, p0, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_f

    .line 98
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object p2, p0, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_12

    .line 101
    :cond_f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    :goto_12
    iget-object p2, p0, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 104
    iget-object p2, p0, Landroid/companion/DeviceId;->mKey:[B

    if-eqz p2, :cond_24

    .line 105
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-object p2, p0, Landroid/companion/DeviceId;->mKey:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_27

    .line 108
    :cond_24
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    :goto_27
    return-void
.end method
