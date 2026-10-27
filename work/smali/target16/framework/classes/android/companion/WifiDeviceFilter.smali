.class public final Landroid/companion/WifiDeviceFilter;
.super Ljava/lang/Object;
.source "WifiDeviceFilter.java"

# interfaces
.implements Landroid/companion/DeviceFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/WifiDeviceFilter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/companion/DeviceFilter<",
        "Landroid/net/wifi/ScanResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/WifiDeviceFilter;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sParcellingForNamePattern:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBssid:Landroid/net/MacAddress;

.field private final blacklist mBssidMask:Landroid/net/MacAddress;

.field private final greylist-max-o mNamePattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 144
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForPattern;

    .line 145
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/companion/WifiDeviceFilter;->sParcellingForNamePattern:Lcom/android/internal/util/Parcelling;

    .line 147
    sget-object v0, Landroid/companion/WifiDeviceFilter;->sParcellingForNamePattern:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_17

    .line 148
    new-instance v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForPattern;

    invoke-direct {v0}, Lcom/android/internal/util/Parcelling$BuiltIn$ForPattern;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/companion/WifiDeviceFilter;->sParcellingForNamePattern:Lcom/android/internal/util/Parcelling;

    .line 184
    :cond_17
    new-instance v0, Landroid/companion/WifiDeviceFilter$1;

    invoke-direct {v0}, Landroid/companion/WifiDeviceFilter$1;-><init>()V

    sput-object v0, Landroid/companion/WifiDeviceFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 172
    sget-object v1, Landroid/companion/WifiDeviceFilter;->sParcellingForNamePattern:Lcom/android/internal/util/Parcelling;

    invoke-interface {v1, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    .line 173
    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_16

    move-object v0, v2

    goto :goto_1e

    :cond_16
    sget-object v0, Landroid/net/MacAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/MacAddress;

    .line 174
    :goto_1e
    sget-object v3, Landroid/net/MacAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/MacAddress;

    .line 176
    iput-object v1, p0, Landroid/companion/WifiDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    .line 177
    iput-object v0, p0, Landroid/companion/WifiDeviceFilter;->mBssid:Landroid/net/MacAddress;

    .line 178
    iput-object p1, p0, Landroid/companion/WifiDeviceFilter;->mBssidMask:Landroid/net/MacAddress;

    .line 179
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/companion/WifiDeviceFilter;->mBssidMask:Landroid/net/MacAddress;

    invoke-static {p1, v2, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 181
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/regex/Pattern;Landroid/net/MacAddress;Landroid/net/MacAddress;)V
    .registers 4

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Landroid/companion/WifiDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    .line 87
    iput-object p2, p0, Landroid/companion/WifiDeviceFilter;->mBssid:Landroid/net/MacAddress;

    .line 88
    iput-object p3, p0, Landroid/companion/WifiDeviceFilter;->mBssidMask:Landroid/net/MacAddress;

    .line 89
    const-class p1, Landroid/annotation/NonNull;

    const/4 p2, 0x0

    iget-object p3, p0, Landroid/companion/WifiDeviceFilter;->mBssidMask:Landroid/net/MacAddress;

    invoke-static {p1, p2, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 91
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 127
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 128
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_35

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_35

    .line 129
    :cond_12
    check-cast p1, Landroid/companion/WifiDeviceFilter;

    .line 130
    iget-object v2, p0, Landroid/companion/WifiDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    iget-object v3, p1, Landroid/companion/WifiDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Landroid/companion/WifiDeviceFilter;->mBssid:Landroid/net/MacAddress;

    iget-object v3, p1, Landroid/companion/WifiDeviceFilter;->mBssid:Landroid/net/MacAddress;

    .line 131
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Landroid/companion/WifiDeviceFilter;->mBssidMask:Landroid/net/MacAddress;

    iget-object p1, p1, Landroid/companion/WifiDeviceFilter;->mBssidMask:Landroid/net/MacAddress;

    .line 132
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    goto :goto_34

    :cond_33
    move v0, v1

    .line 130
    :goto_34
    return v0

    .line 128
    :cond_35
    :goto_35
    return v1
.end method

.method public blacklist getBssid()Landroid/net/MacAddress;
    .registers 2

    .line 111
    iget-object v0, p0, Landroid/companion/WifiDeviceFilter;->mBssid:Landroid/net/MacAddress;

    return-object v0
.end method

.method public blacklist getBssidMask()Landroid/net/MacAddress;
    .registers 2

    .line 122
    iget-object v0, p0, Landroid/companion/WifiDeviceFilter;->mBssidMask:Landroid/net/MacAddress;

    return-object v0
.end method

.method public greylist-max-o getDeviceDisplayName(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .registers 2

    .line 73
    invoke-static {p1}, Landroid/companion/BluetoothDeviceFilterUtils;->getDeviceDisplayNameInternal(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getDeviceDisplayName(Landroid/os/Parcelable;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 40
    check-cast p1, Landroid/net/wifi/ScanResult;

    invoke-virtual {p0, p1}, Landroid/companion/WifiDeviceFilter;->getDeviceDisplayName(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o getMediumType()I
    .registers 2

    .line 79
    const/4 v0, 0x2

    return v0
.end method

.method public greylist-max-o getNamePattern()Ljava/util/regex/Pattern;
    .registers 2

    .line 101
    iget-object v0, p0, Landroid/companion/WifiDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 137
    nop

    .line 138
    iget-object v0, p0, Landroid/companion/WifiDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 139
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/companion/WifiDeviceFilter;->mBssid:Landroid/net/MacAddress;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 140
    mul-int/2addr v0, v1

    iget-object v1, p0, Landroid/companion/WifiDeviceFilter;->mBssidMask:Landroid/net/MacAddress;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 141
    return v0
.end method

.method public greylist-max-o matches(Landroid/net/wifi/ScanResult;)Z
    .registers 4

    .line 65
    invoke-virtual {p0}, Landroid/companion/WifiDeviceFilter;->getNamePattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/companion/BluetoothDeviceFilterUtils;->matchesName(Ljava/util/regex/Pattern;Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/companion/WifiDeviceFilter;->mBssid:Landroid/net/MacAddress;

    if-eqz v0, :cond_1e

    iget-object p1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object p1

    iget-object v0, p0, Landroid/companion/WifiDeviceFilter;->mBssid:Landroid/net/MacAddress;

    iget-object v1, p0, Landroid/companion/WifiDeviceFilter;->mBssidMask:Landroid/net/MacAddress;

    invoke-virtual {p1, v0, v1}, Landroid/net/MacAddress;->matches(Landroid/net/MacAddress;Landroid/net/MacAddress;)Z

    move-result p1

    if-eqz p1, :cond_20

    :cond_1e
    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    .line 65
    :goto_21
    return p1
.end method

.method public bridge synthetic blacklist matches(Landroid/os/Parcelable;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 40
    check-cast p1, Landroid/net/wifi/ScanResult;

    invoke-virtual {p0, p1}, Landroid/companion/WifiDeviceFilter;->matches(Landroid/net/wifi/ScanResult;)Z

    move-result p1

    return p1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 155
    nop

    .line 156
    iget-object v0, p0, Landroid/companion/WifiDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    int-to-byte v0, v0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 157
    :goto_9
    iget-object v1, p0, Landroid/companion/WifiDeviceFilter;->mBssid:Landroid/net/MacAddress;

    if-eqz v1, :cond_10

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    .line 158
    :cond_10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 159
    sget-object v0, Landroid/companion/WifiDeviceFilter;->sParcellingForNamePattern:Lcom/android/internal/util/Parcelling;

    iget-object v1, p0, Landroid/companion/WifiDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 160
    iget-object v0, p0, Landroid/companion/WifiDeviceFilter;->mBssid:Landroid/net/MacAddress;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/companion/WifiDeviceFilter;->mBssid:Landroid/net/MacAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 161
    :cond_23
    iget-object v0, p0, Landroid/companion/WifiDeviceFilter;->mBssidMask:Landroid/net/MacAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 162
    return-void
.end method
