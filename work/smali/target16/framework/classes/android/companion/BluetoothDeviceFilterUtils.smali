.class public Landroid/companion/BluetoothDeviceFilterUtils;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilterUtils.java"


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "CDM_BluetoothDeviceFilterUtils"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o debugLogMatchResult(ZLandroid/bluetooth/BluetoothDevice;Ljava/lang/Object;)V
    .registers 4

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/companion/BluetoothDeviceFilterUtils;->getDeviceDisplayNameInternal(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p0, :cond_12

    const-string p0, " ~ "

    goto :goto_14

    :cond_12
    const-string p0, " !~ "

    :goto_14
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CDM_BluetoothDeviceFilterUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method private static greylist-max-o debugLogMatchResult(ZLandroid/net/wifi/ScanResult;Ljava/lang/Object;)V
    .registers 4

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/companion/BluetoothDeviceFilterUtils;->getDeviceDisplayNameInternal(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p0, :cond_12

    const-string p0, " ~ "

    goto :goto_14

    :cond_12
    const-string p0, " !~ "

    :goto_14
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CDM_BluetoothDeviceFilterUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method public static greylist-max-r getDeviceDisplayNameInternal(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .registers 2

    .line 136
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->firstNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-r getDeviceDisplayNameInternal(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object p0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->firstNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-r getDeviceMacAddress(Landroid/os/Parcelable;)Ljava/lang/String;
    .registers 4

    .line 146
    instance-of v0, p0, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_b

    .line 147
    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 148
    :cond_b
    instance-of v0, p0, Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_14

    .line 149
    check-cast p0, Landroid/net/wifi/ScanResult;

    iget-object p0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    return-object p0

    .line 150
    :cond_14
    instance-of v0, p0, Landroid/bluetooth/le/ScanResult;

    if-eqz v0, :cond_23

    .line 151
    check-cast p0, Landroid/bluetooth/le/ScanResult;

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-static {p0}, Landroid/companion/BluetoothDeviceFilterUtils;->getDeviceMacAddress(Landroid/os/Parcelable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 153
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown device type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o matchesAddress(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2

    .line 59
    if-eqz p0, :cond_11

    if-eqz p1, :cond_f

    .line 60
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    .line 62
    :goto_12
    return p0
.end method

.method static greylist-max-o matchesName(Ljava/util/regex/Pattern;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4

    .line 98
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 99
    goto :goto_1b

    .line 100
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_9

    .line 101
    move v0, v1

    goto :goto_1b

    .line 103
    :cond_9
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    .line 104
    if-eqz p1, :cond_1a

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, v1

    .line 107
    :goto_1b
    return v0
.end method

.method static greylist-max-o matchesName(Ljava/util/regex/Pattern;Landroid/net/wifi/ScanResult;)Z
    .registers 4

    .line 112
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 113
    goto :goto_19

    .line 114
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_9

    .line 115
    move v0, v1

    goto :goto_19

    .line 117
    :cond_9
    iget-object p1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 118
    if-eqz p1, :cond_18

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_19

    :cond_18
    move v0, v1

    .line 121
    :goto_19
    return v0
.end method

.method static greylist-max-o matchesServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 8

    .line 79
    nop

    .line 80
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    if-nez v0, :cond_c

    .line 81
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    goto :goto_14

    :cond_c
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 82
    :goto_14
    const/4 v0, 0x1

    if-nez p0, :cond_18

    .line 83
    goto :goto_42

    .line 85
    :cond_18
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_1d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 86
    if-nez p1, :cond_2d

    const/4 v3, 0x0

    goto :goto_31

    :cond_2d
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    .line 87
    :goto_31
    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/companion/BluetoothDeviceFilterUtils;->uuidsMaskedEquals(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 88
    move v1, v0

    .line 90
    :cond_40
    goto :goto_1d

    .line 85
    :cond_41
    move v0, v1

    .line 93
    :goto_42
    return v0
.end method

.method static greylist-max-o matchesServiceUuids(Ljava/util/List;Ljava/util/List;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Landroid/bluetooth/BluetoothDevice;",
            ")Z"
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 68
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 69
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 70
    invoke-static {v2, v3, p2}, Landroid/companion/BluetoothDeviceFilterUtils;->matchesServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 71
    return v0

    .line 67
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 74
    :cond_1e
    const/4 p0, 0x1

    return p0
.end method

.method static greylist-max-o patternFromString(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .registers 1

    .line 55
    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    :cond_4
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    :goto_8
    return-object p0
.end method

.method static greylist-max-o patternToString(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 1

    .line 50
    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p0

    :goto_8
    return-object p0
.end method

.method public static blacklist uuidsMaskedEquals(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z
    .registers 9

    .line 167
    if-nez p2, :cond_7

    .line 168
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 170
    :cond_7
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    and-long/2addr v0, v2

    .line 171
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    and-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_35

    .line 172
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    and-long/2addr v0, v2

    .line 173
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide p0

    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    and-long/2addr p0, v2

    cmp-long p0, v0, p0

    if-nez p0, :cond_35

    const/4 p0, 0x1

    goto :goto_36

    :cond_35
    const/4 p0, 0x0

    .line 170
    :goto_36
    return p0
.end method
