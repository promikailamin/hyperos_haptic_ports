.class public Lcom/android/internal/telephony/OperatorInfo;
.super Ljava/lang/Object;
.source "OperatorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/OperatorInfo$State;
    }
.end annotation


# static fields
.field public static final blacklist ACCESS_MODE_INVALID:I = 0x0

.field public static final blacklist ACCESS_MODE_PLMN:I = 0x1

.field public static final blacklist ACCESS_MODE_SNPN:I = 0x2

.field public static final greylist-max-r CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAccessMode:I

.field private blacklist mCagInfo:Landroid/telephony/CagInfo;

.field private greylist-max-r mOperatorAlphaLong:Ljava/lang/String;

.field private greylist-max-r mOperatorAlphaShort:Ljava/lang/String;

.field private greylist-max-r mOperatorNumeric:Ljava/lang/String;

.field private blacklist mRadioTech:Ljava/lang/String;

.field private blacklist mRan:I

.field private blacklist mSnpnInfo:Landroid/telephony/SnpnInfo;

.field private greylist-max-r mState:Lcom/android/internal/telephony/OperatorInfo$State;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 325
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/OperatorInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    iput-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mState:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mRan:I

    .line 74
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/OperatorInfo;->mAccessMode:I

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorAlphaLong:Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorAlphaShort:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorNumeric:Ljava/lang/String;

    .line 235
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/OperatorInfo;->mRadioTech:Ljava/lang/String;

    .line 236
    iget-object v2, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorNumeric:Ljava/lang/String;

    .line 238
    .local v2, "operatorNumeric":Ljava/lang/String;
    if-eqz v2, :cond_3b

    .line 239
    const-string v3, "\\+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "values":[Ljava/lang/String;
    array-length v4, v3

    if-lez v4, :cond_3b

    .line 241
    aget-object v0, v3, v0

    iput-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorNumeric:Ljava/lang/String;

    .line 242
    array-length v0, v3

    if-le v0, v1, :cond_3b

    aget-object v0, v3, v1

    iput-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mRadioTech:Ljava/lang/String;

    .line 246
    .end local v3    # "values":[Ljava/lang/String;
    :cond_3b
    const-class v0, Lcom/android/internal/telephony/OperatorInfo$State;

    .line 247
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/android/internal/telephony/OperatorInfo$State;

    .line 246
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/OperatorInfo$State;

    iput-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mState:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mRan:I

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mAccessMode:I

    .line 251
    const-class v0, Landroid/telephony/CagInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/CagInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CagInfo;

    iput-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mCagInfo:Landroid/telephony/CagInfo;

    .line 252
    const-class v0, Landroid/telephony/SnpnInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/SnpnInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SnpnInfo;

    iput-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mSnpnInfo:Landroid/telephony/SnpnInfo;

    .line 253
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/OperatorInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-p <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;
    .param p2, "operatorAlphaShort"    # Ljava/lang/String;
    .param p3, "operatorNumeric"    # Ljava/lang/String;

    .line 198
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;)V

    .line 199
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;
    .param p2, "operatorAlphaShort"    # Ljava/lang/String;
    .param p3, "operatorNumeric"    # Ljava/lang/String;
    .param p4, "ran"    # I

    .line 190
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iput p4, p0, Lcom/android/internal/telephony/OperatorInfo;->mRan:I

    .line 192
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/telephony/CagInfo;Landroid/telephony/SnpnInfo;)V
    .registers 8
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;
    .param p2, "operatorAlphaShort"    # Ljava/lang/String;
    .param p3, "operatorNumeric"    # Ljava/lang/String;
    .param p4, "ran"    # I
    .param p5, "accessMode"    # I
    .param p6, "cagInfo"    # Landroid/telephony/CagInfo;
    .param p7, "snpnInfo"    # Landroid/telephony/SnpnInfo;

    .line 207
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 208
    iput p5, p0, Lcom/android/internal/telephony/OperatorInfo;->mAccessMode:I

    .line 209
    iput-object p6, p0, Lcom/android/internal/telephony/OperatorInfo;->mCagInfo:Landroid/telephony/CagInfo;

    .line 210
    iput-object p7, p0, Lcom/android/internal/telephony/OperatorInfo;->mSnpnInfo:Landroid/telephony/SnpnInfo;

    .line 211
    return-void
.end method

.method constructor greylist-max-r <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;)V
    .registers 9
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;
    .param p2, "operatorAlphaShort"    # Ljava/lang/String;
    .param p3, "operatorNumeric"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/telephony/OperatorInfo$State;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    iput-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mState:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mRan:I

    .line 74
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/OperatorInfo;->mAccessMode:I

    .line 150
    iput-object p1, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorAlphaLong:Ljava/lang/String;

    .line 151
    iput-object p2, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorAlphaShort:Ljava/lang/String;

    .line 152
    iput-object p3, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorNumeric:Ljava/lang/String;

    .line 154
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/OperatorInfo;->mRadioTech:Ljava/lang/String;

    .line 156
    if-eqz p3, :cond_2d

    .line 157
    const-string v2, "\\+"

    invoke-virtual {p3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "values":[Ljava/lang/String;
    array-length v3, v2

    if-lez v3, :cond_2d

    .line 159
    aget-object v0, v2, v0

    iput-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorNumeric:Ljava/lang/String;

    .line 160
    array-length v0, v2

    if-le v0, v1, :cond_2d

    aget-object v0, v2, v1

    iput-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mRadioTech:Ljava/lang/String;

    .line 165
    .end local v2    # "values":[Ljava/lang/String;
    :cond_2d
    iput-object p4, p0, Lcom/android/internal/telephony/OperatorInfo;->mState:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 166
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;I)V
    .registers 6
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;
    .param p2, "operatorAlphaShort"    # Ljava/lang/String;
    .param p3, "operatorNumeric"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/telephony/OperatorInfo$State;
    .param p5, "ran"    # I

    .line 173
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;)V

    .line 174
    iput p5, p0, Lcom/android/internal/telephony/OperatorInfo;->mRan:I

    .line 175
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;IILandroid/telephony/CagInfo;Landroid/telephony/SnpnInfo;)V
    .registers 9
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;
    .param p2, "operatorAlphaShort"    # Ljava/lang/String;
    .param p3, "operatorNumeric"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/telephony/OperatorInfo$State;
    .param p5, "ran"    # I
    .param p6, "accessMode"    # I
    .param p7, "cagInfo"    # Landroid/telephony/CagInfo;
    .param p8, "snpnInfo"    # Landroid/telephony/SnpnInfo;

    .line 220
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;I)V

    .line 221
    iput p6, p0, Lcom/android/internal/telephony/OperatorInfo;->mAccessMode:I

    .line 222
    iput-object p7, p0, Lcom/android/internal/telephony/OperatorInfo;->mCagInfo:Landroid/telephony/CagInfo;

    .line 223
    iput-object p8, p0, Lcom/android/internal/telephony/OperatorInfo;->mSnpnInfo:Landroid/telephony/SnpnInfo;

    .line 224
    return-void
.end method

.method public constructor greylist-max-r <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;
    .param p2, "operatorAlphaShort"    # Ljava/lang/String;
    .param p3, "operatorNumeric"    # Ljava/lang/String;
    .param p4, "stateString"    # Ljava/lang/String;

    .line 182
    nop

    .line 183
    invoke-static {p4}, Lcom/android/internal/telephony/OperatorInfo;->rilStateToState(Ljava/lang/String;)Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v0

    .line 182
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;)V

    .line 184
    return-void
.end method

.method private static greylist-max-r rilStateToState(Ljava/lang/String;)Lcom/android/internal/telephony/OperatorInfo$State;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 260
    const-string v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 261
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object v0

    .line 262
    :cond_b
    const-string v0, "available"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 263
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object v0

    .line 264
    :cond_16
    const-string v0, "current"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 265
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object v0

    .line 266
    :cond_21
    const-string v0, "forbidden"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 267
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object v0

    .line 269
    :cond_2c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL impl error: Invalid network state \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAccessMode()I
    .registers 2

    .line 125
    iget v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mAccessMode:I

    return v0
.end method

.method public blacklist getCagInfo()Landroid/telephony/CagInfo;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mCagInfo:Landroid/telephony/CagInfo;

    return-object v0
.end method

.method public greylist-max-r getOperatorAlphaLong()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-r getOperatorAlphaShort()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-r getOperatorNumeric()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRadioTech()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mRadioTech:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRan()I
    .registers 2

    .line 119
    iget v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mRan:I

    return v0
.end method

.method public blacklist getSnpnInfo()Landroid/telephony/SnpnInfo;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mSnpnInfo:Landroid/telephony/SnpnInfo;

    return-object v0
.end method

.method public greylist-max-r getState()Lcom/android/internal/telephony/OperatorInfo$State;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mState:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object v0
.end method

.method public blacklist setRadioTech(Ljava/lang/String;)V
    .registers 2
    .param p1, "rat"    # Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lcom/android/internal/telephony/OperatorInfo;->mRadioTech:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OperatorInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/OperatorInfo;->mRadioTech:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/OperatorInfo;->mState:Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/OperatorInfo;->mRan:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/OperatorInfo;->mAccessMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/OperatorInfo;->mCagInfo:Landroid/telephony/CagInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/OperatorInfo;->mSnpnInfo:Landroid/telephony/SnpnInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 308
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/OperatorInfo;->mRadioTech:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mState:Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 314
    iget v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mRan:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    iget v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mAccessMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mCagInfo:Landroid/telephony/CagInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mSnpnInfo:Landroid/telephony/SnpnInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 318
    return-void
.end method
