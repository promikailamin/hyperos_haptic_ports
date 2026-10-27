.class Lcom/android/server/usb/hal/port/RawPortInfo$1;
.super Ljava/lang/Object;
.source "RawPortInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/hal/port/RawPortInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/server/usb/hal/port/RawPortInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/server/usb/hal/port/RawPortInfo;
    .registers 33
    .param p1, "in"    # Landroid/os/Parcel;

    .line 118
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 119
    .local v17, "id":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 120
    .local v18, "supportedModes":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 121
    .local v19, "supportedContaminantProtectionModes":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 122
    .local v20, "currentMode":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    move v5, v1

    goto :goto_1b

    :cond_1a
    move v5, v2

    .line 123
    .local v5, "canChangeMode":Z
    :goto_1b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 124
    .local v21, "currentPowerRole":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_27

    move v7, v1

    goto :goto_28

    :cond_27
    move v7, v2

    .line 125
    .local v7, "canChangePowerRole":Z
    :goto_28
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 126
    .local v22, "currentDataRole":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_34

    move v9, v1

    goto :goto_35

    :cond_34
    move v9, v2

    .line 127
    .local v9, "canChangeDataRole":Z
    :goto_35
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v23

    .local v23, "supportsEnableContaminantPresenceProtection":Z
    move/from16 v10, v23

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .local v24, "contaminantProtectionStatus":I
    move/from16 v11, v24

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v25

    .local v25, "supportsEnableContaminantPresenceDetection":Z
    move/from16 v12, v25

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .local v26, "contaminantDetectionStatus":I
    move/from16 v13, v26

    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .local v27, "usbDataStatus":I
    move/from16 v14, v27

    .line 132
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v28

    .local v28, "powerTransferLimited":Z
    move/from16 v15, v28

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .local v29, "powerBrickConnectionStatus":I
    move/from16 v16, v29

    .line 134
    new-instance v30, Lcom/android/server/usb/hal/port/RawPortInfo;

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v6, v21

    move/from16 v8, v22

    invoke-direct/range {v0 .. v16}, Lcom/android/server/usb/hal/port/RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZIIZI)V

    return-object v30
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/usb/hal/port/RawPortInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/server/usb/hal/port/RawPortInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/server/usb/hal/port/RawPortInfo;
    .registers 3
    .param p1, "size"    # I

    .line 147
    new-array v0, p1, [Lcom/android/server/usb/hal/port/RawPortInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/usb/hal/port/RawPortInfo$1;->newArray(I)[Lcom/android/server/usb/hal/port/RawPortInfo;

    move-result-object p1

    return-object p1
.end method
