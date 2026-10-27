.class public final Landroid/bluetooth/BluetoothClass;
.super Ljava/lang/Object;
.source "BluetoothClass.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothClass$Device;,
        Landroid/bluetooth/BluetoothClass$Service;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothClass;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o ERROR:I = -0x1000000

.field public static final whitelist PROFILE_A2DP:I = 0x1

.field public static final whitelist PROFILE_A2DP_SINK:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROFILE_HEADSET:I = 0x0

.field public static final whitelist PROFILE_HID:I = 0x3

.field public static final whitelist PROFILE_NAP:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROFILE_OPP:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROFILE_PANU:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mClass:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 98
    new-instance v0, Landroid/bluetooth/BluetoothClass$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothClass$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothClass;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-p <init>(I)V
    .registers 2
    .param p1, "classInt"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    .line 73
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist doesClassMatch(I)Z
    .registers 6
    .param p1, "profile"    # I

    .line 356
    const/high16 v0, 0x40000

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_16

    .line 357
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 358
    return v2

    .line 363
    :cond_d
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_7a

    .line 370
    return v1

    .line 368
    :sswitch_15
    return v2

    .line 372
    :cond_16
    const/4 v3, 0x6

    if-ne p1, v3, :cond_2b

    .line 373
    const/high16 v0, 0x80000

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 374
    return v2

    .line 379
    :cond_22
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_8c

    .line 385
    return v1

    .line 383
    :sswitch_2a
    return v2

    .line 387
    :cond_2b
    if-nez p1, :cond_3d

    .line 390
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 391
    return v2

    .line 394
    :cond_34
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_9a

    .line 400
    return v1

    .line 398
    :sswitch_3c
    return v2

    .line 402
    :cond_3d
    const/4 v0, 0x2

    if-ne p1, v0, :cond_52

    .line 403
    const/high16 v0, 0x100000

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 404
    return v2

    .line 407
    :cond_49
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_a8

    .line 423
    return v1

    .line 421
    :sswitch_51
    return v2

    .line 425
    :cond_52
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5f

    .line 426
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    const/16 v3, 0x500

    if-ne v0, v3, :cond_5e

    move v1, v2

    :cond_5e
    return v1

    .line 427
    :cond_5f
    const/4 v0, 0x4

    if-eq p1, v0, :cond_67

    const/4 v0, 0x5

    if-ne p1, v0, :cond_66

    goto :goto_67

    .line 434
    :cond_66
    return v1

    .line 429
    :cond_67
    :goto_67
    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 430
    return v2

    .line 432
    :cond_70
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    const/16 v3, 0x300

    if-ne v0, v3, :cond_79

    move v1, v2

    :cond_79
    return v1

    :sswitch_data_7a
    .sparse-switch
        0x414 -> :sswitch_15
        0x418 -> :sswitch_15
        0x420 -> :sswitch_15
        0x428 -> :sswitch_15
    .end sparse-switch

    :sswitch_data_8c
    .sparse-switch
        0x424 -> :sswitch_2a
        0x428 -> :sswitch_2a
        0x42c -> :sswitch_2a
    .end sparse-switch

    :sswitch_data_9a
    .sparse-switch
        0x404 -> :sswitch_3c
        0x408 -> :sswitch_3c
        0x420 -> :sswitch_3c
    .end sparse-switch

    :sswitch_data_a8
    .sparse-switch
        0x100 -> :sswitch_51
        0x104 -> :sswitch_51
        0x108 -> :sswitch_51
        0x10c -> :sswitch_51
        0x110 -> :sswitch_51
        0x114 -> :sswitch_51
        0x118 -> :sswitch_51
        0x200 -> :sswitch_51
        0x204 -> :sswitch_51
        0x208 -> :sswitch_51
        0x20c -> :sswitch_51
        0x210 -> :sswitch_51
        0x214 -> :sswitch_51
    .end sparse-switch
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 77
    instance-of v0, p1, Landroid/bluetooth/BluetoothClass;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 78
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    move-object v2, p1

    check-cast v2, Landroid/bluetooth/BluetoothClass;

    iget v2, v2, Landroid/bluetooth/BluetoothClass;->mClass:I

    if-ne v0, v2, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1

    .line 80
    :cond_10
    return v1
.end method

.method public greylist-max-o getClassOfDevice()I
    .registers 2

    .line 295
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    return v0
.end method

.method public greylist-max-o getClassOfDeviceBytes()[B
    .registers 4

    .line 315
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 316
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    .line 317
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 321
    .local v0, "bytes":[B
    array-length v1, v0

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1
.end method

.method public whitelist getDeviceClass()I
    .registers 2

    .line 279
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1ffc

    return v0
.end method

.method public whitelist getMajorDeviceClass()I
    .registers 2

    .line 266
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1f00

    return v0
.end method

.method public whitelist hasService(I)Z
    .registers 4
    .param p1, "service"    # I

    .line 150
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    const v1, 0xffe000

    and-int/2addr v0, v1

    and-int/2addr v0, p1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 85
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 90
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 111
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return-void
.end method
