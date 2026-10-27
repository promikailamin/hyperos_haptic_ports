.class public Lcom/miui/mishare/RemoteDevice;
.super Ljava/lang/Object;
.source "RemoteDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/RemoteDevice$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/mishare/RemoteDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist KEY_BLUETOOTH_LE_MAC_ADDRESS:Ljava/lang/String; = "ble_ad"

.field public static final blacklist KEY_DEVICE_ACCOUNT:Ljava/lang/String; = "device_account"

.field public static final blacklist KEY_DEVICE_CODE:Ljava/lang/String; = "dc"

.field public static final blacklist KEY_DEVICE_MANUFACTURE:Ljava/lang/String; = "manufacture"

.field public static final blacklist KEY_DEVICE_MODEL:Ljava/lang/String; = "model"

.field public static final blacklist KEY_GLOBAL_DEVICE:Ljava/lang/String; = "global_device"

.field public static final blacklist KEY_ICON_COLOR:Ljava/lang/String; = "ic"

.field public static final blacklist KEY_MANUFACTURE_CODE:Ljava/lang/String; = "mc"

.field public static final blacklist KEY_NICKNAME:Ljava/lang/String; = "nickname"

.field public static final blacklist KEY_NICKNAME_HAS_MORE:Ljava/lang/String; = "nickname_has_more"

.field public static final blacklist KEY_PORT:Ljava/lang/String; = "p"

.field public static final blacklist KEY_RSSI:Ljava/lang/String; = "rssi"

.field public static final blacklist KEY_STATUS:Ljava/lang/String; = "s"

.field public static final blacklist KEY_SUPPORTED_GUIDING_NETWORK_TYPE:Ljava/lang/String; = "sgnt"

.field public static final blacklist KEY_SUPPORT_5G:Ljava/lang/String; = "5g"

.field public static final blacklist KEY_UWB_HIT:Ljava/lang/String; = "uwb_hit"

.field public static final blacklist KEY_UWB_RANK:Ljava/lang/String; = "uwb_rank"

.field public static final blacklist KEY_VENDOR_ID:Ljava/lang/String; = "verdor_id"

.field public static final blacklist KEY_WIFI_AP_5G:Ljava/lang/String; = "ap_5g"

.field public static final blacklist KEY_WIFI_AP_SSID:Ljava/lang/String; = "ap_ssid"

.field public static final blacklist KEY_WIFI_P2P_FREQUENCY:Ljava/lang/String; = "p2p_freq"

.field public static final blacklist KEY_WIFI_P2P_MAC_ADDRESS:Ljava/lang/String; = "p2p_ad"


# instance fields
.field private blacklist mDeviceId:Ljava/lang/String;

.field private blacklist mExtras:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Lcom/miui/mishare/RemoteDevice$1;

    invoke-direct {v0}, Lcom/miui/mishare/RemoteDevice$1;-><init>()V

    sput-object v0, Lcom/miui/mishare/RemoteDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/RemoteDevice;->mDeviceId:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/RemoteDevice;->mExtras:Landroid/os/Bundle;

    .line 61
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/miui/mishare/RemoteDevice;->mDeviceId:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/miui/mishare/RemoteDevice;->mExtras:Landroid/os/Bundle;

    .line 102
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/os/Bundle;Lcom/miui/mishare/RemoteDevice-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/miui/mishare/RemoteDevice;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 106
    instance-of v0, p1, Lcom/miui/mishare/RemoteDevice;

    if-eqz v0, :cond_10

    .line 107
    move-object v0, p1

    check-cast v0, Lcom/miui/mishare/RemoteDevice;

    iget-object v0, v0, Lcom/miui/mishare/RemoteDevice;->mDeviceId:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/mishare/RemoteDevice;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 109
    :cond_10
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist getDeviceId()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/miui/mishare/RemoteDevice;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/miui/mishare/RemoteDevice;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/miui/mishare/RemoteDevice;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isPC()Z
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/miui/mishare/RemoteDevice;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_10

    const/4 v1, -0x1

    const-string v2, "sgnt"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/mishare/RemoteDevice;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 65
    iget-object v0, p0, Lcom/miui/mishare/RemoteDevice;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/miui/mishare/RemoteDevice;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 67
    return-void
.end method
