.class public Landroid/telephony/ServiceState;
.super Ljava/lang/Object;
.source "ServiceState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ServiceState$RoamingType;,
        Landroid/telephony/ServiceState$RilRadioTechnology;,
        Landroid/telephony/ServiceState$DuplexMode;,
        Landroid/telephony/ServiceState$FrequencyRange;,
        Landroid/telephony/ServiceState$RegState;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o DBG:Z = false

.field public static final whitelist DUPLEX_MODE_FDD:I = 0x1

.field public static final whitelist DUPLEX_MODE_TDD:I = 0x2

.field public static final whitelist DUPLEX_MODE_UNKNOWN:I = 0x0

.field private static final blacklist EXTRA_SERVICE_STATE:Ljava/lang/String; = "android.intent.extra.SERVICE_STATE"

.field public static final blacklist FREQUENCY_RANGE_COUNT:I = 0x5

.field public static final blacklist FREQUENCY_RANGE_HIGH:I = 0x3

.field public static final blacklist FREQUENCY_RANGE_LOW:I = 0x1

.field public static final blacklist FREQUENCY_RANGE_MID:I = 0x2

.field public static final blacklist FREQUENCY_RANGE_MMWAVE:I = 0x4

.field public static final blacklist FREQUENCY_RANGE_UNKNOWN:I = 0x0

.field static final greylist-max-o LOG_TAG:Ljava/lang/String; = "PHONE"

.field private static final greylist-max-o NEXT_RIL_RADIO_TECHNOLOGY:I = 0x15

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_1xRTT:I = 0x6

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_EDGE:I = 0x2

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_EHRPD:I = 0xd

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_EVDO_0:I = 0x7

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_EVDO_A:I = 0x8

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_EVDO_B:I = 0xc

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_GPRS:I = 0x1

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_GSM:I = 0x10

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_HSDPA:I = 0x9

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_HSPA:I = 0xb

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_HSPAP:I = 0xf

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_HSUPA:I = 0xa

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_IS95A:I = 0x4

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_IS95B:I = 0x5

.field public static final greylist-max-p RIL_RADIO_TECHNOLOGY_IWLAN:I = 0x12

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_LTE:I = 0xe

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_LTE_CA:I = 0x13

.field public static final blacklist RIL_RADIO_TECHNOLOGY_NR:I = 0x14

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_TD_SCDMA:I = 0x11

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_UMTS:I = 0x3

.field public static final greylist-max-o RIL_RADIO_TECHNOLOGY_UNKNOWN:I = 0x0

.field public static final whitelist ROAMING_TYPE_DOMESTIC:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROAMING_TYPE_INTERNATIONAL:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROAMING_TYPE_NOT_ROAMING:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROAMING_TYPE_UNKNOWN:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATE_EMERGENCY_ONLY:I = 0x2

.field public static final whitelist STATE_IN_SERVICE:I = 0x0

.field public static final whitelist STATE_OUT_OF_SERVICE:I = 0x1

.field public static final whitelist STATE_POWER_OFF:I = 0x3

.field public static final whitelist UNKNOWN_ID:I = -0x1

.field static final greylist-max-o VDBG:Z


# instance fields
.field private blacklist mArfcnRsrpBoost:I

.field private greylist-max-o mCellBandwidths:[I

.field private greylist-max-o mChannelNumber:I

.field private greylist-max-p mCssIndicator:Z

.field private greylist-max-o mDataRegState:I

.field private blacklist mForceLteCA:Ljava/lang/Boolean;

.field private greylist-max-o mIsDataRoamingFromRegistration:Z

.field private greylist-max-o mIsEmergencyOnly:Z

.field private blacklist mIsIwlanPreferred:Z

.field private greylist-max-p mIsManualNetworkSelection:Z

.field private final blacklist mNetworkRegistrationInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/NetworkRegistrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNrFrequencyRange:I

.field private blacklist mOperatorAlphaLong:Ljava/lang/String;

.field private blacklist mOperatorAlphaLongRaw:Ljava/lang/String;

.field private blacklist mOperatorAlphaShort:Ljava/lang/String;

.field private blacklist mOperatorAlphaShortRaw:Ljava/lang/String;

.field private blacklist mOperatorNumeric:Ljava/lang/String;

.field private greylist-max-o mVoiceRegState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 493
    new-instance v0, Landroid/telephony/ServiceState$1;

    invoke-direct {v0}, Landroid/telephony/ServiceState$1;-><init>()V

    sput-object v0, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 270
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 333
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 339
    iput v0, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mForceLteCA:Ljava/lang/Boolean;

    .line 396
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 270
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 333
    const/4 v1, 0x0

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 339
    iput v1, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 341
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    .line 348
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/telephony/ServiceState;->mForceLteCA:Ljava/lang/Boolean;

    .line 442
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 443
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 444
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 445
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 446
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 447
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3f

    move v3, v0

    goto :goto_40

    :cond_3f
    move v3, v1

    :goto_40
    iput-boolean v3, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 448
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4a

    move v3, v0

    goto :goto_4b

    :cond_4a
    move v3, v1

    :goto_4b
    iput-boolean v3, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 449
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_55

    move v3, v0

    goto :goto_56

    :cond_55
    move v3, v1

    :goto_56
    iput-boolean v3, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 451
    iget-object v3, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v3

    .line 452
    :try_start_61
    iget-object v4, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    const-class v5, Landroid/telephony/NetworkRegistrationInfo;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const-class v6, Landroid/telephony/NetworkRegistrationInfo;

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 453
    monitor-exit v3
    :try_end_6f
    .catchall {:try_start_61 .. :try_end_6f} :catchall_ac

    .line 454
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    .line 455
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    iput-object v3, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 456
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    .line 457
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    .line 459
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    iput-boolean v3, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    iput-boolean v3, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 462
    const/4 v3, -0x1

    if-ne p1, v3, :cond_a1

    goto :goto_a9

    :cond_a1
    if-ne p1, v0, :cond_a4

    goto :goto_a5

    :cond_a4
    move v0, v1

    :goto_a5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_a9
    iput-object v2, p0, Landroid/telephony/ServiceState;->mForceLteCA:Ljava/lang/Boolean;

    .line 463
    return-void

    .line 453
    :catchall_ac
    move-exception p1

    :try_start_ad
    monitor-exit v3
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw p1
.end method

.method public constructor whitelist <init>(Landroid/telephony/ServiceState;)V
    .registers 4

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 270
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 333
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 339
    iput v0, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mForceLteCA:Ljava/lang/Boolean;

    .line 404
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->copyFrom(Landroid/telephony/ServiceState;)V

    .line 405
    return-void
.end method

.method public static greylist-max-r bitmaskHasTech(II)Z
    .registers 4

    .line 1805
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 1806
    return v0

    .line 1807
    :cond_4
    const/4 v1, 0x0

    if-lt p1, v0, :cond_10

    .line 1808
    sub-int/2addr p1, v0

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_e

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    return v0

    .line 1810
    :cond_10
    return v1
.end method

.method public static greylist-max-o convertBearerBitmaskToNetworkTypeBitmask(I)I
    .registers 4

    .line 1872
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1873
    return v0

    .line 1875
    :cond_4
    nop

    .line 1876
    move v1, v0

    :goto_6
    const/16 v2, 0x15

    if-ge v0, v2, :cond_1c

    .line 1877
    invoke-static {p0, v0}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1878
    invoke-static {v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v2

    or-int/2addr v1, v2

    .line 1876
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1881
    :cond_1c
    return v1
.end method

.method public static greylist-max-o convertNetworkTypeBitmaskToBearerBitmask(I)I
    .registers 4

    .line 1851
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1852
    return v0

    .line 1854
    :cond_4
    nop

    .line 1855
    move v1, v0

    :goto_6
    const/16 v2, 0x15

    if-ge v0, v2, :cond_1c

    .line 1856
    invoke-static {v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v2

    invoke-static {p0, v2}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1857
    invoke-static {v0}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v2

    or-int/2addr v1, v2

    .line 1855
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1860
    :cond_1c
    return v1
.end method

.method private static greylist-max-p equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    .line 1339
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 p0, 0x1

    goto :goto_c

    :cond_6
    const/4 p0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_c
    return p0
.end method

.method public static blacklist frequencyRangeToString(I)Ljava/lang/String;
    .registers 1

    .line 1086
    packed-switch p0, :pswitch_data_18

    .line 1093
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1091
    :pswitch_8
    const-string p0, "MMWAVE"

    return-object p0

    .line 1090
    :pswitch_b
    const-string p0, "HIGH"

    return-object p0

    .line 1089
    :pswitch_e
    const-string p0, "MID"

    return-object p0

    .line 1088
    :pswitch_11
    const-string p0, "LOW"

    return-object p0

    .line 1087
    :pswitch_14
    const-string p0, "UNKNOWN"

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static greylist-max-o getBitmaskForTech(I)I
    .registers 2

    .line 1815
    const/4 v0, 0x1

    if-lt p0, v0, :cond_7

    .line 1816
    sub-int/2addr p0, v0

    shl-int p0, v0, p0

    return p0

    .line 1818
    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist-max-o getBitmaskFromString(Ljava/lang/String;)I
    .registers 6

    .line 1823
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1824
    nop

    .line 1825
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_b
    if-ge v2, v0, :cond_26

    aget-object v4, p0, v2

    .line 1826
    nop

    .line 1828
    :try_start_10
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_18} :catch_24

    .line 1831
    nop

    .line 1833
    if-nez v4, :cond_1c

    .line 1834
    return v1

    .line 1837
    :cond_1c
    invoke-static {v4}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v4

    or-int/2addr v3, v4

    .line 1825
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1829
    :catch_24
    move-exception p0

    .line 1830
    return v1

    .line 1839
    :cond_26
    return v3
.end method

.method public static final greylist-max-o getRoamingLogString(I)Ljava/lang/String;
    .registers 1

    .line 355
    packed-switch p0, :pswitch_data_14

    .line 369
    const-string p0, "UNKNOWN"

    return-object p0

    .line 366
    :pswitch_6
    const-string p0, "International Roaming"

    return-object p0

    .line 363
    :pswitch_9
    const-string p0, "Domestic Roaming"

    return-object p0

    .line 360
    :pswitch_c
    const-string/jumbo p0, "roaming"

    return-object p0

    .line 357
    :pswitch_10
    const-string p0, "home"

    return-object p0

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private blacklist init()V
    .registers 8

    .line 1162
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 1163
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 1164
    const/4 v1, -0x1

    iput v1, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    .line 1165
    const/4 v1, 0x0

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 1166
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 1167
    iput-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 1168
    iput-object v2, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 1169
    iput-boolean v1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 1170
    iput-boolean v1, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 1171
    iput-boolean v1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 1172
    iput v1, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 1173
    iput v1, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    .line 1174
    iget-object v3, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v3

    .line 1175
    :try_start_21
    iget-object v4, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1176
    new-instance v4, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v4}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 1177
    invoke-virtual {v4, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v4

    .line 1178
    invoke-virtual {v4, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v4

    .line 1179
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setRegistrationState(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v4

    .line 1180
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v4

    .line 1176
    invoke-virtual {p0, v4}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1181
    new-instance v4, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v4}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 1182
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v4

    .line 1183
    invoke-virtual {v4, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1184
    invoke-virtual {v0, v5}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setRegistrationState(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1185
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 1181
    invoke-virtual {p0, v0}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1186
    new-instance v0, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 1187
    invoke-virtual {v0, v6}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1188
    invoke-virtual {v0, v6}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1189
    invoke-virtual {v0, v5}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setRegistrationState(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1190
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 1186
    invoke-virtual {p0, v0}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1191
    monitor-exit v3
    :try_end_71
    .catchall {:try_start_21 .. :try_end_71} :catchall_7c

    .line 1192
    iput-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    .line 1193
    iput-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    .line 1194
    iput-boolean v1, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 1195
    iput-boolean v1, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    .line 1196
    iput-object v2, p0, Landroid/telephony/ServiceState;->mForceLteCA:Ljava/lang/Boolean;

    .line 1197
    return-void

    .line 1191
    :catchall_7c
    move-exception v0

    :try_start_7d
    monitor-exit v3
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw v0
.end method

.method public static greylist isCdma(I)Z
    .registers 2

    .line 1786
    const/4 v0, 0x4

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1b

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1b

    const/16 v0, 0xd

    if-ne p0, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public static blacklist isFrequencyRangeValid(I)Z
    .registers 3

    .line 2172
    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    const/4 v1, 0x2

    if-eq p0, v1, :cond_f

    const/4 v1, 0x3

    if-eq p0, v1, :cond_f

    const/4 v1, 0x4

    if-ne p0, v1, :cond_d

    goto :goto_f

    .line 2178
    :cond_d
    const/4 p0, 0x0

    return p0

    .line 2176
    :cond_f
    :goto_f
    return v0
.end method

.method public static greylist isGsm(I)Z
    .registers 3

    .line 1767
    const/4 v0, 0x1

    if-eq p0, v0, :cond_33

    const/4 v1, 0x2

    if-eq p0, v1, :cond_33

    const/4 v1, 0x3

    if-eq p0, v1, :cond_33

    const/16 v1, 0x9

    if-eq p0, v1, :cond_33

    const/16 v1, 0xa

    if-eq p0, v1, :cond_33

    const/16 v1, 0xb

    if-eq p0, v1, :cond_33

    const/16 v1, 0xe

    if-eq p0, v1, :cond_33

    const/16 v1, 0xf

    if-eq p0, v1, :cond_33

    const/16 v1, 0x10

    if-eq p0, v1, :cond_33

    const/16 v1, 0x11

    if-eq p0, v1, :cond_33

    const/16 v1, 0x12

    if-eq p0, v1, :cond_33

    const/16 v1, 0x13

    if-eq p0, v1, :cond_33

    const/16 v1, 0x14

    if-ne p0, v1, :cond_32

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :cond_33
    :goto_33
    return v0
.end method

.method public static blacklist isPsOnlyTech(I)Z
    .registers 2

    .line 1797
    const/16 v0, 0xe

    if-eq p0, v0, :cond_f

    const/16 v0, 0x13

    if-eq p0, v0, :cond_f

    const/16 v0, 0x14

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static greylist-max-r mergeServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .registers 3

    .line 1891
    iget v0, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    if-eqz v0, :cond_5

    .line 1892
    return-object p0

    .line 1895
    :cond_5
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0, p0}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 1898
    iget p0, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iput p0, v0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 1899
    const/4 p0, 0x0

    iput-boolean p0, v0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 1901
    return-object v0
.end method

.method public static greylist-max-o networkTypeToRilRadioTechnology(I)I
    .registers 1

    .line 1631
    packed-switch p0, :pswitch_data_38

    .line 1671
    :pswitch_3
    const/4 p0, 0x0

    return p0

    .line 1669
    :pswitch_5
    const/16 p0, 0x14

    return p0

    .line 1667
    :pswitch_8
    const/16 p0, 0x13

    return p0

    .line 1665
    :pswitch_b
    const/16 p0, 0x12

    return p0

    .line 1663
    :pswitch_e
    const/16 p0, 0x11

    return p0

    .line 1661
    :pswitch_11
    const/16 p0, 0x10

    return p0

    .line 1659
    :pswitch_14
    const/16 p0, 0xf

    return p0

    .line 1655
    :pswitch_17
    const/16 p0, 0xd

    return p0

    .line 1657
    :pswitch_1a
    const/16 p0, 0xe

    return p0

    .line 1653
    :pswitch_1d
    const/16 p0, 0xc

    return p0

    .line 1643
    :pswitch_20
    const/16 p0, 0xb

    return p0

    .line 1641
    :pswitch_23
    const/16 p0, 0xa

    return p0

    .line 1639
    :pswitch_26
    const/16 p0, 0x9

    return p0

    .line 1647
    :pswitch_29
    const/4 p0, 0x6

    return p0

    .line 1651
    :pswitch_2b
    const/16 p0, 0x8

    return p0

    .line 1649
    :pswitch_2e
    const/4 p0, 0x7

    return p0

    .line 1645
    :pswitch_30
    const/4 p0, 0x4

    return p0

    .line 1637
    :pswitch_32
    const/4 p0, 0x3

    return p0

    .line 1635
    :pswitch_34
    const/4 p0, 0x2

    return p0

    .line 1633
    :pswitch_36
    const/4 p0, 0x1

    return p0

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_36
        :pswitch_34
        :pswitch_32
        :pswitch_30
        :pswitch_2e
        :pswitch_2b
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_3
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static greylist newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;
    .registers 2

    .line 387
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    .line 388
    invoke-direct {v0, p0}, Landroid/telephony/ServiceState;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 389
    return-object v0
.end method

.method public static greylist-max-o rilRadioTechnologyToAccessNetworkType(I)I
    .registers 1

    .line 1588
    packed-switch p0, :pswitch_data_12

    .line 1617
    const/4 p0, 0x0

    return p0

    .line 1612
    :pswitch_5
    const/4 p0, 0x6

    return p0

    .line 1614
    :pswitch_7
    const/4 p0, 0x5

    return p0

    .line 1610
    :pswitch_9
    const/4 p0, 0x3

    return p0

    .line 1607
    :pswitch_b
    const/4 p0, 0x4

    return p0

    .line 1599
    :pswitch_d
    const/4 p0, 0x2

    return p0

    .line 1592
    :pswitch_f
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_d
        :pswitch_f
        :pswitch_d
        :pswitch_7
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public static greylist-max-o rilRadioTechnologyToNetworkType(I)I
    .registers 1

    .line 1541
    packed-switch p0, :pswitch_data_38

    .line 1582
    const/4 p0, 0x0

    return p0

    .line 1580
    :pswitch_5
    const/16 p0, 0x14

    return p0

    .line 1578
    :pswitch_8
    const/16 p0, 0x13

    return p0

    .line 1576
    :pswitch_b
    const/16 p0, 0x12

    return p0

    .line 1574
    :pswitch_e
    const/16 p0, 0x11

    return p0

    .line 1572
    :pswitch_11
    const/16 p0, 0x10

    return p0

    .line 1570
    :pswitch_14
    const/16 p0, 0xf

    return p0

    .line 1568
    :pswitch_17
    const/16 p0, 0xd

    return p0

    .line 1566
    :pswitch_1a
    const/16 p0, 0xe

    return p0

    .line 1564
    :pswitch_1d
    const/16 p0, 0xc

    return p0

    .line 1553
    :pswitch_20
    const/16 p0, 0xa

    return p0

    .line 1551
    :pswitch_23
    const/16 p0, 0x9

    return p0

    .line 1549
    :pswitch_26
    const/16 p0, 0x8

    return p0

    .line 1562
    :pswitch_29
    const/4 p0, 0x6

    return p0

    .line 1560
    :pswitch_2b
    const/4 p0, 0x5

    return p0

    .line 1558
    :pswitch_2d
    const/4 p0, 0x7

    return p0

    .line 1556
    :pswitch_2f
    const/4 p0, 0x4

    return p0

    .line 1547
    :pswitch_31
    const/4 p0, 0x3

    return p0

    .line 1545
    :pswitch_33
    const/4 p0, 0x2

    return p0

    .line 1543
    :pswitch_35
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_35
        :pswitch_33
        :pswitch_31
        :pswitch_2f
        :pswitch_2f
        :pswitch_2d
        :pswitch_2b
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static greylist-max-r rilRadioTechnologyToString(I)Ljava/lang/String;
    .registers 3

    .line 1004
    packed-switch p0, :pswitch_data_74

    .line 1069
    nop

    .line 1070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected radioTechnology="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PHONE"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Unexpected"

    goto :goto_72

    .line 1066
    :pswitch_1f
    nop

    .line 1067
    const-string p0, "NR_SA"

    goto :goto_72

    .line 1063
    :pswitch_23
    nop

    .line 1064
    const-string p0, "LTE_CA"

    goto :goto_72

    .line 1057
    :pswitch_27
    nop

    .line 1058
    const-string p0, "IWLAN"

    goto :goto_72

    .line 1060
    :pswitch_2b
    nop

    .line 1061
    const-string p0, "TD-SCDMA"

    goto :goto_72

    .line 1054
    :pswitch_2f
    nop

    .line 1055
    const-string p0, "GSM"

    goto :goto_72

    .line 1051
    :pswitch_33
    nop

    .line 1052
    const-string p0, "HSPAP"

    goto :goto_72

    .line 1048
    :pswitch_37
    nop

    .line 1049
    const-string p0, "LTE"

    goto :goto_72

    .line 1045
    :pswitch_3b
    nop

    .line 1046
    const-string p0, "eHRPD"

    goto :goto_72

    .line 1042
    :pswitch_3f
    nop

    .line 1043
    const-string p0, "EvDo-rev.B"

    goto :goto_72

    .line 1039
    :pswitch_43
    nop

    .line 1040
    const-string p0, "HSPA"

    goto :goto_72

    .line 1036
    :pswitch_47
    nop

    .line 1037
    const-string p0, "HSUPA"

    goto :goto_72

    .line 1033
    :pswitch_4b
    nop

    .line 1034
    const-string p0, "HSDPA"

    goto :goto_72

    .line 1030
    :pswitch_4f
    nop

    .line 1031
    const-string p0, "EvDo-rev.A"

    goto :goto_72

    .line 1027
    :pswitch_53
    nop

    .line 1028
    const-string p0, "EvDo-rev.0"

    goto :goto_72

    .line 1024
    :pswitch_57
    nop

    .line 1025
    const-string p0, "1xRTT"

    goto :goto_72

    .line 1021
    :pswitch_5b
    nop

    .line 1022
    const-string p0, "CDMA-IS95B"

    goto :goto_72

    .line 1018
    :pswitch_5f
    nop

    .line 1019
    const-string p0, "CDMA-IS95A"

    goto :goto_72

    .line 1015
    :pswitch_63
    nop

    .line 1016
    const-string p0, "UMTS"

    goto :goto_72

    .line 1012
    :pswitch_67
    nop

    .line 1013
    const-string p0, "EDGE"

    goto :goto_72

    .line 1009
    :pswitch_6b
    nop

    .line 1010
    const-string p0, "GPRS"

    goto :goto_72

    .line 1006
    :pswitch_6f
    nop

    .line 1007
    const-string p0, "Unknown"

    .line 1073
    :goto_72
    return-object p0

    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_6b
        :pswitch_67
        :pswitch_63
        :pswitch_5f
        :pswitch_5b
        :pswitch_57
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method

.method public static greylist-max-o rilServiceStateToString(I)Ljava/lang/String;
    .registers 1

    .line 1106
    packed-switch p0, :pswitch_data_12

    .line 1116
    const-string p0, "UNKNOWN"

    return-object p0

    .line 1114
    :pswitch_6
    const-string p0, "POWER_OFF"

    return-object p0

    .line 1112
    :pswitch_9
    const-string p0, "EMERGENCY_ONLY"

    return-object p0

    .line 1110
    :pswitch_c
    const-string p0, "OUT_OF_SERVICE"

    return-object p0

    .line 1108
    :pswitch_f
    const-string p0, "IN_SERVICE"

    return-object p0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist roamingTypeToString(I)Ljava/lang/String;
    .registers 3

    .line 983
    packed-switch p0, :pswitch_data_24

    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown roaming type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 987
    :pswitch_17
    const-string p0, "INTERNATIONAL"

    return-object p0

    .line 986
    :pswitch_1a
    const-string p0, "DOMESTIC"

    return-object p0

    .line 985
    :pswitch_1d
    const-string p0, "UNKNOWN"

    return-object p0

    .line 984
    :pswitch_20
    const-string p0, "NOT_ROAMING"

    return-object p0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private greylist setFromNotifierBundle(Landroid/os/Bundle;)V
    .registers 4

    .line 1350
    const-string v0, "android.intent.extra.SERVICE_STATE"

    const-class v1, Landroid/telephony/ServiceState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ServiceState;

    .line 1351
    if-eqz p1, :cond_f

    .line 1352
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->copyFrom(Landroid/telephony/ServiceState;)V

    .line 1354
    :cond_f
    return-void
.end method


# virtual methods
.method public blacklist addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V
    .registers 7

    .line 1999
    if-nez p1, :cond_3

    return-void

    .line 2001
    :cond_3
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 2002
    const/4 v1, 0x0

    :goto_7
    :try_start_7
    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 2003
    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NetworkRegistrationInfo;

    .line 2004
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getTransportType()I

    move-result v3

    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getTransportType()I

    move-result v4

    if-ne v3, v4, :cond_31

    .line 2005
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getDomain()I

    move-result v2

    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getDomain()I

    move-result v3

    if-ne v2, v3, :cond_31

    .line 2006
    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2007
    goto :goto_34

    .line 2002
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2011
    :cond_34
    :goto_34
    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    new-instance v2, Landroid/telephony/NetworkRegistrationInfo;

    invoke-direct {v2, p1}, Landroid/telephony/NetworkRegistrationInfo;-><init>(Landroid/telephony/NetworkRegistrationInfo;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2012
    monitor-exit v0

    .line 2013
    return-void

    .line 2012
    :catchall_40
    move-exception p1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_40

    throw p1
.end method

.method protected whitelist copyFrom(Landroid/telephony/ServiceState;)V
    .registers 8

    .line 408
    iget v0, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 409
    iget v0, p1, Landroid/telephony/ServiceState;->mDataRegState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 410
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 411
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 412
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 413
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 414
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mCssIndicator:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 415
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 416
    iget v0, p1, Landroid/telephony/ServiceState;->mChannelNumber:I

    iput v0, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    .line 417
    iget-object v0, p1, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    const/4 v1, 0x0

    if-nez v0, :cond_2b

    move-object v0, v1

    goto :goto_34

    .line 418
    :cond_2b
    iget-object v0, p1, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    iget-object v2, p1, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    :goto_34
    iput-object v0, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 419
    iget v0, p1, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    iput v0, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 420
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 421
    :try_start_3d
    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 422
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/NetworkRegistrationInfo;

    .line 423
    iget-object v4, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    new-instance v5, Landroid/telephony/NetworkRegistrationInfo;

    invoke-direct {v5, v3}, Landroid/telephony/NetworkRegistrationInfo;-><init>(Landroid/telephony/NetworkRegistrationInfo;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    goto :goto_4a

    .line 425
    :cond_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3d .. :try_end_62} :catchall_87

    .line 426
    iget v0, p1, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    iput v0, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    .line 427
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    .line 428
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    .line 429
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 430
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    .line 431
    iget-object v0, p1, Landroid/telephony/ServiceState;->mForceLteCA:Ljava/lang/Boolean;

    if-eqz v0, :cond_84

    iget-object p1, p1, Landroid/telephony/ServiceState;->mForceLteCA:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_84
    iput-object v1, p0, Landroid/telephony/ServiceState;->mForceLteCA:Ljava/lang/Boolean;

    .line 432
    return-void

    .line 425
    :catchall_87
    move-exception p1

    :try_start_88
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw p1
.end method

.method public blacklist createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;
    .registers 6

    .line 2030
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0, p0}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 2031
    iget-object v1, v0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v1

    .line 2032
    :try_start_8
    iget-object v2, v0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    .line 2033
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/telephony/ServiceState$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/telephony/ServiceState$$ExternalSyntheticLambda0;-><init>()V

    .line 2034
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 2035
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2036
    iget-object v3, v0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 2037
    iget-object v3, v0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2038
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_37

    .line 2039
    if-nez p1, :cond_2f

    return-object v0

    .line 2041
    :cond_2f
    const/4 p1, 0x0

    iput-object p1, v0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 2042
    iput-object p1, v0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 2043
    iput-object p1, v0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 2045
    return-object v0

    .line 2038
    :catchall_37
    move-exception p1

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 490
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 949
    instance-of v0, p1, Landroid/telephony/ServiceState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 950
    :cond_6
    check-cast p1, Landroid/telephony/ServiceState;

    .line 952
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 953
    :try_start_b
    iget v2, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iget v3, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    if-ne v2, v3, :cond_ad

    iget v2, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    iget v3, p1, Landroid/telephony/ServiceState;->mDataRegState:I

    if-ne v2, v3, :cond_ad

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    iget-boolean v3, p1, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-ne v2, v3, :cond_ad

    iget v2, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    iget v3, p1, Landroid/telephony/ServiceState;->mChannelNumber:I

    if-ne v2, v3, :cond_ad

    iget-object v2, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    iget-object v3, p1, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 957
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_ad

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 958
    invoke-static {v2, v3}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ad

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 959
    invoke-static {v2, v3}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ad

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 960
    invoke-static {v2, v3}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ad

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 961
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ad

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    iget-boolean v3, p1, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    if-ne v2, v3, :cond_ad

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    .line 963
    invoke-static {v2, v3}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ad

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    .line 964
    invoke-static {v2, v3}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ad

    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    .line 965
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p1, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_ad

    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    iget-object v3, p1, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    .line 966
    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_ad

    iget v2, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    iget v3, p1, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    if-ne v2, v3, :cond_ad

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    iget-boolean v3, p1, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    if-ne v2, v3, :cond_ad

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    iget-boolean v3, p1, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    if-ne v2, v3, :cond_ad

    iget-object v2, p0, Landroid/telephony/ServiceState;->mForceLteCA:Ljava/lang/Boolean;

    iget-object p1, p1, Landroid/telephony/ServiceState;->mForceLteCA:Ljava/lang/Boolean;

    .line 970
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ad

    const/4 v1, 0x1

    goto :goto_ae

    :cond_ad
    nop

    :goto_ae
    monitor-exit v0

    .line 953
    return v1

    .line 971
    :catchall_b0
    move-exception p1

    monitor-exit v0
    :try_end_b2
    .catchall {:try_start_b .. :try_end_b2} :catchall_b0

    throw p1
.end method

.method public greylist fillInNotifierBundle(Landroid/os/Bundle;)V
    .registers 4

    .line 1368
    const-string v0, "android.intent.extra.SERVICE_STATE"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1371
    const-string/jumbo v0, "voiceRegState"

    iget v1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1372
    const-string v0, "dataRegState"

    iget v1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1373
    const-string v0, "dataRoamingType"

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1374
    const-string/jumbo v0, "voiceRoamingType"

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1375
    const-string/jumbo v0, "operator-alpha-long"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    const-string/jumbo v0, "operator-alpha-short"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    const-string/jumbo v0, "operator-numeric"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    const-string v0, "data-operator-alpha-long"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    const-string v0, "data-operator-alpha-short"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    const-string v0, "data-operator-numeric"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    const-string/jumbo v0, "manual"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1382
    const-string/jumbo v0, "radioTechnology"

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1383
    const-string v0, "dataRadioTechnology"

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1384
    const-string v0, "cssIndicator"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1385
    const-string v0, "emergencyOnly"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1386
    const-string v0, "isDataRoamingFromRegistration"

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1387
    const-string/jumbo v0, "isUsingCarrierAggregation"

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1388
    const-string v0, "ArfcnRsrpBoost"

    iget v1, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1389
    iget-object v0, p0, Landroid/telephony/ServiceState;->mForceLteCA:Ljava/lang/Boolean;

    if-nez v0, :cond_9d

    const/4 v0, -0x1

    goto :goto_a8

    :cond_9d
    iget-object v0, p0, Landroid/telephony/ServiceState;->mForceLteCA:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a7

    const/4 v0, 0x1

    goto :goto_a8

    :cond_a7
    const/4 v0, 0x0

    :goto_a8
    const-string v1, "forceLteCA"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1390
    const-string v0, "ChannelNumber"

    iget v1, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1391
    const-string v0, "CellBandwidths"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1392
    const-string/jumbo v0, "mNrFrequencyRange"

    iget v1, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1393
    const-string/jumbo v0, "operator-alpha-long-raw"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    const-string/jumbo v0, "operator-alpha-short-raw"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    return-void
.end method

.method public blacklist getArfcnRsrpBoost()I
    .registers 2

    .line 1496
    iget v0, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    return v0
.end method

.method public whitelist getCdmaNetworkId()I
    .registers 2

    .line 1743
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getCdmaSystemId()I
    .registers 2

    .line 1761
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getCellBandwidths()[I
    .registers 2

    .line 613
    iget-object v0, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    if-nez v0, :cond_8

    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_a

    :cond_8
    iget-object v0, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    :goto_a
    return-object v0
.end method

.method public whitelist getChannelNumber()I
    .registers 2

    .line 604
    iget v0, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    return v0
.end method

.method public greylist-max-p getCssIndicator()I
    .registers 2

    .line 1725
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    return v0
.end method

.method public blacklist getDataNetworkType()I
    .registers 4

    .line 1687
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 1689
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 1694
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_28

    .line 1702
    :cond_13
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v2

    if-eqz v2, :cond_23

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    if-eqz v2, :cond_1e

    goto :goto_23

    .line 1708
    :cond_1e
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v0

    return v0

    .line 1703
    :cond_23
    :goto_23
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v0

    return v0

    .line 1695
    :cond_28
    :goto_28
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v0

    goto :goto_30

    .line 1696
    :cond_2f
    const/4 v0, 0x0

    .line 1695
    :goto_30
    return v0
.end method

.method public greylist-max-q getDataOperatorAlphaShort()Ljava/lang/String;
    .registers 2

    .line 817
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-q getDataOperatorNumeric()Ljava/lang/String;
    .registers 2

    .line 910
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getDataRegState()I
    .registers 2

    .line 541
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    return v0
.end method

.method public blacklist getDataRegistrationState()I
    .registers 2

    .line 557
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    return v0
.end method

.method public greylist-max-p getDataRoaming()Z
    .registers 2

    .line 667
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o getDataRoamingFromRegistration()Z
    .registers 2

    .line 690
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    return v0
.end method

.method public greylist-max-p getDataRoamingType()I
    .registers 3

    .line 700
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 702
    if-eqz v0, :cond_d

    .line 703
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRoamingType()I

    move-result v0

    return v0

    .line 705
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDuplexMode()I
    .registers 4

    .line 571
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    .line 574
    invoke-static {v0}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 575
    return v2

    .line 578
    :cond_c
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->duplexModeForNgran()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 579
    iget v0, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getOperatingBandForEarfcn(I)I

    move-result v0

    .line 580
    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getDuplexModeForEutranBand(I)I

    move-result v0

    return v0

    .line 582
    :cond_1d
    sparse-switch v0, :sswitch_data_38

    .line 591
    goto :goto_36

    .line 588
    :sswitch_21
    iget v0, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getOperatingBandForNrarfcn(I)I

    move-result v0

    .line 589
    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getDuplexModeForNgranBandPCell(I)I

    move-result v2

    goto :goto_36

    .line 584
    :sswitch_2c
    iget v0, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getOperatingBandForEarfcn(I)I

    move-result v0

    .line 585
    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getDuplexModeForEutranBand(I)I

    move-result v2

    .line 582
    :goto_36
    return v2

    nop

    :sswitch_data_38
    .sparse-switch
        0xe -> :sswitch_2c
        0x13 -> :sswitch_2c
        0x14 -> :sswitch_21
    .end sparse-switch
.end method

.method public blacklist getForceLteCA()Ljava/lang/Boolean;
    .registers 2

    .line 2116
    iget-object v0, p0, Landroid/telephony/ServiceState;->mForceLteCA:Ljava/lang/Boolean;

    return-object v0
.end method

.method public whitelist getIsManualSelection()Z
    .registers 2

    .line 919
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    return v0
.end method

.method public whitelist getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1982
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 1983
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NetworkRegistrationInfo;

    .line 1984
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getTransportType()I

    move-result v3

    if-ne v3, p2, :cond_29

    .line 1985
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getDomain()I

    move-result v3

    and-int/2addr v3, p1

    if-eqz v3, :cond_29

    .line 1986
    new-instance p1, Landroid/telephony/NetworkRegistrationInfo;

    invoke-direct {p1, v2}, Landroid/telephony/NetworkRegistrationInfo;-><init>(Landroid/telephony/NetworkRegistrationInfo;)V

    monitor-exit v0

    return-object p1

    .line 1988
    :cond_29
    goto :goto_9

    .line 1989
    :cond_2a
    monitor-exit v0

    .line 1991
    const/4 p1, 0x0

    return-object p1

    .line 1989
    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public whitelist getNetworkRegistrationInfoList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/NetworkRegistrationInfo;",
            ">;"
        }
    .end annotation

    .line 1911
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 1912
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1913
    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/NetworkRegistrationInfo;

    .line 1914
    new-instance v4, Landroid/telephony/NetworkRegistrationInfo;

    invoke-direct {v4, v3}, Landroid/telephony/NetworkRegistrationInfo;-><init>(Landroid/telephony/NetworkRegistrationInfo;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1915
    goto :goto_e

    .line 1916
    :cond_23
    monitor-exit v0

    return-object v1

    .line 1917
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public whitelist getNetworkRegistrationInfoListForDomain(I)Ljava/util/List;
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/NetworkRegistrationInfo;",
            ">;"
        }
    .end annotation

    .line 1955
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1957
    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v1

    .line 1958
    :try_start_8
    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/NetworkRegistrationInfo;

    .line 1959
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getDomain()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_29

    .line 1960
    new-instance v4, Landroid/telephony/NetworkRegistrationInfo;

    invoke-direct {v4, v3}, Landroid/telephony/NetworkRegistrationInfo;-><init>(Landroid/telephony/NetworkRegistrationInfo;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1962
    :cond_29
    goto :goto_e

    .line 1963
    :cond_2a
    monitor-exit v1

    .line 1965
    return-object v0

    .line 1963
    :catchall_2c
    move-exception p1

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public whitelist getNetworkRegistrationInfoListForTransportType(I)Ljava/util/List;
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/NetworkRegistrationInfo;",
            ">;"
        }
    .end annotation

    .line 1931
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1933
    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v1

    .line 1934
    :try_start_8
    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/NetworkRegistrationInfo;

    .line 1935
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getTransportType()I

    move-result v4

    if-ne v4, p1, :cond_28

    .line 1936
    new-instance v4, Landroid/telephony/NetworkRegistrationInfo;

    invoke-direct {v4, v3}, Landroid/telephony/NetworkRegistrationInfo;-><init>(Landroid/telephony/NetworkRegistrationInfo;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1938
    :cond_28
    goto :goto_e

    .line 1939
    :cond_29
    monitor-exit v1

    .line 1941
    return-object v0

    .line 1939
    :catchall_2b
    move-exception p1

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public blacklist getNrFrequencyRange()I
    .registers 2

    .line 1471
    iget v0, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    return v0
.end method

.method public blacklist getNrState()I
    .registers 3

    .line 1480
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 1482
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 1483
    :cond_a
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getNrState()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getOperatorAlpha()Ljava/lang/String;
    .registers 2

    .line 840
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 841
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    return-object v0

    .line 844
    :cond_b
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOperatorAlphaLong()Ljava/lang/String;
    .registers 2

    .line 734
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOperatorAlphaLongRaw()Ljava/lang/String;
    .registers 2

    .line 2065
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOperatorAlphaShort()Ljava/lang/String;
    .registers 2

    .line 775
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOperatorAlphaShortRaw()Ljava/lang/String;
    .registers 2

    .line 2085
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOperatorNumeric()Ljava/lang/String;
    .registers 2

    .line 869
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-r getRilDataRadioTechnology()I
    .registers 2

    .line 1528
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-r getRilVoiceRadioTechnology()I
    .registers 2

    .line 1518
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 1520
    if-eqz v0, :cond_10

    .line 1521
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v0

    return v0

    .line 1523
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getRoaming()Z
    .registers 2

    .line 630
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public whitelist getState()I
    .registers 2

    .line 508
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    return v0
.end method

.method public greylist-max-p getVoiceNetworkType()I
    .registers 2

    .line 1714
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 1716
    if-eqz v0, :cond_c

    .line 1717
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v0

    return v0

    .line 1719
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-q getVoiceOperatorAlphaLong()Ljava/lang/String;
    .registers 2

    .line 755
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-q getVoiceOperatorAlphaShort()Ljava/lang/String;
    .registers 2

    .line 796
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-p getVoiceOperatorNumeric()Ljava/lang/String;
    .registers 2

    .line 889
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-p getVoiceRegState()I
    .registers 2

    .line 523
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    return v0
.end method

.method public greylist-max-p getVoiceRoaming()Z
    .registers 2

    .line 640
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-p getVoiceRoamingType()I
    .registers 2

    .line 650
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 652
    if-eqz v0, :cond_c

    .line 653
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRoamingType()I

    move-result v0

    return v0

    .line 655
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 22

    .line 924
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v1

    .line 925
    :try_start_5
    iget v2, v0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 926
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v2, v0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 927
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v2, v0, Landroid/telephony/ServiceState;->mChannelNumber:I

    .line 928
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v2, v0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 929
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    iget-object v8, v0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    iget-object v9, v0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    iget-boolean v2, v0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 933
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-boolean v2, v0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 934
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-boolean v2, v0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 935
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget v2, v0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 936
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    iget v2, v0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    .line 938
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-object v2, v0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    move-object/from16 v16, v2

    iget-object v2, v0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    move-object/from16 v17, v2

    iget-boolean v2, v0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 941
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    iget-boolean v2, v0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    .line 942
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    iget-object v0, v0, Landroid/telephony/ServiceState;->mForceLteCA:Ljava/lang/Boolean;

    move-object/from16 v20, v0

    filled-new-array/range {v3 .. v20}, [Ljava/lang/Object;

    move-result-object v0

    .line 925
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 944
    :catchall_69
    move-exception v0

    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_5 .. :try_end_6b} :catchall_69

    throw v0
.end method

.method public greylist isEmergencyOnly()Z
    .registers 2

    .line 713
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    return v0
.end method

.method public blacklist isIwlanPreferred()Z
    .registers 2

    .line 2130
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    return v0
.end method

.method public whitelist isSearching()Z
    .registers 4

    .line 2145
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 2148
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v2

    if-ne v2, v0, :cond_f

    .line 2150
    return v1

    .line 2153
    :cond_f
    invoke-virtual {p0, v1, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 2156
    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v2

    if-ne v2, v0, :cond_1c

    .line 2158
    return v1

    .line 2160
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isUsingCarrierAggregation()Z
    .registers 4

    .line 1444
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getCellBandwidths()[I

    move-result-object v0

    array-length v0, v0

    .line 1446
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 1447
    :try_start_8
    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NetworkRegistrationInfo;

    .line 1448
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->isUsingCarrierAggregation()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1449
    nop

    .line 1450
    goto :goto_23

    .line 1452
    :cond_22
    goto :goto_e

    .line 1453
    :cond_23
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_31

    .line 1456
    iget-object v0, p0, Landroid/telephony/ServiceState;->mForceLteCA:Ljava/lang/Boolean;

    if-eqz v0, :cond_2f

    .line 1457
    iget-object v0, p0, Landroid/telephony/ServiceState;->mForceLteCA:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1461
    :cond_2f
    const/4 v0, 0x0

    return v0

    .line 1453
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public whitelist isUsingNonTerrestrialNetwork()Z
    .registers 4

    .line 2188
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 2189
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NetworkRegistrationInfo;

    .line 2190
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->isNonTerrestrialNetwork()Z

    move-result v2

    if-eqz v2, :cond_1e

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 2191
    :cond_1e
    goto :goto_9

    .line 2192
    :cond_1f
    monitor-exit v0

    .line 2193
    const/4 v0, 0x0

    return v0

    .line 2192
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public blacklist setArfcnRsrpBoost(I)V
    .registers 2

    .line 1501
    iput p1, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 1502
    return-void
.end method

.method public blacklist setCdmaSystemAndNetworkId(II)V
    .registers 3

    .line 1513
    return-void
.end method

.method public blacklist setCellBandwidths([I)V
    .registers 2

    .line 1245
    iput-object p1, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 1246
    return-void
.end method

.method public blacklist setChannelNumber(I)V
    .registers 2

    .line 1251
    iput p1, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    .line 1252
    return-void
.end method

.method public greylist-max-p setCssIndicator(I)V
    .registers 2

    .line 1507
    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 1508
    return-void
.end method

.method public greylist-max-p setDataRegState(I)V
    .registers 2

    .line 1238
    iput p1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 1240
    return-void
.end method

.method public greylist-max-r setDataRoaming(Z)V
    .registers 2

    .line 1283
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    .line 1284
    return-void
.end method

.method public blacklist setDataRoamingFromRegistration(Z)V
    .registers 2

    .line 677
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 678
    return-void
.end method

.method public blacklist setDataRoamingType(I)V
    .registers 5

    .line 1289
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 1291
    if-nez v2, :cond_19

    .line 1292
    new-instance v2, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v2}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 1293
    invoke-virtual {v2, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1294
    invoke-virtual {v0, v1}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1295
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 1297
    :cond_19
    invoke-virtual {v2, p1}, Landroid/telephony/NetworkRegistrationInfo;->setRoamingType(I)V

    .line 1298
    invoke-virtual {p0, v2}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1299
    return-void
.end method

.method public greylist-max-p setEmergencyOnly(Z)V
    .registers 2

    .line 1306
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 1307
    return-void
.end method

.method public blacklist setForceLteCA(Ljava/lang/Boolean;)V
    .registers 2

    .line 2106
    iput-object p1, p0, Landroid/telephony/ServiceState;->mForceLteCA:Ljava/lang/Boolean;

    .line 2107
    return-void
.end method

.method public whitelist setIsManualSelection(Z)V
    .registers 2

    .line 1327
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 1328
    return-void
.end method

.method public blacklist setIwlanPreferred(Z)V
    .registers 2

    .line 2095
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    .line 2096
    return-void
.end method

.method public blacklist setNrFrequencyRange(I)V
    .registers 2

    .line 1491
    iput p1, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    .line 1492
    return-void
.end method

.method public greylist-max-r setOperatorAlphaLong(Ljava/lang/String;)V
    .registers 2

    .line 1323
    iput-object p1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 1324
    return-void
.end method

.method public blacklist setOperatorAlphaLongRaw(Ljava/lang/String;)V
    .registers 2

    .line 2052
    iput-object p1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    .line 2053
    return-void
.end method

.method public blacklist setOperatorAlphaShortRaw(Ljava/lang/String;)V
    .registers 2

    .line 2072
    iput-object p1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    .line 2073
    return-void
.end method

.method public whitelist setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1310
    iput-object p1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 1311
    iput-object p2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 1312
    iput-object p3, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 1313
    return-void
.end method

.method public blacklist setOutOfService(Z)V
    .registers 2

    .line 1216
    invoke-direct {p0}, Landroid/telephony/ServiceState;->init()V

    .line 1217
    if-eqz p1, :cond_a

    .line 1218
    const/4 p1, 0x3

    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 1219
    iput p1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 1221
    :cond_a
    return-void
.end method

.method public blacklist setRilDataRadioTechnology(I)V
    .registers 5

    .line 1419
    const-string v0, "PHONE"

    const-string v1, "ServiceState.setRilDataRadioTechnology() called. It\'s encouraged to use addNetworkRegistrationInfo() instead *******"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 1427
    if-nez v2, :cond_20

    .line 1428
    new-instance v2, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v2}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 1429
    invoke-virtual {v2, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1430
    invoke-virtual {v0, v1}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1431
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 1433
    :cond_20
    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/telephony/NetworkRegistrationInfo;->setAccessNetworkTechnology(I)V

    .line 1434
    invoke-virtual {p0, v2}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1435
    return-void
.end method

.method public blacklist setRilVoiceRadioTechnology(I)V
    .registers 4

    .line 1400
    const-string v0, "PHONE"

    const-string v1, "ServiceState.setRilVoiceRadioTechnology() called. It\'s encouraged to use addNetworkRegistrationInfo() instead *******"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 1405
    if-nez v1, :cond_1f

    .line 1406
    new-instance v1, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v1}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 1407
    invoke-virtual {v1, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v1

    .line 1408
    invoke-virtual {v1, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1409
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 1411
    :cond_1f
    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/NetworkRegistrationInfo;->setAccessNetworkTechnology(I)V

    .line 1412
    invoke-virtual {p0, v1}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1413
    return-void
.end method

.method public whitelist setRoaming(Z)V
    .registers 2

    .line 1255
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 1256
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 1257
    return-void
.end method

.method public whitelist setState(I)V
    .registers 2

    .line 1224
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 1226
    return-void
.end method

.method public whitelist setStateOff()V
    .registers 2

    .line 1204
    invoke-direct {p0}, Landroid/telephony/ServiceState;->init()V

    .line 1205
    const/4 v0, 0x3

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 1206
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 1207
    return-void
.end method

.method public whitelist setStateOutOfService()V
    .registers 1

    .line 1200
    invoke-direct {p0}, Landroid/telephony/ServiceState;->init()V

    .line 1201
    return-void
.end method

.method public greylist-max-r setVoiceRegState(I)V
    .registers 2

    .line 1231
    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 1233
    return-void
.end method

.method public greylist-max-r setVoiceRoaming(Z)V
    .registers 2

    .line 1262
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 1263
    return-void
.end method

.method public blacklist setVoiceRoamingType(I)V
    .registers 4

    .line 1268
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 1270
    if-nez v1, :cond_18

    .line 1271
    new-instance v1, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v1}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 1272
    invoke-virtual {v1, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v1

    .line 1273
    invoke-virtual {v1, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1274
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 1276
    :cond_18
    invoke-virtual {v1, p1}, Landroid/telephony/NetworkRegistrationInfo;->setRoamingType(I)V

    .line 1277
    invoke-virtual {p0, v1}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1278
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1122
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 1123
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{mVoiceRegState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 1124
    invoke-static {v3}, Landroid/telephony/ServiceState;->rilServiceStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDataRegState="

    .line 1125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 1126
    invoke-static {v3}, Landroid/telephony/ServiceState;->rilServiceStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mChannelNumber="

    .line 1127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", duplexMode()="

    .line 1128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDuplexMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCellBandwidths="

    .line 1129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOperatorAlphaLong="

    .line 1130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOperatorAlphaShort="

    .line 1131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isManualNetworkSelection="

    .line 1132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1133
    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-eqz v2, :cond_bc

    const-string v2, "(manual)"

    goto :goto_be

    :cond_bc
    const-string v2, "(automatic)"

    :goto_be
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getRilVoiceRadioTechnology="

    .line 1134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1135
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getRilDataRadioTechnology="

    .line 1136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1137
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCssIndicator="

    .line 1138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    if-eqz v2, :cond_136

    const-string/jumbo v2, "supported"

    goto :goto_139

    :cond_136
    const-string/jumbo v2, "unsupported"

    :goto_139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsEmergencyOnly="

    .line 1139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isUsingCarrierAggregation="

    .line 1140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mArfcnRsrpBoost="

    .line 1141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNetworkRegistrationInfos="

    .line 1142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNrFrequencyRange="

    .line 1143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_17c

    .line 1144
    iget v2, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    goto :goto_17d

    :cond_17c
    const/4 v2, 0x0

    .line 1143
    :goto_17d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOperatorAlphaLongRaw="

    .line 1145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOperatorAlphaShortRaw="

    .line 1146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsDataRoamingFromRegistration="

    .line 1147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 1148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsIwlanPreferred="

    .line 1149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mForceLteCA="

    .line 1150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mForceLteCA:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsUsingNonTerrestrialNetwork="

    .line 1151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1152
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    .line 1153
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    .line 1123
    return-object v1

    .line 1154
    :catchall_1d8
    move-exception v1

    monitor-exit v0
    :try_end_1da
    .catchall {:try_start_3 .. :try_end_1da} :catchall_1d8

    throw v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 466
    iget p2, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    iget p2, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    iget-object p2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 469
    iget-object p2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 470
    iget-object p2, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 471
    iget-boolean p2, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    iget-boolean p2, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    iget-boolean p2, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    iget p2, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    iget-object p2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter p2

    .line 477
    :try_start_30
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 478
    monitor-exit p2
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_6e

    .line 479
    iget p2, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    iget-object p2, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 481
    iget p2, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    iget-object p2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 483
    iget-object p2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 484
    iget-boolean p2, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 485
    iget-boolean p2, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 486
    iget-object p2, p0, Landroid/telephony/ServiceState;->mForceLteCA:Ljava/lang/Boolean;

    if-nez p2, :cond_5f

    const/4 p2, -0x1

    goto :goto_6a

    :cond_5f
    iget-object p2, p0, Landroid/telephony/ServiceState;->mForceLteCA:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_69

    const/4 p2, 0x1

    goto :goto_6a

    :cond_69
    const/4 p2, 0x0

    :goto_6a
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    return-void

    .line 478
    :catchall_6e
    move-exception p1

    :try_start_6f
    monitor-exit p2
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw p1
.end method
