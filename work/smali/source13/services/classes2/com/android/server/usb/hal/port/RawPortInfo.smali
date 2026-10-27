.class public final Lcom/android/server/usb/hal/port/RawPortInfo;
.super Ljava/lang/Object;
.source "RawPortInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/usb/hal/port/RawPortInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public canChangeDataRole:Z

.field public canChangeMode:Z

.field public canChangePowerRole:Z

.field public contaminantDetectionStatus:I

.field public contaminantProtectionStatus:I

.field public currentDataRole:I

.field public currentMode:I

.field public currentPowerRole:I

.field public final portId:Ljava/lang/String;

.field public powerBrickConnectionStatus:I

.field public powerTransferLimited:Z

.field public final supportedContaminantProtectionModes:I

.field public final supportedModes:I

.field public supportsEnableContaminantPresenceDetection:Z

.field public supportsEnableContaminantPresenceProtection:Z

.field public usbDataStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 114
    new-instance v0, Lcom/android/server/usb/hal/port/RawPortInfo$1;

    invoke-direct {v0}, Lcom/android/server/usb/hal/port/RawPortInfo$1;-><init>()V

    sput-object v0, Lcom/android/server/usb/hal/port/RawPortInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "supportedModes"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->portId:Ljava/lang/String;

    .line 46
    iput p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedModes:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedContaminantProtectionModes:I

    .line 48
    iput-boolean v0, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceProtection:Z

    .line 49
    iput v0, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantProtectionStatus:I

    .line 50
    iput-boolean v0, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceDetection:Z

    .line 51
    iput v0, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantDetectionStatus:I

    .line 52
    iput v0, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->usbDataStatus:I

    .line 54
    iput-boolean v0, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerTransferLimited:Z

    .line 55
    iput v0, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerBrickConnectionStatus:I

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIZIZIZZIZIIZI)V
    .registers 33
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "supportedModes"    # I
    .param p3, "supportedContaminantProtectionModes"    # I
    .param p4, "currentMode"    # I
    .param p5, "canChangeMode"    # Z
    .param p6, "currentPowerRole"    # I
    .param p7, "canChangePowerRole"    # Z
    .param p8, "currentDataRole"    # I
    .param p9, "canChangeDataRole"    # Z
    .param p10, "supportsEnableContaminantPresenceProtection"    # Z
    .param p11, "contaminantProtectionStatus"    # I
    .param p12, "supportsEnableContaminantPresenceDetection"    # Z
    .param p13, "contaminantDetectionStatus"    # I
    .param p14, "usbDataStatus"    # I
    .param p15, "powerTransferLimited"    # Z
    .param p16, "powerBrickConnectionStatus"    # I

    .line 68
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->portId:Ljava/lang/String;

    .line 70
    move/from16 v2, p2

    iput v2, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedModes:I

    .line 71
    move/from16 v3, p3

    iput v3, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedContaminantProtectionModes:I

    .line 72
    move/from16 v4, p4

    iput v4, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentMode:I

    .line 73
    move/from16 v5, p5

    iput-boolean v5, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeMode:Z

    .line 74
    move/from16 v6, p6

    iput v6, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentPowerRole:I

    .line 75
    move/from16 v7, p7

    iput-boolean v7, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangePowerRole:Z

    .line 76
    move/from16 v8, p8

    iput v8, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentDataRole:I

    .line 77
    move/from16 v9, p9

    iput-boolean v9, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeDataRole:Z

    .line 78
    move/from16 v10, p10

    iput-boolean v10, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceProtection:Z

    .line 80
    move/from16 v11, p11

    iput v11, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantProtectionStatus:I

    .line 81
    move/from16 v12, p12

    iput-boolean v12, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceDetection:Z

    .line 83
    move/from16 v13, p13

    iput v13, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantDetectionStatus:I

    .line 84
    move/from16 v14, p14

    iput v14, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->usbDataStatus:I

    .line 85
    move/from16 v15, p15

    iput-boolean v15, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerTransferLimited:Z

    .line 86
    move/from16 v1, p16

    iput v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerBrickConnectionStatus:I

    .line 87
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 96
    iget-object v0, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->portId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget v0, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedModes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedContaminantProtectionModes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-boolean v0, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeMode:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 101
    iget v0, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentPowerRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-boolean v0, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangePowerRole:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 103
    iget v0, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentDataRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-boolean v0, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeDataRole:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 105
    iget-boolean v0, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceProtection:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 106
    iget v0, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantProtectionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-boolean v0, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceDetection:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 108
    iget v0, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantDetectionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->usbDataStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-boolean v0, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerTransferLimited:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 111
    iget v0, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerBrickConnectionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return-void
.end method
