.class public final Lcom/android/net/module/util/NetworkCapabilitiesUtils;
.super Ljava/lang/Object;
.source "NetworkCapabilitiesUtils.java"


# static fields
.field private static final blacklist DISPLAY_TRANSPORT_PRIORITIES:[I

.field private static final blacklist FORCE_RESTRICTED_CAPABILITIES:J = 0x24400000L

.field public static final blacklist RESTRICTED_CAPABILITIES:J = 0x2e88007bcL

.field public static final blacklist TYPE_TEST:I = 0x12

.field public static final blacklist UNRESTRICTED_CAPABILITIES:J = 0x1043L


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 75
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->DISPLAY_TRANSPORT_PRIORITIES:[I

    return-void

    :array_a
    .array-data 4
        0x4
        0x0
        0x5
        0x2
        0x1
        0x3
        0x8
        0xa
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist deduceTransportTypeForLegacyNetworkType(I)I
    .registers 1

    .line 176
    sparse-switch p0, :sswitch_data_12

    .line 186
    const/4 p0, -0x1

    goto :goto_10

    .line 185
    :sswitch_5
    const/4 p0, 0x7

    goto :goto_10

    .line 180
    :sswitch_7
    const/4 p0, 0x4

    goto :goto_10

    .line 179
    :sswitch_9
    const/4 p0, 0x3

    goto :goto_10

    .line 184
    :sswitch_b
    const/4 p0, 0x2

    goto :goto_10

    .line 177
    :sswitch_d
    const/4 p0, 0x1

    goto :goto_10

    .line 178
    :sswitch_f
    const/4 p0, 0x0

    .line 176
    :goto_10
    return p0

    nop

    :sswitch_data_12
    .sparse-switch
        0x0 -> :sswitch_f
        0x1 -> :sswitch_d
        0x7 -> :sswitch_b
        0x9 -> :sswitch_9
        0x10 -> :sswitch_b
        0x11 -> :sswitch_7
        0x12 -> :sswitch_5
    .end sparse-switch
.end method

.method public static blacklist getDisplayTransport([I)I
    .registers 7

    .line 148
    sget-object v0, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->DISPLAY_TRANSPORT_PRIORITIES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_13

    aget v4, v0, v3

    .line 149
    invoke-static {p0, v4}, Lcom/android/net/module/util/CollectionUtils;->contains([II)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 150
    return v4

    .line 148
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 154
    :cond_13
    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1a

    .line 160
    aget p0, p0, v2

    return p0

    .line 158
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No transport in the provided array"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist inferRestrictedCapability(J)Z
    .registers 9

    .line 212
    const-wide/32 v0, 0x24400000

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 213
    return v1

    .line 218
    :cond_c
    const-wide/16 v4, 0x1043

    and-long/2addr v4, p0

    cmp-long v0, v4, v2

    const/4 v4, 0x0

    if-eqz v0, :cond_15

    .line 219
    return v4

    .line 223
    :cond_15
    const-wide v5, 0x2e88007bcL

    and-long/2addr p0, v5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_20

    .line 224
    return v1

    .line 226
    :cond_20
    return v4
.end method

.method public static blacklist inferRestrictedCapability(Landroid/net/NetworkCapabilities;)Z
    .registers 3

    .line 199
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object p0

    invoke-static {p0}, Lcom/android/net/module/util/BitUtils;->packBits([I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->inferRestrictedCapability(J)Z

    move-result p0

    return p0
.end method
