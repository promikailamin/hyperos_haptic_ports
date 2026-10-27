.class public final Landroid/telephony/CellSignalStrengthGsm;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthGsm.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthGsm;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DBG:Z = false

.field private static final blacklist GSM_RSSI_GOOD:I = -0x61

.field private static final blacklist GSM_RSSI_GREAT:I = -0x59

.field private static final blacklist GSM_RSSI_MAX:I = -0x33

.field private static final blacklist GSM_RSSI_MIN:I = -0x71

.field private static final blacklist GSM_RSSI_MODERATE:I = -0x67

.field private static final blacklist GSM_RSSI_POOR:I = -0x6b

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "CellSignalStrengthGsm"

.field private static final blacklist sInvalid:Landroid/telephony/CellSignalStrengthGsm;

.field private static final blacklist sRssiThresholds:[I


# instance fields
.field private greylist mBitErrorRate:I

.field private blacklist mLevel:I

.field private blacklist mRssi:I

.field private greylist-max-p mTimingAdvance:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 45
    const/16 v0, -0x61

    const/16 v1, -0x59

    const/16 v2, -0x6b

    const/16 v3, -0x67

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/telephony/CellSignalStrengthGsm;->sRssiThresholds:[I

    .line 184
    new-instance v0, Landroid/telephony/CellSignalStrengthGsm;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthGsm;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthGsm;->sInvalid:Landroid/telephony/CellSignalStrengthGsm;

    .line 245
    new-instance v0, Landroid/telephony/CellSignalStrengthGsm$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthGsm$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 58
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthGsm;->setDefaultValues()V

    .line 59
    return-void
.end method

.method public constructor greylist-max-o <init>(III)V
    .registers 6

    .line 62
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 63
    const/16 v0, -0x71

    const/16 v1, -0x33

    invoke-static {p1, v0, v1}, Landroid/telephony/CellSignalStrengthGsm;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthGsm;->mRssi:I

    .line 64
    const/4 p1, 0x7

    const/16 v0, 0x63

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v0}, Landroid/telephony/CellSignalStrengthGsm;->inRangeOrUnavailable(IIII)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    .line 65
    const/16 p1, 0xdb

    invoke-static {p3, v1, p1}, Landroid/telephony/CellSignalStrengthGsm;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    .line 66
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/telephony/CellSignalStrengthGsm;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    .line 67
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 229
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mRssi:I

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthGsm;->mLevel:I

    .line 235
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthGsm-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthGsm;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/telephony/CellSignalStrengthGsm;)V
    .registers 2

    .line 70
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 71
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthGsm;->copyFrom(Landroid/telephony/CellSignalStrengthGsm;)V

    .line 72
    return-void
.end method

.method private static greylist-max-o log(Ljava/lang/String;)V
    .registers 2

    .line 262
    const-string v0, "CellSignalStrengthGsm"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist copy()Landroid/telephony/CellSignalStrength;
    .registers 2

    .line 33
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthGsm;->copy()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o copy()Landroid/telephony/CellSignalStrengthGsm;
    .registers 2

    .line 85
    new-instance v0, Landroid/telephony/CellSignalStrengthGsm;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthGsm;-><init>(Landroid/telephony/CellSignalStrengthGsm;)V

    return-object v0
.end method

.method protected greylist-max-o copyFrom(Landroid/telephony/CellSignalStrengthGsm;)V
    .registers 3

    .line 76
    iget v0, p1, Landroid/telephony/CellSignalStrengthGsm;->mRssi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mRssi:I

    .line 77
    iget v0, p1, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    .line 78
    iget v0, p1, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    .line 79
    iget p1, p1, Landroid/telephony/CellSignalStrengthGsm;->mLevel:I

    iput p1, p0, Landroid/telephony/CellSignalStrengthGsm;->mLevel:I

    .line 80
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 194
    instance-of v0, p1, Landroid/telephony/CellSignalStrengthGsm;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 195
    :cond_6
    check-cast p1, Landroid/telephony/CellSignalStrengthGsm;

    .line 197
    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mRssi:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthGsm;->mRssi:I

    if-ne v0, v2, :cond_21

    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    if-ne v0, v2, :cond_21

    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    iget v2, p1, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    if-ne v0, v2, :cond_21

    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mLevel:I

    iget p1, p1, Landroid/telephony/CellSignalStrengthGsm;->mLevel:I

    if-ne v0, p1, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1
.end method

.method public whitelist getAsuLevel()I
    .registers 2

    .line 156
    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mRssi:I

    invoke-static {v0}, Landroid/telephony/CellSignalStrengthGsm;->getAsuFromRssiDbm(I)I

    move-result v0

    return v0
.end method

.method public whitelist getBitErrorRate()I
    .registers 2

    .line 176
    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    return v0
.end method

.method public whitelist getDbm()I
    .registers 2

    .line 143
    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mRssi:I

    return v0
.end method

.method public whitelist getLevel()I
    .registers 2

    .line 101
    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mLevel:I

    return v0
.end method

.method public whitelist getRssi()I
    .registers 2

    .line 166
    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mRssi:I

    return v0
.end method

.method public whitelist getTimingAdvance()I
    .registers 2

    .line 133
    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 181
    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mRssi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isValid()Z
    .registers 2

    .line 189
    sget-object v0, Landroid/telephony/CellSignalStrengthGsm;->sInvalid:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {p0, v0}, Landroid/telephony/CellSignalStrengthGsm;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public greylist-max-o setDefaultValues()V
    .registers 2

    .line 91
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mRssi:I

    .line 92
    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    .line 93
    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mLevel:I

    .line 95
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellSignalStrengthGsm: rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V
    .registers 5

    .line 108
    const/4 p2, 0x4

    if-nez p1, :cond_6

    .line 109
    sget-object p1, Landroid/telephony/CellSignalStrengthGsm;->sRssiThresholds:[I

    goto :goto_13

    .line 111
    :cond_6
    const-string v0, "gsm_rssi_thresholds_int_array"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    .line 112
    if-eqz p1, :cond_11

    array-length v0, p1

    if-eq v0, p2, :cond_13

    .line 113
    :cond_11
    sget-object p1, Landroid/telephony/CellSignalStrengthGsm;->sRssiThresholds:[I

    .line 116
    :cond_13
    :goto_13
    nop

    .line 117
    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mRssi:I

    const/16 v1, -0x71

    if-lt v0, v1, :cond_31

    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mRssi:I

    const/16 v1, -0x33

    if-le v0, v1, :cond_21

    goto :goto_31

    .line 121
    :cond_21
    :goto_21
    if-lez p2, :cond_2e

    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mRssi:I

    add-int/lit8 v1, p2, -0x1

    aget v1, p1, v1

    if-ge v0, v1, :cond_2e

    add-int/lit8 p2, p2, -0x1

    goto :goto_21

    .line 122
    :cond_2e
    iput p2, p0, Landroid/telephony/CellSignalStrengthGsm;->mLevel:I

    .line 123
    return-void

    .line 118
    :cond_31
    :goto_31
    const/4 p1, 0x0

    iput p1, p0, Landroid/telephony/CellSignalStrengthGsm;->mLevel:I

    .line 119
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 219
    iget p2, p0, Landroid/telephony/CellSignalStrengthGsm;->mRssi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget p2, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget p2, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget p2, p0, Landroid/telephony/CellSignalStrengthGsm;->mLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    return-void
.end method
