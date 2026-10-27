.class public Landroid/hardware/usb/PortStatus;
.super Ljava/lang/Object;
.source "PortStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/usb/PortStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public canChangeDataRole:Z

.field public canChangeMode:Z

.field public canChangePowerRole:Z

.field public complianceWarnings:[I

.field public contaminantDetectionStatus:B

.field public contaminantProtectionStatus:B

.field public currentDataRole:B

.field public currentMode:B

.field public currentPowerRole:B

.field public plugOrientation:I

.field public portName:Ljava/lang/String;

.field public powerBrickStatus:B

.field public powerTransferLimited:Z

.field public supportedAltModes:[Landroid/hardware/usb/AltModeData;

.field public supportedContaminantProtectionModes:[B

.field public supportedModes:[B

.field public supportsComplianceWarnings:Z

.field public supportsEnableContaminantPresenceDetection:Z

.field public supportsEnableContaminantPresenceProtection:Z

.field public usbDataStatus:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Landroid/hardware/usb/PortStatus$1;

    invoke-direct {v0}, Landroid/hardware/usb/PortStatus$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/PortStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-byte v0, p0, Landroid/hardware/usb/PortStatus;->currentDataRole:B

    .line 14
    iput-byte v0, p0, Landroid/hardware/usb/PortStatus;->currentPowerRole:B

    .line 15
    iput-byte v0, p0, Landroid/hardware/usb/PortStatus;->currentMode:B

    .line 16
    iput-boolean v0, p0, Landroid/hardware/usb/PortStatus;->canChangeMode:Z

    .line 17
    iput-boolean v0, p0, Landroid/hardware/usb/PortStatus;->canChangeDataRole:Z

    .line 18
    iput-boolean v0, p0, Landroid/hardware/usb/PortStatus;->canChangePowerRole:Z

    .line 21
    iput-boolean v0, p0, Landroid/hardware/usb/PortStatus;->supportsEnableContaminantPresenceProtection:Z

    .line 22
    iput-byte v0, p0, Landroid/hardware/usb/PortStatus;->contaminantProtectionStatus:B

    .line 23
    iput-boolean v0, p0, Landroid/hardware/usb/PortStatus;->supportsEnableContaminantPresenceDetection:Z

    .line 24
    iput-byte v0, p0, Landroid/hardware/usb/PortStatus;->contaminantDetectionStatus:B

    .line 26
    iput-boolean v0, p0, Landroid/hardware/usb/PortStatus;->powerTransferLimited:Z

    .line 28
    iput-boolean v0, p0, Landroid/hardware/usb/PortStatus;->supportsComplianceWarnings:Z

    .line 29
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/hardware/usb/PortStatus;->complianceWarnings:[I

    .line 30
    iput v0, p0, Landroid/hardware/usb/PortStatus;->plugOrientation:I

    .line 31
    new-array v0, v0, [Landroid/hardware/usb/AltModeData;

    iput-object v0, p0, Landroid/hardware/usb/PortStatus;->supportedAltModes:[Landroid/hardware/usb/AltModeData;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 131
    iget-object v0, p0, Landroid/hardware/usb/PortStatus;->supportedAltModes:[Landroid/hardware/usb/AltModeData;

    invoke-virtual {p0, v0}, Landroid/hardware/usb/PortStatus;->describeContents(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final describeContents(Ljava/lang/Object;)I
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 136
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_19

    .line 138
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_c
    if-ge v0, v1, :cond_18

    aget-object v3, p1, v0

    .line 139
    invoke-virtual {p0, v3}, Landroid/hardware/usb/PortStatus;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_18
    return v2

    .line 143
    :cond_19
    instance-of p0, p1, Landroid/os/Parcelable;

    if-eqz p0, :cond_24

    .line 144
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    return p0

    :cond_24
    return v0
.end method

.method public final getStability()I
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    .line 80
    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_1ff

    .line 81
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_1fd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    :goto_1a
    add-int/2addr v0, v1

    .line 125
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 123
    :cond_1f
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 82
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/usb/PortStatus;->portName:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_1fd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3c

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_36

    goto :goto_1a

    .line 123
    :cond_36
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 84
    :cond_3c
    :try_start_3c
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/usb/PortStatus;->currentDataRole:B

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_1fd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_53

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4d

    goto :goto_1a

    .line 123
    :cond_4d
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 86
    :cond_53
    :try_start_53
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/usb/PortStatus;->currentPowerRole:B

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_1fd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_6a

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_64

    goto :goto_1a

    .line 123
    :cond_64
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 88
    :cond_6a
    :try_start_6a
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/usb/PortStatus;->currentMode:B

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_74
    .catchall {:try_start_6a .. :try_end_74} :catchall_1fd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_81

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7b

    goto :goto_1a

    .line 123
    :cond_7b
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :cond_81
    :try_start_81
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/usb/PortStatus;->canChangeMode:Z

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8b
    .catchall {:try_start_81 .. :try_end_8b} :catchall_1fd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_98

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_92

    goto :goto_1a

    .line 123
    :cond_92
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 92
    :cond_98
    :try_start_98
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/usb/PortStatus;->canChangeDataRole:Z

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a2
    .catchall {:try_start_98 .. :try_end_a2} :catchall_1fd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b0

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_aa

    goto/16 :goto_1a

    .line 123
    :cond_aa
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 94
    :cond_b0
    :try_start_b0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/usb/PortStatus;->canChangePowerRole:Z

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ba
    .catchall {:try_start_b0 .. :try_end_ba} :catchall_1fd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c8

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c2

    goto/16 :goto_1a

    .line 123
    :cond_c2
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 96
    :cond_c8
    :try_start_c8
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/usb/PortStatus;->supportedModes:[B

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d2
    .catchall {:try_start_c8 .. :try_end_d2} :catchall_1fd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e0

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_da

    goto/16 :goto_1a

    .line 123
    :cond_da
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :cond_e0
    :try_start_e0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/usb/PortStatus;->supportedContaminantProtectionModes:[B

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ea
    .catchall {:try_start_e0 .. :try_end_ea} :catchall_1fd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f8

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_f2

    goto/16 :goto_1a

    .line 123
    :cond_f2
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 100
    :cond_f8
    :try_start_f8
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/usb/PortStatus;->supportsEnableContaminantPresenceProtection:Z

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_102
    .catchall {:try_start_f8 .. :try_end_102} :catchall_1fd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_110

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10a

    goto/16 :goto_1a

    .line 123
    :cond_10a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 102
    :cond_110
    :try_start_110
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/usb/PortStatus;->contaminantProtectionStatus:B

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_11a
    .catchall {:try_start_110 .. :try_end_11a} :catchall_1fd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_128

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_122

    goto/16 :goto_1a

    .line 123
    :cond_122
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 104
    :cond_128
    :try_start_128
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/usb/PortStatus;->supportsEnableContaminantPresenceDetection:Z

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_132
    .catchall {:try_start_128 .. :try_end_132} :catchall_1fd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_140

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_13a

    goto/16 :goto_1a

    .line 123
    :cond_13a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 106
    :cond_140
    :try_start_140
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/usb/PortStatus;->contaminantDetectionStatus:B

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14a
    .catchall {:try_start_140 .. :try_end_14a} :catchall_1fd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_158

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_152

    goto/16 :goto_1a

    .line 123
    :cond_152
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 108
    :cond_158
    :try_start_158
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/usb/PortStatus;->usbDataStatus:[B

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_162
    .catchall {:try_start_158 .. :try_end_162} :catchall_1fd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_170

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_16a

    goto/16 :goto_1a

    .line 123
    :cond_16a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 110
    :cond_170
    :try_start_170
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/usb/PortStatus;->powerTransferLimited:Z

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_17a
    .catchall {:try_start_170 .. :try_end_17a} :catchall_1fd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_188

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_182

    goto/16 :goto_1a

    .line 123
    :cond_182
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 112
    :cond_188
    :try_start_188
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/usb/PortStatus;->powerBrickStatus:B

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_192
    .catchall {:try_start_188 .. :try_end_192} :catchall_1fd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1a0

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_19a

    goto/16 :goto_1a

    .line 123
    :cond_19a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 114
    :cond_1a0
    :try_start_1a0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/usb/PortStatus;->supportsComplianceWarnings:Z

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1aa
    .catchall {:try_start_1a0 .. :try_end_1aa} :catchall_1fd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1b8

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1b2

    goto/16 :goto_1a

    .line 123
    :cond_1b2
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 116
    :cond_1b8
    :try_start_1b8
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/usb/PortStatus;->complianceWarnings:[I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1c2
    .catchall {:try_start_1b8 .. :try_end_1c2} :catchall_1fd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1d0

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1ca

    goto/16 :goto_1a

    .line 123
    :cond_1ca
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 118
    :cond_1d0
    :try_start_1d0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/usb/PortStatus;->plugOrientation:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1da
    .catchall {:try_start_1d0 .. :try_end_1da} :catchall_1fd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1e8

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1e2

    goto/16 :goto_1a

    .line 123
    :cond_1e2
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 120
    :cond_1e8
    :try_start_1e8
    sget-object v2, Landroid/hardware/usb/AltModeData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/usb/AltModeData;

    iput-object v2, p0, Landroid/hardware/usb/PortStatus;->supportedAltModes:[Landroid/hardware/usb/AltModeData;
    :try_end_1f2
    .catchall {:try_start_1e8 .. :try_end_1f2} :catchall_1fd

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f7

    goto/16 :goto_1a

    .line 123
    :cond_1f7
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1fd
    move-exception p0

    goto :goto_207

    .line 80
    :cond_1ff
    :try_start_1ff
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_207
    .catchall {:try_start_1ff .. :try_end_207} :catchall_1fd

    :goto_207
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_210

    .line 123
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_210
    add-int/2addr v0, v1

    .line 125
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 126
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-object v1, p0, Landroid/hardware/usb/PortStatus;->portName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-byte v1, p0, Landroid/hardware/usb/PortStatus;->currentDataRole:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 52
    iget-byte v1, p0, Landroid/hardware/usb/PortStatus;->currentPowerRole:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 53
    iget-byte v1, p0, Landroid/hardware/usb/PortStatus;->currentMode:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 54
    iget-boolean v1, p0, Landroid/hardware/usb/PortStatus;->canChangeMode:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 55
    iget-boolean v1, p0, Landroid/hardware/usb/PortStatus;->canChangeDataRole:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 56
    iget-boolean v1, p0, Landroid/hardware/usb/PortStatus;->canChangePowerRole:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 57
    iget-object v1, p0, Landroid/hardware/usb/PortStatus;->supportedModes:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 58
    iget-object v1, p0, Landroid/hardware/usb/PortStatus;->supportedContaminantProtectionModes:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 59
    iget-boolean v1, p0, Landroid/hardware/usb/PortStatus;->supportsEnableContaminantPresenceProtection:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 60
    iget-byte v1, p0, Landroid/hardware/usb/PortStatus;->contaminantProtectionStatus:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 61
    iget-boolean v1, p0, Landroid/hardware/usb/PortStatus;->supportsEnableContaminantPresenceDetection:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 62
    iget-byte v1, p0, Landroid/hardware/usb/PortStatus;->contaminantDetectionStatus:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 63
    iget-object v1, p0, Landroid/hardware/usb/PortStatus;->usbDataStatus:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 64
    iget-boolean v1, p0, Landroid/hardware/usb/PortStatus;->powerTransferLimited:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 65
    iget-byte v1, p0, Landroid/hardware/usb/PortStatus;->powerBrickStatus:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 66
    iget-boolean v1, p0, Landroid/hardware/usb/PortStatus;->supportsComplianceWarnings:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 67
    iget-object v1, p0, Landroid/hardware/usb/PortStatus;->complianceWarnings:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 68
    iget v1, p0, Landroid/hardware/usb/PortStatus;->plugOrientation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-object p0, p0, Landroid/hardware/usb/PortStatus;->supportedAltModes:[Landroid/hardware/usb/AltModeData;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    .line 72
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
