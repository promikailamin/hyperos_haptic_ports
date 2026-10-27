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

.field public static final blacklist FREQUENCY_RANGE_HIGH:I = 0x3

.field public static final blacklist FREQUENCY_RANGE_LOW:I = 0x1

.field public static final blacklist FREQUENCY_RANGE_MID:I = 0x2

.field public static final blacklist FREQUENCY_RANGE_MMWAVE:I = 0x4

.field private static final blacklist FREQUENCY_RANGE_ORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FREQUENCY_RANGE_UNKNOWN:I = 0x0

.field static final greylist-max-o LOG_TAG:Ljava/lang/String; = "PHONE"

.field private static final greylist-max-o NEXT_RIL_RADIO_TECHNOLOGY:I = 0x15

.field public static final greylist-max-o RIL_RADIO_CDMA_TECHNOLOGY_BITMASK:I = 0x18f8

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

.field public static final blacklist RIL_RADIO_TECHNOLOGY_NR_CA:I = 0x1e

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

.field static final greylist-max-o VDBG:Z = false


# instance fields
.field private blacklist mArfcnRsrpBoost:I

.field private greylist-max-p mCdmaDefaultRoamingIndicator:I

.field private greylist-max-p mCdmaEriIconIndex:I

.field private greylist-max-p mCdmaEriIconMode:I

.field private greylist-max-p mCdmaRoamingIndicator:I

.field private greylist-max-o mCellBandwidths:[I

.field private greylist-max-o mChannelNumber:I

.field private greylist-max-p mCssIndicator:Z

.field private greylist-max-o mDataRegState:I

.field private greylist-max-o mIsDataRoamingFromRegistration:Z

.field private greylist-max-o mIsEmergencyOnly:Z

.field private blacklist mIsIwlanPreferred:Z

.field private greylist-max-p mIsManualNetworkSelection:Z

.field private greylist-max-p mNetworkId:I

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

.field private greylist-max-p mSystemId:I

.field private greylist-max-o mVoiceRegState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 141
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    .line 142
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 143
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 144
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 145
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 146
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 141
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/telephony/ServiceState;->FREQUENCY_RANGE_ORDER:Ljava/util/List;

    .line 534
    new-instance v0, Landroid/telephony/ServiceState$1;

    invoke-direct {v0}, Landroid/telephony/ServiceState$1;-><init>()V

    sput-object v0, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 287
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 363
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 369
    iput v0, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    .line 424
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 287
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 363
    const/4 v1, 0x0

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 369
    iput v1, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 371
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 479
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 480
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3c

    move v3, v0

    goto :goto_3d

    :cond_3c
    move v3, v1

    :goto_3d
    iput-boolean v3, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 481
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_47

    move v3, v0

    goto :goto_48

    :cond_47
    move v3, v1

    :goto_48
    iput-boolean v3, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 482
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 483
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 488
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_75

    goto :goto_76

    :cond_75
    move v0, v1

    :goto_76
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 490
    monitor-enter v2

    .line 491
    :try_start_7f
    const-class v0, Landroid/telephony/NetworkRegistrationInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/NetworkRegistrationInfo;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 492
    monitor-exit v2
    :try_end_8b
    .catchall {:try_start_7f .. :try_end_8b} :catchall_b6

    .line 493
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    .line 494
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 495
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    .line 496
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    .line 497
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    .line 498
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 499
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    .line 500
    return-void

    .line 492
    :catchall_b6
    move-exception v0

    :try_start_b7
    monitor-exit v2
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    throw v0
.end method

.method public constructor whitelist <init>(Landroid/telephony/ServiceState;)V
    .registers 4
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 287
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 363
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 369
    iput v0, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    .line 432
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->copyFrom(Landroid/telephony/ServiceState;)V

    .line 433
    return-void
.end method

.method public static greylist-max-p bearerBitmapHasCdma(I)Z
    .registers 2
    .param p0, "networkTypeBitmask"    # I

    .line 1927
    nop

    .line 1928
    invoke-static {p0}, Landroid/telephony/ServiceState;->convertNetworkTypeBitmaskToBearerBitmask(I)I

    move-result v0

    and-int/lit16 v0, v0, 0x18f8

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 1927
    :goto_c
    return v0
.end method

.method public static greylist-max-r bitmaskHasTech(II)Z
    .registers 5
    .param p0, "bearerBitmask"    # I
    .param p1, "radioTech"    # I

    .line 1934
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 1935
    return v0

    .line 1936
    :cond_4
    const/4 v1, 0x0

    if-lt p1, v0, :cond_11

    .line 1937
    add-int/lit8 v2, p1, -0x1

    shl-int v2, v0, v2

    and-int/2addr v2, p0

    if-eqz v2, :cond_f

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    return v0

    .line 1939
    :cond_11
    return v1
.end method

.method public static greylist-max-o convertBearerBitmaskToNetworkTypeBitmask(I)I
    .registers 4
    .param p0, "bearerBitmask"    # I

    .line 2001
    if-nez p0, :cond_4

    .line 2002
    const/4 v0, 0x0

    return v0

    .line 2004
    :cond_4
    const/4 v0, 0x0

    .line 2005
    .local v0, "networkTypeBitmask":I
    const/4 v1, 0x0

    .local v1, "bearerInt":I
    :goto_6
    const/16 v2, 0x15

    if-ge v1, v2, :cond_1c

    .line 2006
    invoke-static {p0, v1}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2007
    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v2

    or-int/2addr v0, v2

    .line 2005
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2010
    .end local v1    # "bearerInt":I
    :cond_1c
    return v0
.end method

.method public static greylist-max-o convertNetworkTypeBitmaskToBearerBitmask(I)I
    .registers 4
    .param p0, "networkTypeBitmask"    # I

    .line 1980
    if-nez p0, :cond_4

    .line 1981
    const/4 v0, 0x0

    return v0

    .line 1983
    :cond_4
    const/4 v0, 0x0

    .line 1984
    .local v0, "bearerBitmask":I
    const/4 v1, 0x0

    .local v1, "bearerInt":I
    :goto_6
    const/16 v2, 0x15

    if-ge v1, v2, :cond_1c

    .line 1985
    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v2

    invoke-static {p0, v2}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1986
    invoke-static {v1}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v2

    or-int/2addr v0, v2

    .line 1984
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1989
    .end local v1    # "bearerInt":I
    :cond_1c
    return v0
.end method

.method private static greylist-max-p equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 1450
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_c

    :cond_6
    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_c
    return v0
.end method

.method public static blacklist frequencyRangeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "range"    # I

    .line 1149
    packed-switch p0, :pswitch_data_18

    .line 1156
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1154
    :pswitch_8
    const-string v0, "MMWAVE"

    return-object v0

    .line 1153
    :pswitch_b
    const-string v0, "HIGH"

    return-object v0

    .line 1152
    :pswitch_e
    const-string v0, "MID"

    return-object v0

    .line 1151
    :pswitch_11
    const-string v0, "LOW"

    return-object v0

    .line 1150
    :pswitch_14
    const-string v0, "UNKNOWN"

    return-object v0

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

.method public static final blacklist getBetterNRFrequencyRange(II)I
    .registers 5
    .param p0, "range1"    # I
    .param p1, "range2"    # I

    .line 2148
    sget-object v0, Landroid/telephony/ServiceState;->FREQUENCY_RANGE_ORDER:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-le v1, v0, :cond_16

    .line 2149
    move v0, p0

    goto :goto_17

    .line 2150
    :cond_16
    move v0, p1

    .line 2148
    :goto_17
    return v0
.end method

.method public static greylist-max-o getBitmaskForTech(I)I
    .registers 3
    .param p0, "radioTech"    # I

    .line 1944
    const/4 v0, 0x1

    if-lt p0, v0, :cond_7

    .line 1945
    add-int/lit8 v1, p0, -0x1

    shl-int/2addr v0, v1

    return v0

    .line 1947
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-o getBitmaskFromString(Ljava/lang/String;)I
    .registers 9
    .param p0, "bearerList"    # Ljava/lang/String;

    .line 1952
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1953
    .local v0, "bearers":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1954
    .local v1, "bearerBitmask":I
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_26

    aget-object v5, v0, v4

    .line 1955
    .local v5, "bearer":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1957
    .local v6, "bearerInt":I
    :try_start_f
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_17} :catch_24

    move v6, v7

    .line 1960
    nop

    .line 1962
    if-nez v6, :cond_1c

    .line 1963
    return v3

    .line 1966
    :cond_1c
    invoke-static {v6}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v7

    or-int/2addr v1, v7

    .line 1954
    .end local v5    # "bearer":Ljava/lang/String;
    .end local v6    # "bearerInt":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 1958
    .restart local v5    # "bearer":Ljava/lang/String;
    .restart local v6    # "bearerInt":I
    :catch_24
    move-exception v2

    .line 1959
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    return v3

    .line 1968
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    .end local v5    # "bearer":Ljava/lang/String;
    .end local v6    # "bearerInt":I
    :cond_26
    return v1
.end method

.method public static final greylist-max-o getRoamingLogString(I)Ljava/lang/String;
    .registers 2
    .param p0, "roamingType"    # I

    .line 383
    packed-switch p0, :pswitch_data_14

    .line 397
    const-string v0, "UNKNOWN"

    return-object v0

    .line 394
    :pswitch_6
    const-string v0, "International Roaming"

    return-object v0

    .line 391
    :pswitch_9
    const-string v0, "Domestic Roaming"

    return-object v0

    .line 388
    :pswitch_c
    const-string/jumbo v0, "roaming"

    return-object v0

    .line 385
    :pswitch_10
    const-string/jumbo v0, "home"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private blacklist init(Z)V
    .registers 9
    .param p1, "legacyMode"    # Z

    .line 1231
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 1232
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 1233
    const/4 v1, -0x1

    iput v1, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    .line 1234
    const/4 v2, 0x0

    new-array v3, v2, [I

    iput-object v3, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 1235
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 1236
    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 1237
    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 1238
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 1239
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 1240
    iput v1, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 1241
    iput v1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 1242
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 1243
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 1244
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 1245
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 1246
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 1247
    iput v2, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 1248
    iput v2, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    .line 1249
    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v1

    .line 1250
    :try_start_2d
    iget-object v4, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1251
    new-instance v4, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v4}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 1252
    invoke-virtual {v4, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v4

    .line 1253
    invoke-virtual {v4, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v4

    .line 1254
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setRegistrationState(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v4

    .line 1255
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v4

    .line 1251
    invoke-virtual {p0, v4}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1256
    new-instance v4, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v4}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 1257
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v4

    .line 1258
    invoke-virtual {v4, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1259
    invoke-virtual {v0, v5}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setRegistrationState(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1260
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 1256
    invoke-virtual {p0, v0}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1261
    if-nez p1, :cond_7e

    .line 1262
    new-instance v0, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 1263
    invoke-virtual {v0, v6}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1264
    invoke-virtual {v0, v6}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1265
    invoke-virtual {v0, v5}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setRegistrationState(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1266
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 1262
    invoke-virtual {p0, v0}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1268
    :cond_7e
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_2d .. :try_end_7f} :catchall_88

    .line 1269
    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    .line 1270
    iput-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    .line 1271
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 1272
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    .line 1273
    return-void

    .line 1268
    :catchall_88
    move-exception v0

    :try_start_89
    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw v0
.end method

.method public static greylist isCdma(I)Z
    .registers 2
    .param p0, "radioTechnology"    # I

    .line 1899
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
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method public static blacklist isFrequencyRangeValid(I)Z
    .registers 3
    .param p0, "frequencyRange"    # I

    .line 2291
    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    const/4 v1, 0x2

    if-eq p0, v1, :cond_f

    const/4 v1, 0x3

    if-eq p0, v1, :cond_f

    const/4 v1, 0x4

    if-ne p0, v1, :cond_d

    goto :goto_f

    .line 2297
    :cond_d
    const/4 v0, 0x0

    return v0

    .line 2295
    :cond_f
    :goto_f
    return v0
.end method

.method public static greylist isGsm(I)Z
    .registers 3
    .param p0, "radioTechnology"    # I

    .line 1878
    const/4 v0, 0x1

    if-eq p0, v0, :cond_37

    const/4 v1, 0x2

    if-eq p0, v1, :cond_37

    const/4 v1, 0x3

    if-eq p0, v1, :cond_37

    const/16 v1, 0x9

    if-eq p0, v1, :cond_37

    const/16 v1, 0xa

    if-eq p0, v1, :cond_37

    const/16 v1, 0xb

    if-eq p0, v1, :cond_37

    const/16 v1, 0xe

    if-eq p0, v1, :cond_37

    const/16 v1, 0xf

    if-eq p0, v1, :cond_37

    const/16 v1, 0x10

    if-eq p0, v1, :cond_37

    const/16 v1, 0x11

    if-eq p0, v1, :cond_37

    const/16 v1, 0x12

    if-eq p0, v1, :cond_37

    const/16 v1, 0x13

    if-eq p0, v1, :cond_37

    const/16 v1, 0x14

    if-eq p0, v1, :cond_37

    const/16 v1, 0x1e

    if-ne p0, v1, :cond_36

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :cond_37
    :goto_37
    return v0
.end method

.method public static blacklist isPsOnlyTech(I)Z
    .registers 2
    .param p0, "radioTechnology"    # I

    .line 1910
    const/16 v0, 0xe

    if-eq p0, v0, :cond_13

    const/16 v0, 0x13

    if-eq p0, v0, :cond_13

    const/16 v0, 0x14

    if-eq p0, v0, :cond_13

    const/16 v0, 0x1e

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public static blacklist isPsTech(I)Z
    .registers 2
    .param p0, "radioTechnology"    # I

    .line 1919
    const/16 v0, 0xe

    if-eq p0, v0, :cond_f

    const/16 v0, 0x13

    if-eq p0, v0, :cond_f

    const/16 v0, 0x14

    if-ne p0, v0, :cond_d

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

.method public static greylist-max-r mergeServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .registers 4
    .param p0, "baseSs"    # Landroid/telephony/ServiceState;
    .param p1, "voiceSs"    # Landroid/telephony/ServiceState;

    .line 2020
    iget v0, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    if-eqz v0, :cond_5

    .line 2021
    return-object p0

    .line 2024
    :cond_5
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0, p0}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 2027
    .local v0, "newSs":Landroid/telephony/ServiceState;
    iget v1, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iput v1, v0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 2028
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 2030
    return-object v0
.end method

.method public static greylist-max-o networkTypeToRilRadioTechnology(I)I
    .registers 2
    .param p0, "networkType"    # I

    .line 1738
    packed-switch p0, :pswitch_data_3c

    .line 1782
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 1779
    :pswitch_5
    const/16 v0, 0x1e

    return v0

    .line 1776
    :pswitch_8
    const/16 v0, 0x14

    return v0

    .line 1774
    :pswitch_b
    const/16 v0, 0x13

    return v0

    .line 1772
    :pswitch_e
    const/16 v0, 0x12

    return v0

    .line 1770
    :pswitch_11
    const/16 v0, 0x11

    return v0

    .line 1768
    :pswitch_14
    const/16 v0, 0x10

    return v0

    .line 1766
    :pswitch_17
    const/16 v0, 0xf

    return v0

    .line 1762
    :pswitch_1a
    const/16 v0, 0xd

    return v0

    .line 1764
    :pswitch_1d
    const/16 v0, 0xe

    return v0

    .line 1760
    :pswitch_20
    const/16 v0, 0xc

    return v0

    .line 1750
    :pswitch_23
    const/16 v0, 0xb

    return v0

    .line 1748
    :pswitch_26
    const/16 v0, 0xa

    return v0

    .line 1746
    :pswitch_29
    const/16 v0, 0x9

    return v0

    .line 1754
    :pswitch_2c
    const/4 v0, 0x6

    return v0

    .line 1758
    :pswitch_2e
    const/16 v0, 0x8

    return v0

    .line 1756
    :pswitch_31
    const/4 v0, 0x7

    return v0

    .line 1752
    :pswitch_33
    const/4 v0, 0x4

    return v0

    .line 1744
    :pswitch_35
    const/4 v0, 0x3

    return v0

    .line 1742
    :pswitch_37
    const/4 v0, 0x2

    return v0

    .line 1740
    :pswitch_39
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_39
        :pswitch_37
        :pswitch_35
        :pswitch_33
        :pswitch_31
        :pswitch_2e
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_3
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static greylist newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;
    .registers 2
    .param p0, "m"    # Landroid/os/Bundle;

    .line 415
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    .line 416
    .local v0, "ret":Landroid/telephony/ServiceState;
    invoke-direct {v0, p0}, Landroid/telephony/ServiceState;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 417
    return-object v0
.end method

.method public static greylist-max-o rilRadioTechnologyToAccessNetworkType(I)I
    .registers 2
    .param p0, "rt"    # I

    .line 1693
    packed-switch p0, :pswitch_data_12

    .line 1724
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 1719
    :pswitch_5
    const/4 v0, 0x6

    return v0

    .line 1721
    :pswitch_7
    const/4 v0, 0x5

    return v0

    .line 1715
    :pswitch_9
    const/4 v0, 0x3

    return v0

    .line 1712
    :pswitch_b
    const/4 v0, 0x4

    return v0

    .line 1704
    :pswitch_d
    const/4 v0, 0x2

    return v0

    .line 1697
    :pswitch_f
    const/4 v0, 0x1

    return v0

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
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static greylist-max-o rilRadioTechnologyToNetworkType(I)I
    .registers 2
    .param p0, "rat"    # I

    .line 1642
    packed-switch p0, :pswitch_data_3a

    .line 1687
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 1684
    :pswitch_5
    const/16 v0, 0x1e

    return v0

    .line 1681
    :pswitch_8
    const/16 v0, 0x14

    return v0

    .line 1679
    :pswitch_b
    const/16 v0, 0x13

    return v0

    .line 1677
    :pswitch_e
    const/16 v0, 0x12

    return v0

    .line 1675
    :pswitch_11
    const/16 v0, 0x11

    return v0

    .line 1673
    :pswitch_14
    const/16 v0, 0x10

    return v0

    .line 1671
    :pswitch_17
    const/16 v0, 0xf

    return v0

    .line 1669
    :pswitch_1a
    const/16 v0, 0xd

    return v0

    .line 1667
    :pswitch_1d
    const/16 v0, 0xe

    return v0

    .line 1665
    :pswitch_20
    const/16 v0, 0xc

    return v0

    .line 1654
    :pswitch_23
    const/16 v0, 0xa

    return v0

    .line 1652
    :pswitch_26
    const/16 v0, 0x9

    return v0

    .line 1650
    :pswitch_29
    const/16 v0, 0x8

    return v0

    .line 1663
    :pswitch_2c
    const/4 v0, 0x6

    return v0

    .line 1661
    :pswitch_2e
    const/4 v0, 0x5

    return v0

    .line 1659
    :pswitch_30
    const/4 v0, 0x7

    return v0

    .line 1657
    :pswitch_32
    const/4 v0, 0x4

    return v0

    .line 1648
    :pswitch_34
    const/4 v0, 0x3

    return v0

    .line 1646
    :pswitch_36
    const/4 v0, 0x2

    return v0

    .line 1644
    :pswitch_38
    const/4 v0, 0x1

    return v0

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_38
        :pswitch_36
        :pswitch_34
        :pswitch_32
        :pswitch_32
        :pswitch_30
        :pswitch_2e
        :pswitch_2c
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
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static greylist-max-r rilRadioTechnologyToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "rt"    # I

    .line 1063
    packed-switch p0, :pswitch_data_62

    .line 1133
    :pswitch_3
    const-string v0, "Unexpected"

    .line 1134
    .local v0, "rtString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected radioTechnology="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PHONE"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 1129
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_1e
    const-string v0, "NR_CA"

    .line 1130
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_60

    .line 1125
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_21
    const-string v0, "NR_SA"

    .line 1126
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_60

    .line 1122
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_24
    const-string v0, "LTE_CA"

    .line 1123
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_60

    .line 1116
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_27
    const-string v0, "IWLAN"

    .line 1117
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_60

    .line 1119
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_2a
    const-string v0, "TD-SCDMA"

    .line 1120
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_60

    .line 1113
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_2d
    const-string v0, "GSM"

    .line 1114
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_60

    .line 1110
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_30
    const-string v0, "HSPAP"

    .line 1111
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_60

    .line 1107
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_33
    const-string v0, "LTE"

    .line 1108
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_60

    .line 1104
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_36
    const-string v0, "eHRPD"

    .line 1105
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_60

    .line 1101
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_39
    const-string v0, "EvDo-rev.B"

    .line 1102
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_60

    .line 1098
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_3c
    const-string v0, "HSPA"

    .line 1099
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_60

    .line 1095
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_3f
    const-string v0, "HSUPA"

    .line 1096
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_60

    .line 1092
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_42
    const-string v0, "HSDPA"

    .line 1093
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_60

    .line 1089
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_45
    const-string v0, "EvDo-rev.A"

    .line 1090
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_60

    .line 1086
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_48
    const-string v0, "EvDo-rev.0"

    .line 1087
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_60

    .line 1083
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_4b
    const-string v0, "1xRTT"

    .line 1084
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_60

    .line 1080
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_4e
    const-string v0, "CDMA-IS95B"

    .line 1081
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_60

    .line 1077
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_51
    const-string v0, "CDMA-IS95A"

    .line 1078
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_60

    .line 1074
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_54
    const-string v0, "UMTS"

    .line 1075
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_60

    .line 1071
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_57
    const-string v0, "EDGE"

    .line 1072
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_60

    .line 1068
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_5a
    const-string v0, "GPRS"

    .line 1069
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_60

    .line 1065
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_5d
    const-string v0, "Unknown"

    .line 1066
    .restart local v0    # "rtString":Ljava/lang/String;
    nop

    .line 1137
    :goto_60
    return-object v0

    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1e
    .end packed-switch
.end method

.method public static greylist-max-o rilServiceStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "serviceState"    # I

    .line 1169
    packed-switch p0, :pswitch_data_12

    .line 1179
    const-string v0, "UNKNOWN"

    return-object v0

    .line 1177
    :pswitch_6
    const-string v0, "POWER_OFF"

    return-object v0

    .line 1175
    :pswitch_9
    const-string v0, "EMERGENCY_ONLY"

    return-object v0

    .line 1173
    :pswitch_c
    const-string v0, "OUT_OF_SERVICE"

    return-object v0

    .line 1171
    :pswitch_f
    const-string v0, "IN_SERVICE"

    return-object v0

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
    .param p0, "roamingType"    # I

    .line 1042
    packed-switch p0, :pswitch_data_24

    .line 1048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown roaming type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1046
    :pswitch_17
    const-string v0, "INTERNATIONAL"

    return-object v0

    .line 1045
    :pswitch_1a
    const-string v0, "DOMESTIC"

    return-object v0

    .line 1044
    :pswitch_1d
    const-string v0, "UNKNOWN"

    return-object v0

    .line 1043
    :pswitch_20
    const-string v0, "NOT_ROAMING"

    return-object v0

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
    .registers 3
    .param p1, "m"    # Landroid/os/Bundle;

    .line 1461
    const-string v0, "android.intent.extra.SERVICE_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/ServiceState;

    .line 1462
    .local v0, "ssFromBundle":Landroid/telephony/ServiceState;
    if-eqz v0, :cond_d

    .line 1463
    invoke-virtual {p0, v0}, Landroid/telephony/ServiceState;->copyFrom(Landroid/telephony/ServiceState;)V

    .line 1465
    :cond_d
    return-void
.end method


# virtual methods
.method public blacklist addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V
    .registers 7
    .param p1, "nri"    # Landroid/telephony/NetworkRegistrationInfo;

    .line 2128
    if-nez p1, :cond_3

    return-void

    .line 2130
    :cond_3
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 2131
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    :try_start_7
    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 2132
    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NetworkRegistrationInfo;

    .line 2133
    .local v2, "curRegState":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getTransportType()I

    move-result v3

    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getTransportType()I

    move-result v4

    if-ne v3, v4, :cond_31

    .line 2134
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getDomain()I

    move-result v3

    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getDomain()I

    move-result v4

    if-ne v3, v4, :cond_31

    .line 2135
    iget-object v3, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2136
    goto :goto_34

    .line 2131
    .end local v2    # "curRegState":Landroid/telephony/NetworkRegistrationInfo;
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2140
    .end local v1    # "i":I
    :cond_34
    :goto_34
    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    new-instance v2, Landroid/telephony/NetworkRegistrationInfo;

    invoke-direct {v2, p1}, Landroid/telephony/NetworkRegistrationInfo;-><init>(Landroid/telephony/NetworkRegistrationInfo;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2141
    monitor-exit v0

    .line 2142
    return-void

    .line 2141
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_40

    throw v1
.end method

.method protected whitelist copyFrom(Landroid/telephony/ServiceState;)V
    .registers 7
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .line 436
    iget v0, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 437
    iget v0, p1, Landroid/telephony/ServiceState;->mDataRegState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 438
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 439
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 440
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 441
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 442
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mCssIndicator:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 443
    iget v0, p1, Landroid/telephony/ServiceState;->mNetworkId:I

    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 444
    iget v0, p1, Landroid/telephony/ServiceState;->mSystemId:I

    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 445
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 446
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 447
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 448
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 449
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 450
    iget v0, p1, Landroid/telephony/ServiceState;->mChannelNumber:I

    iput v0, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    .line 451
    iget-object v0, p1, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    if-nez v0, :cond_42

    const/4 v0, 0x0

    goto :goto_47

    .line 452
    :cond_42
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    :goto_47
    iput-object v0, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 453
    iget v0, p1, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    iput v0, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 454
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 455
    :try_start_50
    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 456
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NetworkRegistrationInfo;

    .line 457
    .local v2, "nri":Landroid/telephony/NetworkRegistrationInfo;
    iget-object v3, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    new-instance v4, Landroid/telephony/NetworkRegistrationInfo;

    invoke-direct {v4, v2}, Landroid/telephony/NetworkRegistrationInfo;-><init>(Landroid/telephony/NetworkRegistrationInfo;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    nop

    .end local v2    # "nri":Landroid/telephony/NetworkRegistrationInfo;
    goto :goto_5d

    .line 459
    :cond_75
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_50 .. :try_end_76} :catchall_8b

    .line 460
    iget v0, p1, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    iput v0, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    .line 461
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    .line 462
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    .line 463
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 464
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    .line 465
    return-void

    .line 459
    :catchall_8b
    move-exception v1

    :try_start_8c
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    throw v1
.end method

.method public blacklist createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;
    .registers 6
    .param p1, "removeCoarseLocation"    # Z

    .line 2168
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0, p0}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 2169
    .local v0, "state":Landroid/telephony/ServiceState;
    iget-object v1, v0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v1

    .line 2170
    :try_start_8
    iget-object v2, v0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    .line 2171
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/telephony/ServiceState$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/telephony/ServiceState$$ExternalSyntheticLambda0;-><init>()V

    .line 2172
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 2173
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2174
    .local v2, "networkRegistrationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NetworkRegistrationInfo;>;"
    iget-object v3, v0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 2175
    iget-object v3, v0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2176
    nop

    .end local v2    # "networkRegistrationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NetworkRegistrationInfo;>;"
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_3d

    .line 2177
    if-nez p1, :cond_30

    return-object v0

    .line 2179
    :cond_30
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 2180
    iput-object v1, v0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 2181
    iput-object v1, v0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 2182
    const/4 v1, -0x1

    iput v1, v0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 2183
    iput v1, v0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 2185
    return-object v0

    .line 2176
    :catchall_3d
    move-exception v2

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v2
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 531
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1004
    instance-of v0, p1, Landroid/telephony/ServiceState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1005
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/telephony/ServiceState;

    .line 1007
    .local v0, "s":Landroid/telephony/ServiceState;
    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v2

    .line 1008
    :try_start_c
    iget v3, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iget v4, v0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    if-ne v3, v4, :cond_ec

    iget v3, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    iget v4, v0, Landroid/telephony/ServiceState;->mDataRegState:I

    if-ne v3, v4, :cond_ec

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    iget-boolean v4, v0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-ne v3, v4, :cond_ec

    iget v3, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    iget v4, v0, Landroid/telephony/ServiceState;->mChannelNumber:I

    if-ne v3, v4, :cond_ec

    iget-object v3, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    iget-object v4, v0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 1012
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_ec

    iget-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    iget-object v4, v0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 1013
    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    iget-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    iget-object v4, v0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 1014
    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    iget-object v3, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    iget-object v4, v0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 1015
    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 1016
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    iget v3, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 1017
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    iget v3, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 1018
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 1019
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 1020
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 1021
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1020
    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    iget-boolean v4, v0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    if-ne v3, v4, :cond_ec

    iget-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    iget-object v4, v0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    .line 1023
    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    iget-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    iget-object v4, v0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    .line 1024
    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    iget-object v3, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    .line 1025
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_ec

    iget-object v3, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    iget-object v4, v0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    .line 1026
    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_ec

    iget v3, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    iget v4, v0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    if-ne v3, v4, :cond_ec

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    iget-boolean v4, v0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    if-ne v3, v4, :cond_ec

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    iget-boolean v4, v0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    if-ne v3, v4, :cond_ec

    const/4 v1, 0x1

    goto :goto_ed

    :cond_ec
    nop

    :goto_ed
    monitor-exit v2

    .line 1008
    return v1

    .line 1030
    :catchall_ef
    move-exception v1

    monitor-exit v2
    :try_end_f1
    .catchall {:try_start_c .. :try_end_f1} :catchall_ef

    throw v1
.end method

.method public greylist fillInNotifierBundle(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "m"    # Landroid/os/Bundle;

    .line 1479
    const-string v0, "android.intent.extra.SERVICE_STATE"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1482
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    const-string/jumbo v1, "voiceRegState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1483
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    const-string v1, "dataRegState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1484
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v0

    const-string v1, "dataRoamingType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1485
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v0

    const-string/jumbo v1, "voiceRoamingType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1486
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    const-string/jumbo v1, "operator-alpha-long"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    const-string/jumbo v1, "operator-alpha-short"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    const-string/jumbo v1, "operator-numeric"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    const-string v1, "data-operator-alpha-long"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    const-string v1, "data-operator-alpha-short"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    const-string v1, "data-operator-numeric"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    const-string/jumbo v1, "manual"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1493
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const-string/jumbo v1, "radioTechnology"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1494
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const-string v1, "dataRadioTechnology"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1495
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    const-string v1, "cssIndicator"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1496
    iget v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    const-string/jumbo v1, "networkId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1497
    iget v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    const-string/jumbo v1, "systemId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1498
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    const-string v1, "cdmaRoamingIndicator"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1499
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    const-string v1, "cdmaDefaultRoamingIndicator"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1500
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    const-string v1, "emergencyOnly"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1501
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v0

    const-string/jumbo v1, "isDataRoamingFromRegistration"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1502
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v0

    const-string/jumbo v1, "isUsingCarrierAggregation"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1503
    iget v0, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    const-string v1, "ArfcnRsrpBoost"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1504
    iget v0, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    const-string v1, "ChannelNumber"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1505
    iget-object v0, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    const-string v1, "CellBandwidths"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1506
    iget v0, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    const-string/jumbo v1, "mNrFrequencyRange"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1507
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    const-string/jumbo v1, "operator-alpha-long-raw"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    const-string/jumbo v1, "operator-alpha-short-raw"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    return-void
.end method

.method public blacklist getArfcnRsrpBoost()I
    .registers 2

    .line 1595
    iget v0, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    return v0
.end method

.method public greylist getCdmaDefaultRoamingIndicator()I
    .registers 2

    .line 747
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    return v0
.end method

.method public greylist getCdmaEriIconIndex()I
    .registers 2

    .line 755
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    return v0
.end method

.method public greylist getCdmaEriIconMode()I
    .registers 2

    .line 763
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    return v0
.end method

.method public whitelist getCdmaNetworkId()I
    .registers 2

    .line 1854
    iget v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    return v0
.end method

.method public greylist getCdmaRoamingIndicator()I
    .registers 2

    .line 739
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    return v0
.end method

.method public whitelist getCdmaSystemId()I
    .registers 2

    .line 1872
    iget v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    return v0
.end method

.method public whitelist getCellBandwidths()[I
    .registers 2

    .line 638
    iget-object v0, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    if-nez v0, :cond_7

    const/4 v0, 0x0

    new-array v0, v0, [I

    :cond_7
    return-object v0
.end method

.method public whitelist getChannelNumber()I
    .registers 2

    .line 629
    iget v0, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    return v0
.end method

.method public greylist-max-p getCssIndicator()I
    .registers 2

    .line 1836
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    return v0
.end method

.method public blacklist getDataNetworkType()I
    .registers 4

    .line 1798
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 1800
    .local v1, "iwlanRegInfo":Landroid/telephony/NetworkRegistrationInfo;
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 1805
    .local v0, "wwanRegInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_28

    .line 1813
    :cond_13
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v2

    if-eqz v2, :cond_23

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    if-eqz v2, :cond_1e

    goto :goto_23

    .line 1819
    :cond_1e
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v2

    return v2

    .line 1814
    :cond_23
    :goto_23
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v2

    return v2

    .line 1806
    :cond_28
    :goto_28
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v2

    goto :goto_30

    .line 1807
    :cond_2f
    const/4 v2, 0x0

    .line 1806
    :goto_30
    return v2
.end method

.method public greylist-max-q getDataOperatorAlphaShort()Ljava/lang/String;
    .registers 2

    .line 867
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-q getDataOperatorNumeric()Ljava/lang/String;
    .registers 2

    .line 960
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getDataRegState()I
    .registers 2

    .line 582
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    return v0
.end method

.method public blacklist getDataRegistrationState()I
    .registers 2

    .line 598
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    return v0
.end method

.method public greylist-max-p getDataRoaming()Z
    .registers 2

    .line 685
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

    .line 708
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    return v0
.end method

.method public greylist-max-p getDataRoamingType()I
    .registers 3

    .line 718
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 720
    .local v0, "regState":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v0, :cond_d

    .line 721
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRoamingType()I

    move-result v1

    return v1

    .line 723
    :cond_d
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getDuplexMode()I
    .registers 3

    .line 613
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 614
    const/4 v0, 0x0

    return v0

    .line 617
    :cond_c
    iget v0, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getOperatingBandForEarfcn(I)I

    move-result v0

    .line 618
    .local v0, "band":I
    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getDuplexModeForEutranBand(I)I

    move-result v1

    return v1
.end method

.method public whitelist getIsManualSelection()Z
    .registers 2

    .line 969
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    return v0
.end method

.method public whitelist getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;
    .registers 7
    .param p1, "domain"    # I
    .param p2, "transportType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2111
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 2112
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

    .line 2113
    .local v2, "networkRegistrationInfo":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getTransportType()I

    move-result v3

    if-ne v3, p2, :cond_29

    .line 2114
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getDomain()I

    move-result v3

    and-int/2addr v3, p1

    if-eqz v3, :cond_29

    .line 2115
    new-instance v1, Landroid/telephony/NetworkRegistrationInfo;

    invoke-direct {v1, v2}, Landroid/telephony/NetworkRegistrationInfo;-><init>(Landroid/telephony/NetworkRegistrationInfo;)V

    monitor-exit v0

    return-object v1

    .line 2117
    .end local v2    # "networkRegistrationInfo":Landroid/telephony/NetworkRegistrationInfo;
    :cond_29
    goto :goto_9

    .line 2118
    :cond_2a
    monitor-exit v0

    .line 2120
    const/4 v0, 0x0

    return-object v0

    .line 2118
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
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

    .line 2040
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 2041
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2042
    .local v1, "newList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NetworkRegistrationInfo;>;"
    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/NetworkRegistrationInfo;

    .line 2043
    .local v3, "nri":Landroid/telephony/NetworkRegistrationInfo;
    new-instance v4, Landroid/telephony/NetworkRegistrationInfo;

    invoke-direct {v4, v3}, Landroid/telephony/NetworkRegistrationInfo;-><init>(Landroid/telephony/NetworkRegistrationInfo;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2044
    nop

    .end local v3    # "nri":Landroid/telephony/NetworkRegistrationInfo;
    goto :goto_e

    .line 2045
    :cond_24
    monitor-exit v0

    return-object v1

    .line 2046
    .end local v1    # "newList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NetworkRegistrationInfo;>;"
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public whitelist getNetworkRegistrationInfoListForDomain(I)Ljava/util/List;
    .registers 7
    .param p1, "domain"    # I
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

    .line 2084
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2086
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NetworkRegistrationInfo;>;"
    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v1

    .line 2087
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

    .line 2088
    .local v3, "networkRegistrationInfo":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getDomain()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_29

    .line 2089
    new-instance v4, Landroid/telephony/NetworkRegistrationInfo;

    invoke-direct {v4, v3}, Landroid/telephony/NetworkRegistrationInfo;-><init>(Landroid/telephony/NetworkRegistrationInfo;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2091
    .end local v3    # "networkRegistrationInfo":Landroid/telephony/NetworkRegistrationInfo;
    :cond_29
    goto :goto_e

    .line 2092
    :cond_2a
    monitor-exit v1

    .line 2094
    return-object v0

    .line 2092
    :catchall_2c
    move-exception v2

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_2c

    throw v2
.end method

.method public whitelist getNetworkRegistrationInfoListForTransportType(I)Ljava/util/List;
    .registers 7
    .param p1, "transportType"    # I
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

    .line 2060
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2062
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NetworkRegistrationInfo;>;"
    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v1

    .line 2063
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

    .line 2064
    .local v3, "networkRegistrationInfo":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getTransportType()I

    move-result v4

    if-ne v4, p1, :cond_28

    .line 2065
    new-instance v4, Landroid/telephony/NetworkRegistrationInfo;

    invoke-direct {v4, v3}, Landroid/telephony/NetworkRegistrationInfo;-><init>(Landroid/telephony/NetworkRegistrationInfo;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2067
    .end local v3    # "networkRegistrationInfo":Landroid/telephony/NetworkRegistrationInfo;
    :cond_28
    goto :goto_e

    .line 2068
    :cond_29
    monitor-exit v1

    .line 2070
    return-object v0

    .line 2068
    :catchall_2b
    move-exception v2

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_2b

    throw v2
.end method

.method public blacklist getNrFrequencyRange()I
    .registers 2

    .line 1570
    iget v0, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    return v0
.end method

.method public blacklist getNrState()I
    .registers 3

    .line 1579
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 1581
    .local v0, "regInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    return v1

    .line 1582
    :cond_a
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getNrState()I

    move-result v1

    return v1
.end method

.method public greylist-max-o getOperatorAlpha()Ljava/lang/String;
    .registers 2

    .line 890
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 891
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    return-object v0

    .line 894
    :cond_b
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOperatorAlphaLong()Ljava/lang/String;
    .registers 2

    .line 784
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOperatorAlphaLongRaw()Ljava/lang/String;
    .registers 2

    .line 2205
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOperatorAlphaShort()Ljava/lang/String;
    .registers 2

    .line 825
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOperatorAlphaShortRaw()Ljava/lang/String;
    .registers 2

    .line 2225
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOperatorNumeric()Ljava/lang/String;
    .registers 2

    .line 919
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-r getRilDataRadioTechnology()I
    .registers 2

    .line 1629
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-r getRilVoiceRadioTechnology()I
    .registers 3

    .line 1619
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 1621
    .local v0, "wwanRegInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v0, :cond_10

    .line 1622
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v1

    return v1

    .line 1624
    :cond_10
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getRoaming()Z
    .registers 2

    .line 649
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

    .line 549
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    return v0
.end method

.method public greylist-max-p getVoiceNetworkType()I
    .registers 3

    .line 1825
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 1827
    .local v0, "regState":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v0, :cond_c

    .line 1828
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v1

    return v1

    .line 1830
    :cond_c
    const/4 v1, 0x0

    return v1
.end method

.method public greylist-max-q getVoiceOperatorAlphaLong()Ljava/lang/String;
    .registers 2

    .line 805
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-q getVoiceOperatorAlphaShort()Ljava/lang/String;
    .registers 2

    .line 846
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-p getVoiceOperatorNumeric()Ljava/lang/String;
    .registers 2

    .line 939
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-p getVoiceRegState()I
    .registers 2

    .line 564
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    return v0
.end method

.method public greylist-max-p getVoiceRoaming()Z
    .registers 2

    .line 659
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
    .registers 3

    .line 668
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 670
    .local v0, "regState":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v0, :cond_c

    .line 671
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRoamingType()I

    move-result v1

    return v1

    .line 673
    :cond_c
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 974
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 975
    const/16 v1, 0x17

    :try_start_5
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 976
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 977
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    .line 978
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 979
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 983
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 984
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget v3, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 985
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget v3, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 986
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 987
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 988
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 989
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xe

    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 990
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 991
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    iget v3, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 992
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x11

    iget-object v3, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    iget v3, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    .line 994
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x13

    iget-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    iget-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 997
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x16

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    .line 998
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 975
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 999
    :catchall_d7
    move-exception v1

    monitor-exit v0
    :try_end_d9
    .catchall {:try_start_5 .. :try_end_d9} :catchall_d7

    throw v1
.end method

.method public greylist isEmergencyOnly()Z
    .registers 2

    .line 731
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    return v0
.end method

.method public blacklist isIwlanPreferred()Z
    .registers 2

    .line 2249
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    return v0
.end method

.method public whitelist isSearching()Z
    .registers 6

    .line 2264
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 2267
    .local v2, "psRegState":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v3

    if-ne v3, v0, :cond_f

    .line 2269
    return v1

    .line 2272
    :cond_f
    invoke-virtual {p0, v1, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v3

    .line 2275
    .local v3, "csRegState":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v4

    if-ne v4, v0, :cond_1c

    .line 2277
    return v1

    .line 2279
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isUsingCarrierAggregation()Z
    .registers 6

    .line 1553
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getCellBandwidths()[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_9

    return v1

    .line 1555
    :cond_9
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 1556
    :try_start_c
    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/NetworkRegistrationInfo;

    .line 1557
    .local v3, "nri":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->isUsingCarrierAggregation()Z

    move-result v4

    if-eqz v4, :cond_26

    monitor-exit v0

    return v1

    .line 1558
    .end local v3    # "nri":Landroid/telephony/NetworkRegistrationInfo;
    :cond_26
    goto :goto_12

    .line 1559
    :cond_27
    monitor-exit v0

    .line 1560
    const/4 v0, 0x0

    return v0

    .line 1559
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public blacklist setArfcnRsrpBoost(I)V
    .registers 2
    .param p1, "arfcnRsrpBoost"    # I

    .line 1600
    iput p1, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    .line 1601
    return-void
.end method

.method public greylist-max-p setCdmaDefaultRoamingIndicator(I)V
    .registers 2
    .param p1, "roaming"    # I

    .line 1401
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 1402
    return-void
.end method

.method public greylist-max-p setCdmaEriIconIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .line 1409
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 1410
    return-void
.end method

.method public greylist-max-p setCdmaEriIconMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 1417
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 1418
    return-void
.end method

.method public greylist-max-p setCdmaRoamingIndicator(I)V
    .registers 2
    .param p1, "roaming"    # I

    .line 1393
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 1394
    return-void
.end method

.method public blacklist setCdmaSystemAndNetworkId(II)V
    .registers 3
    .param p1, "systemId"    # I
    .param p2, "networkId"    # I

    .line 1612
    iput p1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 1613
    iput p2, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 1614
    return-void
.end method

.method public blacklist setCellBandwidths([I)V
    .registers 2
    .param p1, "bandwidths"    # [I

    .line 1324
    iput-object p1, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 1325
    return-void
.end method

.method public blacklist setChannelNumber(I)V
    .registers 2
    .param p1, "channelNumber"    # I

    .line 1330
    iput p1, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    .line 1331
    return-void
.end method

.method public greylist-max-p setCssIndicator(I)V
    .registers 3
    .param p1, "css"    # I

    .line 1606
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 1607
    return-void
.end method

.method public greylist-max-p setDataRegState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 1317
    iput p1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 1319
    return-void
.end method

.method public greylist-max-r setDataRoaming(Z)V
    .registers 2
    .param p1, "dataRoaming"    # Z

    .line 1362
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    .line 1363
    return-void
.end method

.method public blacklist setDataRoamingFromRegistration(Z)V
    .registers 2
    .param p1, "dataRoaming"    # Z

    .line 695
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 696
    return-void
.end method

.method public blacklist setDataRoamingType(I)V
    .registers 6
    .param p1, "type"    # I

    .line 1368
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 1370
    .local v2, "regInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-nez v2, :cond_19

    .line 1371
    new-instance v3, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v3}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 1372
    invoke-virtual {v3, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1373
    invoke-virtual {v0, v1}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1374
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 1376
    :cond_19
    invoke-virtual {v2, p1}, Landroid/telephony/NetworkRegistrationInfo;->setRoamingType(I)V

    .line 1377
    invoke-virtual {p0, v2}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1378
    return-void
.end method

.method public greylist-max-p setEmergencyOnly(Z)V
    .registers 2
    .param p1, "emergencyOnly"    # Z

    .line 1385
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 1386
    return-void
.end method

.method public whitelist setIsManualSelection(Z)V
    .registers 2
    .param p1, "isManual"    # Z

    .line 1438
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 1439
    return-void
.end method

.method public blacklist setIwlanPreferred(Z)V
    .registers 2
    .param p1, "isIwlanPreferred"    # Z

    .line 2235
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    .line 2236
    return-void
.end method

.method public blacklist setNrFrequencyRange(I)V
    .registers 2
    .param p1, "nrFrequencyRange"    # I

    .line 1590
    iput p1, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    .line 1591
    return-void
.end method

.method public greylist-max-r setOperatorAlphaLong(Ljava/lang/String;)V
    .registers 2
    .param p1, "longName"    # Ljava/lang/String;

    .line 1434
    iput-object p1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 1435
    return-void
.end method

.method public blacklist setOperatorAlphaLongRaw(Ljava/lang/String;)V
    .registers 2
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;

    .line 2192
    iput-object p1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    .line 2193
    return-void
.end method

.method public blacklist setOperatorAlphaShortRaw(Ljava/lang/String;)V
    .registers 2
    .param p1, "operatorAlphaShort"    # Ljava/lang/String;

    .line 2212
    iput-object p1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    .line 2213
    return-void
.end method

.method public whitelist setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "longName"    # Ljava/lang/String;
    .param p2, "shortName"    # Ljava/lang/String;
    .param p3, "numeric"    # Ljava/lang/String;

    .line 1421
    iput-object p1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 1422
    iput-object p2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 1423
    iput-object p3, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 1424
    return-void
.end method

.method public blacklist setOutOfService(ZZ)V
    .registers 4
    .param p1, "legacyMode"    # Z
    .param p2, "powerOff"    # Z

    .line 1295
    invoke-direct {p0, p1}, Landroid/telephony/ServiceState;->init(Z)V

    .line 1296
    if-eqz p2, :cond_a

    .line 1297
    const/4 v0, 0x3

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 1298
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 1300
    :cond_a
    return-void
.end method

.method public blacklist setRilDataRadioTechnology(I)V
    .registers 6
    .param p1, "rt"    # I

    .line 1533
    const-string v0, "PHONE"

    const-string v1, "ServiceState.setRilDataRadioTechnology() called. It\'s encouraged to use addNetworkRegistrationInfo() instead *******"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 1541
    .local v2, "regInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-nez v2, :cond_20

    .line 1542
    new-instance v3, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v3}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 1543
    invoke-virtual {v3, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1544
    invoke-virtual {v0, v1}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1545
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 1547
    :cond_20
    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/telephony/NetworkRegistrationInfo;->setAccessNetworkTechnology(I)V

    .line 1548
    invoke-virtual {p0, v2}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1549
    return-void
.end method

.method public blacklist setRilVoiceRadioTechnology(I)V
    .registers 5
    .param p1, "rt"    # I

    .line 1514
    const-string v0, "PHONE"

    const-string v1, "ServiceState.setRilVoiceRadioTechnology() called. It\'s encouraged to use addNetworkRegistrationInfo() instead *******"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 1519
    .local v1, "regInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-nez v1, :cond_1f

    .line 1520
    new-instance v2, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v2}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 1521
    invoke-virtual {v2, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v2

    .line 1522
    invoke-virtual {v2, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1523
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 1525
    :cond_1f
    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/telephony/NetworkRegistrationInfo;->setAccessNetworkTechnology(I)V

    .line 1526
    invoke-virtual {p0, v1}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1527
    return-void
.end method

.method public whitelist setRoaming(Z)V
    .registers 2
    .param p1, "roaming"    # Z

    .line 1334
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 1335
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 1336
    return-void
.end method

.method public whitelist setState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 1303
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 1305
    return-void
.end method

.method public whitelist setStateOff()V
    .registers 2

    .line 1280
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->init(Z)V

    .line 1281
    const/4 v0, 0x3

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 1282
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 1283
    return-void
.end method

.method public whitelist setStateOutOfService()V
    .registers 2

    .line 1276
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->init(Z)V

    .line 1277
    return-void
.end method

.method public greylist-max-r setVoiceRegState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 1310
    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 1312
    return-void
.end method

.method public greylist-max-r setVoiceRoaming(Z)V
    .registers 2
    .param p1, "roaming"    # Z

    .line 1341
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 1342
    return-void
.end method

.method public blacklist setVoiceRoamingType(I)V
    .registers 5
    .param p1, "type"    # I

    .line 1347
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 1349
    .local v1, "regInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-nez v1, :cond_18

    .line 1350
    new-instance v2, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v2}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 1351
    invoke-virtual {v2, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v2

    .line 1352
    invoke-virtual {v2, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 1353
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 1355
    :cond_18
    invoke-virtual {v1, p1}, Landroid/telephony/NetworkRegistrationInfo;->setRoamingType(I)V

    .line 1356
    invoke-virtual {p0, v1}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1357
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1185
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 1186
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

    .line 1187
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

    .line 1188
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

    .line 1189
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

    .line 1190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", duplexMode()="

    .line 1191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDuplexMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCellBandwidths="

    .line 1192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOperatorAlphaLong="

    .line 1193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOperatorAlphaShort="

    .line 1194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isManualNetworkSelection="

    .line 1195
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1196
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

    .line 1197
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

    .line 1198
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

    .line 1199
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

    .line 1200
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

    .line 1201
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

    const-string v2, ", mNetworkId="

    .line 1202
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSystemId="

    .line 1203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCdmaRoamingIndicator="

    .line 1204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCdmaDefaultRoamingIndicator="

    .line 1205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsEmergencyOnly="

    .line 1206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isUsingCarrierAggregation="

    .line 1207
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mArfcnRsrpBoost="

    .line 1208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNetworkRegistrationInfos="

    .line 1209
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNrFrequencyRange="

    .line 1210
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_1ac

    .line 1211
    iget v2, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    goto :goto_1ad

    :cond_1ac
    const/4 v2, 0x0

    .line 1210
    :goto_1ad
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOperatorAlphaLongRaw="

    .line 1212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOperatorAlphaShortRaw="

    .line 1213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsDataRoamingFromRegistration="

    .line 1214
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 1215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsIwlanPreferred="

    .line 1216
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    .line 1217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    .line 1186
    return-object v1

    .line 1218
    :catchall_1ee
    move-exception v1

    monitor-exit v0
    :try_end_1f0
    .catchall {:try_start_3 .. :try_end_1f0} :catchall_1ee

    throw v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 503
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 508
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    iget v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    iget v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    iget v0, p0, Landroid/telephony/ServiceState;->mArfcnRsrpBoost:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 519
    :try_start_4e
    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 520
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_78

    .line 521
    iget v0, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    iget-object v0, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 523
    iget v0, p0, Landroid/telephony/ServiceState;->mNrFrequencyRange:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 526
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 527
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsIwlanPreferred:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 528
    return-void

    .line 520
    :catchall_78
    move-exception v1

    :try_start_79
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v1
.end method
