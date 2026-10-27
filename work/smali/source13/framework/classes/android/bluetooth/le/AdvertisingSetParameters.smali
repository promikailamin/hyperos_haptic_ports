.class public final Landroid/bluetooth/le/AdvertisingSetParameters;
.super Ljava/lang/Object;
.source "AdvertisingSetParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/AdvertisingSetParameters$Builder;,
        Landroid/bluetooth/le/AdvertisingSetParameters$AddressTypeStatus;
    }
.end annotation


# static fields
.field public static final whitelist ADDRESS_TYPE_DEFAULT:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ADDRESS_TYPE_PUBLIC:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ADDRESS_TYPE_RANDOM:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/AdvertisingSetParameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist INTERVAL_HIGH:I = 0x640

.field public static final whitelist INTERVAL_LOW:I = 0xa0

.field public static final whitelist INTERVAL_MAX:I = 0xffffff

.field public static final whitelist INTERVAL_MEDIUM:I = 0x190

.field public static final whitelist INTERVAL_MIN:I = 0xa0

.field private static final greylist-max-o LIMITED_ADVERTISING_MAX_MILLIS:I = 0x2bf20

.field public static final whitelist TX_POWER_HIGH:I = 0x1

.field public static final whitelist TX_POWER_LOW:I = -0xf

.field public static final whitelist TX_POWER_MAX:I = 0x1

.field public static final whitelist TX_POWER_MEDIUM:I = -0x7

.field public static final whitelist TX_POWER_MIN:I = -0x7f

.field public static final whitelist TX_POWER_ULTRA_LOW:I = -0x15


# instance fields
.field private final greylist-max-o mConnectable:Z

.field private final greylist-max-o mIncludeTxPower:Z

.field private final greylist-max-o mInterval:I

.field private final greylist-max-o mIsAnonymous:Z

.field private final greylist-max-o mIsLegacy:Z

.field private final blacklist mOwnAddressType:I

.field private final greylist-max-o mPrimaryPhy:I

.field private final greylist-max-o mScannable:Z

.field private final greylist-max-o mSecondaryPhy:I

.field private final greylist-max-o mTxPowerLevel:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 285
    new-instance v0, Landroid/bluetooth/le/AdvertisingSetParameters$1;

    invoke-direct {v0}, Landroid/bluetooth/le/AdvertisingSetParameters$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/AdvertisingSetParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mConnectable:Z

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    goto :goto_19

    :cond_18
    move v0, v2

    :goto_19
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mScannable:Z

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    move v0, v1

    goto :goto_24

    :cond_23
    move v0, v2

    :goto_24
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsLegacy:Z

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2e

    move v0, v1

    goto :goto_2f

    :cond_2e
    move v0, v2

    :goto_2f
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsAnonymous:Z

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_39

    :cond_38
    move v1, v2

    :goto_39
    iput-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIncludeTxPower:Z

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mPrimaryPhy:I

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mSecondaryPhy:I

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mInterval:I

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mTxPowerLevel:I

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mOwnAddressType:I

    .line 178
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/le/AdvertisingSetParameters-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/le/AdvertisingSetParameters;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(ZZZZZIIIII)V
    .registers 11
    .param p1, "connectable"    # Z
    .param p2, "scannable"    # Z
    .param p3, "isLegacy"    # Z
    .param p4, "isAnonymous"    # Z
    .param p5, "includeTxPower"    # Z
    .param p6, "primaryPhy"    # I
    .param p7, "secondaryPhy"    # I
    .param p8, "interval"    # I
    .param p9, "txPowerLevel"    # I
    .param p10, "ownAddressType"    # I

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mConnectable:Z

    .line 156
    iput-boolean p2, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mScannable:Z

    .line 157
    iput-boolean p3, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsLegacy:Z

    .line 158
    iput-boolean p4, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsAnonymous:Z

    .line 159
    iput-boolean p5, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIncludeTxPower:Z

    .line 160
    iput p6, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mPrimaryPhy:I

    .line 161
    iput p7, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mSecondaryPhy:I

    .line 162
    iput p8, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mInterval:I

    .line 163
    iput p9, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mTxPowerLevel:I

    .line 164
    iput p10, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mOwnAddressType:I

    .line 165
    return-void
.end method

.method synthetic constructor blacklist <init>(ZZZZZIIIIILandroid/bluetooth/le/AdvertisingSetParameters-IA;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Landroid/bluetooth/le/AdvertisingSetParameters;-><init>(ZZZZZIIIII)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getInterval()I
    .registers 2

    .line 233
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mInterval:I

    return v0
.end method

.method public whitelist getOwnAddressType()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 250
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mOwnAddressType:I

    return v0
.end method

.method public whitelist getPrimaryPhy()I
    .registers 2

    .line 219
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mPrimaryPhy:I

    return v0
.end method

.method public whitelist getSecondaryPhy()I
    .registers 2

    .line 226
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mSecondaryPhy:I

    return v0
.end method

.method public whitelist getTxPowerLevel()I
    .registers 2

    .line 240
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mTxPowerLevel:I

    return v0
.end method

.method public whitelist includeTxPower()Z
    .registers 2

    .line 212
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIncludeTxPower:Z

    return v0
.end method

.method public whitelist isAnonymous()Z
    .registers 2

    .line 205
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsAnonymous:Z

    return v0
.end method

.method public whitelist isConnectable()Z
    .registers 2

    .line 184
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mConnectable:Z

    return v0
.end method

.method public whitelist isLegacy()Z
    .registers 2

    .line 198
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsLegacy:Z

    return v0
.end method

.method public whitelist isScannable()Z
    .registers 2

    .line 191
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mScannable:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdvertisingSetParameters [connectable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mConnectable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLegacy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsLegacy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAnonymous="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsAnonymous:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", includeTxPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIncludeTxPower:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", primaryPhy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mPrimaryPhy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondaryPhy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mSecondaryPhy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", txPowerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mTxPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ownAddressType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mOwnAddressType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

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

    .line 273
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mConnectable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mScannable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsLegacy:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsAnonymous:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIncludeTxPower:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mPrimaryPhy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mSecondaryPhy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mTxPowerLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mOwnAddressType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    return-void
.end method
