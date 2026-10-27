.class public Lcom/miui/enterprise/Restrictions;
.super Lcom/miui/enterprise/RestrictionsHelper$Stub;
.source "Restrictions.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "Restrictions"

.field private static final blacklist whiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/enterprise/Restrictions;->whiteList:Ljava/util/List;

    .line 23
    const-string v1, "disallow_key_back"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    const-string v1, "disallow_key_menu"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    const-string v1, "disallow_key_home"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    const-string v1, "disallow_screencapture"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    const-string v1, "disallow_landscape_statusbar"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/miui/enterprise/RestrictionsHelper$Stub;-><init>()V

    return-void
.end method

.method private static blacklist getControlState(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static blacklist isRestrictionState(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 127
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 128
    return v1

    .line 130
    :cond_6
    invoke-static {p0, p1}, Lcom/miui/enterprise/Restrictions;->getControlState(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 131
    .local v0, "state":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Restrictions"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    if-eqz v0, :cond_2b

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2c

    :cond_2b
    const/4 v1, 0x1

    :cond_2c
    return v1
.end method


# virtual methods
.method public whitelist handleBluetoothChange(Landroid/content/Context;Z)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isOpen"    # Z

    .line 75
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 76
    return v1

    .line 78
    :cond_6
    const-string v0, "bluetooth_state"

    invoke-static {p1, v0}, Lcom/miui/enterprise/Restrictions;->getControlState(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 79
    .local v0, "bluetoothState":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bluetooth restrict state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Restrictions"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v2, 0x1

    if-eqz p2, :cond_2a

    if-nez v0, :cond_2a

    .line 81
    return v2

    .line 83
    :cond_2a
    if-nez p2, :cond_30

    const/4 v3, 0x4

    if-ne v0, v3, :cond_30

    .line 84
    return v2

    .line 86
    :cond_30
    return v1
.end method

.method public whitelist hasAirplaneRestriction(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 123
    const-string v0, "airplane_state"

    invoke-static {p1, v0}, Lcom/miui/enterprise/Restrictions;->isRestrictionState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist hasGPSRestriction(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 115
    const-string v0, "gps_state"

    invoke-static {p1, v0}, Lcom/miui/enterprise/Restrictions;->isRestrictionState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist hasKeyCodeRestriction(Landroid/content/Context;II)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keycode"    # I
    .param p3, "userId"    # I

    .line 137
    sparse-switch p2, :sswitch_data_14

    .line 149
    const/4 v0, 0x0

    return v0

    .line 143
    :sswitch_5
    const-string v0, "disallow_key_menu"

    .line 144
    .local v0, "key":Ljava/lang/String;
    goto :goto_e

    .line 139
    .end local v0    # "key":Ljava/lang/String;
    :sswitch_8
    const-string v0, "disallow_key_back"

    .line 140
    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_e

    .line 146
    .end local v0    # "key":Ljava/lang/String;
    :sswitch_b
    const-string v0, "disallow_key_home"

    .line 147
    .restart local v0    # "key":Ljava/lang/String;
    nop

    .line 151
    :goto_e
    invoke-virtual {p0, p1, v0, p3}, Lcom/miui/enterprise/Restrictions;->hasRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    return v1

    nop

    :sswitch_data_14
    .sparse-switch
        0x3 -> :sswitch_b
        0x4 -> :sswitch_8
        0x52 -> :sswitch_5
        0xbb -> :sswitch_5
    .end sparse-switch
.end method

.method public whitelist hasNFCRestriction(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 119
    const-string v0, "nfc_state"

    invoke-static {p1, v0}, Lcom/miui/enterprise/Restrictions;->isRestrictionState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/miui/enterprise/Restrictions;->whiteList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    .line 32
    invoke-static {p1, p2, v2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_11

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    return v1

    .line 35
    :cond_13
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v0, :cond_18

    .line 36
    return v2

    .line 38
    :cond_18
    invoke-static {p1, p2, v2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    return v1
.end method

.method public whitelist hasRestriction(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 42
    sget-object v0, Lcom/miui/enterprise/Restrictions;->whiteList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    .line 43
    invoke-static {p1, p2, v2, p3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_11

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    return v1

    .line 46
    :cond_13
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v0, :cond_18

    .line 47
    return v2

    .line 49
    :cond_18
    invoke-static {p1, p2, v2, p3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    return v1
.end method

.method public whitelist hasWifiRestriction(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 90
    const-string v0, "wifi_state"

    invoke-static {p1, v0}, Lcom/miui/enterprise/Restrictions;->isRestrictionState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist isCameraRestricted(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v0, :cond_6

    .line 58
    const/4 v0, 0x0

    return v0

    .line 60
    :cond_6
    const-string v0, "disallow_camera"

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/Restrictions;->hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 61
    .local v0, "isRestricted":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera is restricted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Restrictions"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return v0
.end method

.method public blacklist isMountDisallowed(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 97
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 98
    return v1

    .line 100
    :cond_6
    iget-object v0, p2, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    const/4 v2, 0x1

    const-string v3, "Restrictions"

    if-eqz v0, :cond_23

    iget-object v0, p2, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    iget v0, v0, Landroid/os/storage/DiskInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_23

    .line 101
    const-string v0, "disallow_sdcard"

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/Restrictions;->hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 103
    const-string v0, "Sdcard is restricted"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return v2

    .line 106
    :cond_23
    iget-object v0, p2, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v0, :cond_3d

    iget-object v0, p2, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    iget v0, v0, Landroid/os/storage/DiskInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3d

    .line 107
    const-string v0, "disable_usb_device"

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/Restrictions;->hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 108
    const-string v0, "Usb device is restricted"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return v2

    .line 111
    :cond_3d
    return v1
.end method

.method public whitelist isUsbDeviceRestricted(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v0, :cond_6

    .line 67
    const/4 v0, 0x0

    return v0

    .line 69
    :cond_6
    const-string v0, "disable_usb_device"

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/Restrictions;->hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 70
    .local v0, "isRestricted":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Usb device is restricted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Restrictions"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return v0
.end method
