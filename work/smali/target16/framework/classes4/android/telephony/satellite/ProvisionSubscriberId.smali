.class public final Landroid/telephony/satellite/ProvisionSubscriberId;
.super Ljava/lang/Object;
.source "ProvisionSubscriberId.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/ProvisionSubscriberId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCarrierId:I

.field private blacklist mNiddApn:Ljava/lang/String;

.field private blacklist mSubscriberId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 75
    new-instance v0, Landroid/telephony/satellite/ProvisionSubscriberId$1;

    invoke-direct {v0}, Landroid/telephony/satellite/ProvisionSubscriberId$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/ProvisionSubscriberId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-direct {p0, p1}, Landroid/telephony/satellite/ProvisionSubscriberId;->readFromParcel(Landroid/os/Parcel;)V

    .line 61
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/ProvisionSubscriberId-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/satellite/ProvisionSubscriberId;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p2, p0, Landroid/telephony/satellite/ProvisionSubscriberId;->mCarrierId:I

    .line 55
    iput-object p1, p0, Landroid/telephony/satellite/ProvisionSubscriberId;->mSubscriberId:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Landroid/telephony/satellite/ProvisionSubscriberId;->mNiddApn:Ljava/lang/String;

    .line 57
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/ProvisionSubscriberId;->mSubscriberId:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/ProvisionSubscriberId;->mCarrierId:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/satellite/ProvisionSubscriberId;->mNiddApn:Ljava/lang/String;

    .line 160
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 149
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 150
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_31

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_31

    .line 151
    :cond_12
    check-cast p1, Landroid/telephony/satellite/ProvisionSubscriberId;

    .line 152
    iget-object v2, p0, Landroid/telephony/satellite/ProvisionSubscriberId;->mSubscriberId:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/satellite/ProvisionSubscriberId;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget v2, p0, Landroid/telephony/satellite/ProvisionSubscriberId;->mCarrierId:I

    iget v3, p1, Landroid/telephony/satellite/ProvisionSubscriberId;->mCarrierId:I

    if-ne v2, v3, :cond_2f

    iget-object v2, p0, Landroid/telephony/satellite/ProvisionSubscriberId;->mNiddApn:Ljava/lang/String;

    iget-object p1, p1, Landroid/telephony/satellite/ProvisionSubscriberId;->mNiddApn:Ljava/lang/String;

    .line 153
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    goto :goto_30

    :cond_2f
    move v0, v1

    .line 152
    :goto_30
    return v0

    .line 150
    :cond_31
    :goto_31
    return v1
.end method

.method public blacklist getCarrierId()I
    .registers 2

    .line 112
    iget v0, p0, Landroid/telephony/satellite/ProvisionSubscriberId;->mCarrierId:I

    return v0
.end method

.method public blacklist getNiddApn()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Landroid/telephony/satellite/ProvisionSubscriberId;->mNiddApn:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSubscriberId()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/telephony/satellite/ProvisionSubscriberId;->mSubscriberId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 144
    iget-object v0, p0, Landroid/telephony/satellite/ProvisionSubscriberId;->mSubscriberId:Ljava/lang/String;

    iget v1, p0, Landroid/telephony/satellite/ProvisionSubscriberId;->mCarrierId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/satellite/ProvisionSubscriberId;->mNiddApn:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    const-string v1, "SubscriberId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v1, p0, Landroid/telephony/satellite/ProvisionSubscriberId;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v2, "CarrierId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget v2, p0, Landroid/telephony/satellite/ProvisionSubscriberId;->mCarrierId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v1, "NiddApn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-object v1, p0, Landroid/telephony/satellite/ProvisionSubscriberId;->mNiddApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 69
    iget-object p2, p0, Landroid/telephony/satellite/ProvisionSubscriberId;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget p2, p0, Landroid/telephony/satellite/ProvisionSubscriberId;->mCarrierId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object p2, p0, Landroid/telephony/satellite/ProvisionSubscriberId;->mNiddApn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    return-void
.end method
