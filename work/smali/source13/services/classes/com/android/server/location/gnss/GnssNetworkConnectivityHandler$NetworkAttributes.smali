.class Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;
.super Ljava/lang/Object;
.source "GnssNetworkConnectivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkAttributes"
.end annotation


# instance fields
.field private mApn:Ljava/lang/String;

.field private mCapabilities:Landroid/net/NetworkCapabilities;

.field private mType:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmApn(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->mApn:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCapabilities(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;)Landroid/net/NetworkCapabilities;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->mCapabilities:Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmType(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;)I
    .registers 1

    iget p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->mType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmApn(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->mApn:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCapabilities(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;Landroid/net/NetworkCapabilities;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->mCapabilities:Landroid/net/NetworkCapabilities;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmType(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->mType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetCapabilityFlags(Landroid/net/NetworkCapabilities;)S
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->getCapabilityFlags(Landroid/net/NetworkCapabilities;)S

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smhasCapabilitiesChanged(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->hasCapabilitiesChanged(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .registers 2

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->mType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;-><init>()V

    return-void
.end method

.method private static getCapabilityFlags(Landroid/net/NetworkCapabilities;)S
    .registers 3
    .param p0, "capabilities"    # Landroid/net/NetworkCapabilities;

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "capabilityFlags":S
    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 170
    or-int/lit8 v1, v0, 0x2

    int-to-short v0, v1

    .line 172
    :cond_c
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 173
    or-int/lit8 v1, v0, 0x1

    int-to-short v0, v1

    .line 175
    :cond_17
    return v0
.end method

.method private static hasCapabilitiesChanged(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p0, "curCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p1, "newCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 150
    const/4 v0, 0x1

    if-eqz p0, :cond_1b

    if-nez p1, :cond_6

    goto :goto_1b

    .line 155
    :cond_6
    const/16 v1, 0x12

    invoke-static {p0, p1, v1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->hasCapabilityChanged(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;I)Z

    move-result v1

    if-nez v1, :cond_19

    const/16 v1, 0xb

    .line 157
    invoke-static {p0, p1, v1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->hasCapabilityChanged(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;I)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    nop

    .line 155
    :goto_1a
    return v0

    .line 151
    :cond_1b
    :goto_1b
    return v0
.end method

.method private static hasCapabilityChanged(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;I)Z
    .registers 5
    .param p0, "curCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p1, "newCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "capability"    # I

    .line 163
    invoke-virtual {p0, p2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    .line 164
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 163
    :goto_d
    return v0
.end method
