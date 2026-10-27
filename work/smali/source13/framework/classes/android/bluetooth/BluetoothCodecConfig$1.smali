.class Landroid/bluetooth/BluetoothCodecConfig$1;
.super Ljava/lang/Object;
.source "BluetoothCodecConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothCodecConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BluetoothCodecConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothCodecConfig;
    .registers 32
    .param p1, "in"    # Landroid/os/Parcel;

    .line 476
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 477
    .local v15, "codecType":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 478
    .local v16, "codecPriority":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 479
    .local v17, "sampleRate":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 480
    .local v18, "bitsPerSample":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 481
    .local v19, "channelMode":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 482
    .local v20, "codecSpecific1":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 483
    .local v22, "codecSpecific2":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 484
    .local v24, "codecSpecific3":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .line 485
    .local v26, "codecSpecific4":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 486
    .local v28, "encoderFormat":I
    new-instance v29, Landroid/bluetooth/BluetoothCodecConfig;

    move-object/from16 v0, v29

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move-wide/from16 v6, v20

    move-wide/from16 v8, v22

    move-wide/from16 v10, v24

    move-wide/from16 v12, v26

    move/from16 v14, v28

    invoke-direct/range {v0 .. v14}, Landroid/bluetooth/BluetoothCodecConfig;-><init>(IIIIIJJJJI)V

    return-object v29
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 474
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothCodecConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/BluetoothCodecConfig;
    .registers 3
    .param p1, "size"    # I

    .line 494
    new-array v0, p1, [Landroid/bluetooth/BluetoothCodecConfig;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 474
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothCodecConfig$1;->newArray(I)[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p1

    return-object p1
.end method
