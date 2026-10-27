.class public final Landroid/net/wifi/WlanLinkLayerQoE;
.super Ljava/lang/Object;
.source "WlanLinkLayerQoE.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WlanLinkLayerQoE;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist singleClass:Landroid/net/wifi/WlanLinkLayerQoE;


# instance fields
.field private blacklist bitRateInKbps:I

.field private blacklist bw:I

.field private blacklist ccaBusyTimeMs:I

.field private blacklist frequency:I

.field private blacklist lostmpdu_be:J

.field private blacklist lostmpdu_bk:J

.field private blacklist lostmpdu_vi:J

.field private blacklist lostmpdu_vo:J

.field private blacklist mpduLostRatio:D

.field private blacklist radioOnTimeMs:I

.field private blacklist rateMcsIdx:I

.field private blacklist retriesRatio:D

.field private blacklist retries_be:J

.field private blacklist retries_bk:J

.field private blacklist retries_vi:J

.field private blacklist retries_vo:J

.field private blacklist rssi_mgmt:I

.field private blacklist rxmpdu_be:J

.field private blacklist rxmpdu_bk:J

.field private blacklist rxmpdu_vi:J

.field private blacklist rxmpdu_vo:J

.field private blacklist ssid:Ljava/lang/String;

.field private blacklist txmpdu_be:J

.field private blacklist txmpdu_bk:J

.field private blacklist txmpdu_vi:J

.field private blacklist txmpdu_vo:J

.field private blacklist version:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreatSingleClass(Landroid/os/Parcel;)Landroid/net/wifi/WlanLinkLayerQoE;
    .registers 1

    invoke-static {p0}, Landroid/net/wifi/WlanLinkLayerQoE;->creatSingleClass(Landroid/os/Parcel;)Landroid/net/wifi/WlanLinkLayerQoE;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 70
    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->singleClass:Landroid/net/wifi/WlanLinkLayerQoE;

    .line 443
    new-instance v0, Landroid/net/wifi/WlanLinkLayerQoE$1;

    invoke-direct {v0}, Landroid/net/wifi/WlanLinkLayerQoE$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->version:Ljava/lang/String;

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->ssid:Ljava/lang/String;

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->mpduLostRatio:D

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->retriesRatio:D

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->rssi_mgmt:I

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->frequency:I

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->radioOnTimeMs:I

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->ccaBusyTimeMs:I

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->bw:I

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->rateMcsIdx:I

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->bitRateInKbps:I

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->rxmpdu_be:J

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->txmpdu_be:J

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->lostmpdu_be:J

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->retries_be:J

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->rxmpdu_bk:J

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->txmpdu_bk:J

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->lostmpdu_bk:J

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->retries_bk:J

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->rxmpdu_vi:J

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->txmpdu_vi:J

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->lostmpdu_vi:J

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->retries_vi:J

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->rxmpdu_vo:J

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->txmpdu_vo:J

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->lostmpdu_vo:J

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->retries_vo:J

    .line 388
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;IIDDIIIIIJJJJJJJJJJJJJJJJ)V
    .registers 62
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "rssi_mgmt"    # I
    .param p4, "frequency"    # I
    .param p5, "mpduLostRatio"    # D
    .param p7, "retriesRatio"    # D
    .param p9, "radioOnTimeMs"    # I
    .param p10, "ccaBusyTimeMs"    # I
    .param p11, "bw"    # I
    .param p12, "rateMcsIdx"    # I
    .param p13, "bitRateInKbps"    # I
    .param p14, "rxmpdu_be"    # J
    .param p16, "txmpdu_be"    # J
    .param p18, "lostmpdu_be"    # J
    .param p20, "retries_be"    # J
    .param p22, "rxmpdu_bk"    # J
    .param p24, "txmpdu_bk"    # J
    .param p26, "lostmpdu_bk"    # J
    .param p28, "retries_bk"    # J
    .param p30, "rxmpdu_vi"    # J
    .param p32, "txmpdu_vi"    # J
    .param p34, "lostmpdu_vi"    # J
    .param p36, "retries_vi"    # J
    .param p38, "rxmpdu_vo"    # J
    .param p40, "txmpdu_vo"    # J
    .param p42, "lostmpdu_vo"    # J
    .param p44, "retries_vo"    # J

    .line 78
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/net/wifi/WlanLinkLayerQoE;->version:Ljava/lang/String;

    .line 80
    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/net/wifi/WlanLinkLayerQoE;->ssid:Ljava/lang/String;

    .line 81
    move/from16 v3, p3

    iput v3, v0, Landroid/net/wifi/WlanLinkLayerQoE;->rssi_mgmt:I

    .line 82
    move/from16 v4, p4

    iput v4, v0, Landroid/net/wifi/WlanLinkLayerQoE;->frequency:I

    .line 83
    move-wide/from16 v5, p5

    iput-wide v5, v0, Landroid/net/wifi/WlanLinkLayerQoE;->mpduLostRatio:D

    .line 84
    move-wide/from16 v7, p7

    iput-wide v7, v0, Landroid/net/wifi/WlanLinkLayerQoE;->retriesRatio:D

    .line 85
    move/from16 v9, p9

    iput v9, v0, Landroid/net/wifi/WlanLinkLayerQoE;->radioOnTimeMs:I

    .line 86
    move/from16 v10, p10

    iput v10, v0, Landroid/net/wifi/WlanLinkLayerQoE;->ccaBusyTimeMs:I

    .line 87
    move/from16 v11, p11

    iput v11, v0, Landroid/net/wifi/WlanLinkLayerQoE;->bw:I

    .line 88
    move/from16 v12, p12

    iput v12, v0, Landroid/net/wifi/WlanLinkLayerQoE;->rateMcsIdx:I

    .line 89
    move/from16 v13, p13

    iput v13, v0, Landroid/net/wifi/WlanLinkLayerQoE;->bitRateInKbps:I

    .line 90
    move-wide/from16 v14, p14

    iput-wide v14, v0, Landroid/net/wifi/WlanLinkLayerQoE;->rxmpdu_be:J

    .line 91
    move-wide/from16 v1, p16

    iput-wide v1, v0, Landroid/net/wifi/WlanLinkLayerQoE;->txmpdu_be:J

    .line 92
    move-wide/from16 v1, p18

    iput-wide v1, v0, Landroid/net/wifi/WlanLinkLayerQoE;->lostmpdu_be:J

    .line 93
    move-wide/from16 v1, p20

    iput-wide v1, v0, Landroid/net/wifi/WlanLinkLayerQoE;->retries_be:J

    .line 94
    move-wide/from16 v1, p22

    iput-wide v1, v0, Landroid/net/wifi/WlanLinkLayerQoE;->rxmpdu_bk:J

    .line 95
    move-wide/from16 v1, p24

    iput-wide v1, v0, Landroid/net/wifi/WlanLinkLayerQoE;->txmpdu_bk:J

    .line 96
    move-wide/from16 v1, p26

    iput-wide v1, v0, Landroid/net/wifi/WlanLinkLayerQoE;->lostmpdu_bk:J

    .line 97
    move-wide/from16 v1, p28

    iput-wide v1, v0, Landroid/net/wifi/WlanLinkLayerQoE;->retries_bk:J

    .line 98
    move-wide/from16 v1, p30

    iput-wide v1, v0, Landroid/net/wifi/WlanLinkLayerQoE;->rxmpdu_vi:J

    .line 99
    move-wide/from16 v1, p32

    iput-wide v1, v0, Landroid/net/wifi/WlanLinkLayerQoE;->txmpdu_vi:J

    .line 100
    move-wide/from16 v1, p34

    iput-wide v1, v0, Landroid/net/wifi/WlanLinkLayerQoE;->lostmpdu_vi:J

    .line 101
    move-wide/from16 v1, p36

    iput-wide v1, v0, Landroid/net/wifi/WlanLinkLayerQoE;->retries_vi:J

    .line 102
    move-wide/from16 v1, p38

    iput-wide v1, v0, Landroid/net/wifi/WlanLinkLayerQoE;->rxmpdu_vo:J

    .line 103
    move-wide/from16 v1, p40

    iput-wide v1, v0, Landroid/net/wifi/WlanLinkLayerQoE;->txmpdu_vo:J

    .line 104
    move-wide/from16 v1, p42

    iput-wide v1, v0, Landroid/net/wifi/WlanLinkLayerQoE;->lostmpdu_vo:J

    .line 105
    move-wide/from16 v1, p44

    iput-wide v1, v0, Landroid/net/wifi/WlanLinkLayerQoE;->retries_vo:J

    .line 106
    return-void
.end method

.method private static blacklist copyFrom(Landroid/os/Parcel;)Landroid/net/wifi/WlanLinkLayerQoE;
    .registers 4
    .param p0, "in"    # Landroid/os/Parcel;

    .line 392
    sget-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->singleClass:Landroid/net/wifi/WlanLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WlanLinkLayerQoE;->setVersion(Ljava/lang/String;)V

    .line 393
    sget-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->singleClass:Landroid/net/wifi/WlanLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WlanLinkLayerQoE;->setSsid(Ljava/lang/String;)V

    .line 395
    sget-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->singleClass:Landroid/net/wifi/WlanLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WlanLinkLayerQoE;->setMpduLostRatio(D)V

    .line 396
    sget-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->singleClass:Landroid/net/wifi/WlanLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WlanLinkLayerQoE;->setRetriesRatio(D)V

    .line 398
    sget-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->singleClass:Landroid/net/wifi/WlanLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WlanLinkLayerQoE;->setRssi_mgmt(I)V

    .line 399
    sget-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->singleClass:Landroid/net/wifi/WlanLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WlanLinkLayerQoE;->setFrequency(I)V

    .line 400
    sget-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->singleClass:Landroid/net/wifi/WlanLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WlanLinkLayerQoE;->setRadioOnTimeMs(I)V

    .line 401
    sget-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->singleClass:Landroid/net/wifi/WlanLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WlanLinkLayerQoE;->setCcaBusyTimeMs(I)V

    .line 403
    sget-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->singleClass:Landroid/net/wifi/WlanLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WlanLinkLayerQoE;->setBw(I)V

    .line 404
    sget-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->singleClass:Landroid/net/wifi/WlanLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WlanLinkLayerQoE;->setRateMcsIdx(I)V

    .line 405
    sget-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->singleClass:Landroid/net/wifi/WlanLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WlanLinkLayerQoE;->setBitRateInKbps(I)V

    .line 407
    sget-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->singleClass:Landroid/net/wifi/WlanLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WlanLinkLayerQoE;->setRxmpdu_be(J)V

    .line 408
    sget-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->singleClass:Landroid/net/wifi/WlanLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WlanLinkLayerQoE;->setTxmpdu_be(J)V

    .line 409
    sget-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->singleClass:Landroid/net/wifi/WlanLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WlanLinkLayerQoE;->setLostmpdu_be(J)V

    .line 410
    sget-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->singleClass:Landroid/net/wifi/WlanLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WlanLinkLayerQoE;->setRetries_be(J)V

    .line 412
    sget-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->singleClass:Landroid/net/wifi/WlanLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WlanLinkLayerQoE;->setRxmpdu_bk(J)V

    .line 413
    sget-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->singleClass:Landroid/net/wifi/WlanLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WlanLinkLayerQoE;->setTxmpdu_bk(J)V

    .line 414
    sget-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->singleClass:Landroid/net/wifi/WlanLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WlanLinkLayerQoE;->setLostmpdu_bk(J)V

    .line 415
    sget-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->singleClass:Landroid/net/wifi/WlanLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WlanLinkLayerQoE;->setRetries_bk(J)V

    .line 417
    sget-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->singleClass:Landroid/net/wifi/WlanLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WlanLinkLayerQoE;->setRxmpdu_vi(J)V

    .line 418
    sget-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->singleClass:Landroid/net/wifi/WlanLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WlanLinkLayerQoE;->setTxmpdu_vi(J)V

    .line 419
    sget-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->singleClass:Landroid/net/wifi/WlanLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WlanLinkLayerQoE;->setLostmpdu_vi(J)V

    .line 420
    sget-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->singleClass:Landroid/net/wifi/WlanLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WlanLinkLayerQoE;->setRetries_vi(J)V

    .line 422
    sget-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->singleClass:Landroid/net/wifi/WlanLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WlanLinkLayerQoE;->setRxmpdu_vo(J)V

    .line 423
    sget-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->singleClass:Landroid/net/wifi/WlanLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WlanLinkLayerQoE;->setTxmpdu_vo(J)V

    .line 424
    sget-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->singleClass:Landroid/net/wifi/WlanLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WlanLinkLayerQoE;->setLostmpdu_vo(J)V

    .line 425
    sget-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->singleClass:Landroid/net/wifi/WlanLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WlanLinkLayerQoE;->setRetries_vo(J)V

    .line 427
    sget-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->singleClass:Landroid/net/wifi/WlanLinkLayerQoE;

    return-object v0
.end method

.method private static blacklist creatSingleClass(Landroid/os/Parcel;)Landroid/net/wifi/WlanLinkLayerQoE;
    .registers 2
    .param p0, "source"    # Landroid/os/Parcel;

    .line 431
    sget-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->singleClass:Landroid/net/wifi/WlanLinkLayerQoE;

    if-nez v0, :cond_c

    .line 432
    new-instance v0, Landroid/net/wifi/WlanLinkLayerQoE;

    invoke-direct {v0, p0}, Landroid/net/wifi/WlanLinkLayerQoE;-><init>(Landroid/os/Parcel;)V

    sput-object v0, Landroid/net/wifi/WlanLinkLayerQoE;->singleClass:Landroid/net/wifi/WlanLinkLayerQoE;

    .line 433
    return-object v0

    .line 435
    :cond_c
    invoke-static {p0}, Landroid/net/wifi/WlanLinkLayerQoE;->copyFrom(Landroid/os/Parcel;)Landroid/net/wifi/WlanLinkLayerQoE;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 440
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBitRateInKbps()I
    .registers 2

    .line 189
    iget v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->bitRateInKbps:I

    return v0
.end method

.method public blacklist getBw()I
    .registers 2

    .line 173
    iget v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->bw:I

    return v0
.end method

.method public blacklist getCcaBusyTimeMs()I
    .registers 2

    .line 165
    iget v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->ccaBusyTimeMs:I

    return v0
.end method

.method public blacklist getFrequency()I
    .registers 2

    .line 133
    iget v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->frequency:I

    return v0
.end method

.method public blacklist getLostmpdu_be()J
    .registers 3

    .line 213
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->lostmpdu_be:J

    return-wide v0
.end method

.method public blacklist getLostmpdu_bk()J
    .registers 3

    .line 245
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->lostmpdu_bk:J

    return-wide v0
.end method

.method public blacklist getLostmpdu_vi()J
    .registers 3

    .line 277
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->lostmpdu_vi:J

    return-wide v0
.end method

.method public blacklist getLostmpdu_vo()J
    .registers 3

    .line 309
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->lostmpdu_vo:J

    return-wide v0
.end method

.method public blacklist getMpduLostRatio()D
    .registers 3

    .line 141
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->mpduLostRatio:D

    return-wide v0
.end method

.method public blacklist getRadioOnTimeMs()I
    .registers 2

    .line 157
    iget v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->radioOnTimeMs:I

    return v0
.end method

.method public blacklist getRateMcsIdx()I
    .registers 2

    .line 181
    iget v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->rateMcsIdx:I

    return v0
.end method

.method public blacklist getRetriesRatio()D
    .registers 3

    .line 149
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->retriesRatio:D

    return-wide v0
.end method

.method public blacklist getRetries_be()J
    .registers 3

    .line 221
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->retries_be:J

    return-wide v0
.end method

.method public blacklist getRetries_bk()J
    .registers 3

    .line 253
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->retries_bk:J

    return-wide v0
.end method

.method public blacklist getRetries_vi()J
    .registers 3

    .line 285
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->retries_vi:J

    return-wide v0
.end method

.method public blacklist getRetries_vo()J
    .registers 3

    .line 317
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->retries_vo:J

    return-wide v0
.end method

.method public blacklist getRssi_mgmt()I
    .registers 2

    .line 125
    iget v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->rssi_mgmt:I

    return v0
.end method

.method public blacklist getRxmpdu_be()J
    .registers 3

    .line 197
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->rxmpdu_be:J

    return-wide v0
.end method

.method public blacklist getRxmpdu_bk()J
    .registers 3

    .line 229
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->rxmpdu_bk:J

    return-wide v0
.end method

.method public blacklist getRxmpdu_vi()J
    .registers 3

    .line 261
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->rxmpdu_vi:J

    return-wide v0
.end method

.method public blacklist getRxmpdu_vo()J
    .registers 3

    .line 293
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->rxmpdu_vo:J

    return-wide v0
.end method

.method public blacklist getSsid()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTxmpdu_be()J
    .registers 3

    .line 205
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->txmpdu_be:J

    return-wide v0
.end method

.method public blacklist getTxmpdu_bk()J
    .registers 3

    .line 237
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->txmpdu_bk:J

    return-wide v0
.end method

.method public blacklist getTxmpdu_vi()J
    .registers 3

    .line 269
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->txmpdu_vi:J

    return-wide v0
.end method

.method public blacklist getTxmpdu_vo()J
    .registers 3

    .line 301
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->txmpdu_vo:J

    return-wide v0
.end method

.method public blacklist getVersion()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->version:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setBitRateInKbps(I)V
    .registers 2
    .param p1, "bitRateInKbps"    # I

    .line 193
    iput p1, p0, Landroid/net/wifi/WlanLinkLayerQoE;->bitRateInKbps:I

    .line 194
    return-void
.end method

.method public blacklist setBw(I)V
    .registers 2
    .param p1, "bw"    # I

    .line 177
    iput p1, p0, Landroid/net/wifi/WlanLinkLayerQoE;->bw:I

    .line 178
    return-void
.end method

.method public blacklist setCcaBusyTimeMs(I)V
    .registers 2
    .param p1, "ccaBusyTimeMs"    # I

    .line 169
    iput p1, p0, Landroid/net/wifi/WlanLinkLayerQoE;->ccaBusyTimeMs:I

    .line 170
    return-void
.end method

.method public blacklist setFrequency(I)V
    .registers 2
    .param p1, "frequency"    # I

    .line 137
    iput p1, p0, Landroid/net/wifi/WlanLinkLayerQoE;->frequency:I

    .line 138
    return-void
.end method

.method public blacklist setLostmpdu_be(J)V
    .registers 3
    .param p1, "lostmpdu_be"    # J

    .line 217
    iput-wide p1, p0, Landroid/net/wifi/WlanLinkLayerQoE;->lostmpdu_be:J

    .line 218
    return-void
.end method

.method public blacklist setLostmpdu_bk(J)V
    .registers 3
    .param p1, "lostmpdu_bk"    # J

    .line 249
    iput-wide p1, p0, Landroid/net/wifi/WlanLinkLayerQoE;->lostmpdu_bk:J

    .line 250
    return-void
.end method

.method public blacklist setLostmpdu_vi(J)V
    .registers 3
    .param p1, "lostmpdu_vi"    # J

    .line 281
    iput-wide p1, p0, Landroid/net/wifi/WlanLinkLayerQoE;->lostmpdu_vi:J

    .line 282
    return-void
.end method

.method public blacklist setLostmpdu_vo(J)V
    .registers 3
    .param p1, "lostmpdu_vo"    # J

    .line 313
    iput-wide p1, p0, Landroid/net/wifi/WlanLinkLayerQoE;->lostmpdu_vo:J

    .line 314
    return-void
.end method

.method public blacklist setMpduLostRatio(D)V
    .registers 3
    .param p1, "mpduLostRatio"    # D

    .line 145
    iput-wide p1, p0, Landroid/net/wifi/WlanLinkLayerQoE;->mpduLostRatio:D

    .line 146
    return-void
.end method

.method public blacklist setRadioOnTimeMs(I)V
    .registers 2
    .param p1, "radioOnTimeMs"    # I

    .line 161
    iput p1, p0, Landroid/net/wifi/WlanLinkLayerQoE;->radioOnTimeMs:I

    .line 162
    return-void
.end method

.method public blacklist setRateMcsIdx(I)V
    .registers 2
    .param p1, "rateMcsIdx"    # I

    .line 185
    iput p1, p0, Landroid/net/wifi/WlanLinkLayerQoE;->rateMcsIdx:I

    .line 186
    return-void
.end method

.method public blacklist setRetriesRatio(D)V
    .registers 3
    .param p1, "retriesRatio"    # D

    .line 153
    iput-wide p1, p0, Landroid/net/wifi/WlanLinkLayerQoE;->retriesRatio:D

    .line 154
    return-void
.end method

.method public blacklist setRetries_be(J)V
    .registers 3
    .param p1, "retries_be"    # J

    .line 225
    iput-wide p1, p0, Landroid/net/wifi/WlanLinkLayerQoE;->retries_be:J

    .line 226
    return-void
.end method

.method public blacklist setRetries_bk(J)V
    .registers 3
    .param p1, "retries_bk"    # J

    .line 257
    iput-wide p1, p0, Landroid/net/wifi/WlanLinkLayerQoE;->retries_bk:J

    .line 258
    return-void
.end method

.method public blacklist setRetries_vi(J)V
    .registers 3
    .param p1, "retries_vi"    # J

    .line 289
    iput-wide p1, p0, Landroid/net/wifi/WlanLinkLayerQoE;->retries_vi:J

    .line 290
    return-void
.end method

.method public blacklist setRetries_vo(J)V
    .registers 3
    .param p1, "retries_vo"    # J

    .line 321
    iput-wide p1, p0, Landroid/net/wifi/WlanLinkLayerQoE;->retries_vo:J

    .line 322
    return-void
.end method

.method public blacklist setRssi_mgmt(I)V
    .registers 2
    .param p1, "rssi_mgmt"    # I

    .line 129
    iput p1, p0, Landroid/net/wifi/WlanLinkLayerQoE;->rssi_mgmt:I

    .line 130
    return-void
.end method

.method public blacklist setRxmpdu_be(J)V
    .registers 3
    .param p1, "rxmpdu_be"    # J

    .line 201
    iput-wide p1, p0, Landroid/net/wifi/WlanLinkLayerQoE;->rxmpdu_be:J

    .line 202
    return-void
.end method

.method public blacklist setRxmpdu_bk(J)V
    .registers 3
    .param p1, "rxmpdu_bk"    # J

    .line 233
    iput-wide p1, p0, Landroid/net/wifi/WlanLinkLayerQoE;->rxmpdu_bk:J

    .line 234
    return-void
.end method

.method public blacklist setRxmpdu_vi(J)V
    .registers 3
    .param p1, "rxmpdu_vi"    # J

    .line 265
    iput-wide p1, p0, Landroid/net/wifi/WlanLinkLayerQoE;->rxmpdu_vi:J

    .line 266
    return-void
.end method

.method public blacklist setRxmpdu_vo(J)V
    .registers 3
    .param p1, "rxmpdu_vo"    # J

    .line 297
    iput-wide p1, p0, Landroid/net/wifi/WlanLinkLayerQoE;->rxmpdu_vo:J

    .line 298
    return-void
.end method

.method public blacklist setSsid(Ljava/lang/String;)V
    .registers 2
    .param p1, "ssid"    # Ljava/lang/String;

    .line 121
    iput-object p1, p0, Landroid/net/wifi/WlanLinkLayerQoE;->ssid:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public blacklist setTxmpdu_be(J)V
    .registers 3
    .param p1, "txmpdu_be"    # J

    .line 209
    iput-wide p1, p0, Landroid/net/wifi/WlanLinkLayerQoE;->txmpdu_be:J

    .line 210
    return-void
.end method

.method public blacklist setTxmpdu_bk(J)V
    .registers 3
    .param p1, "txmpdu_bk"    # J

    .line 241
    iput-wide p1, p0, Landroid/net/wifi/WlanLinkLayerQoE;->txmpdu_bk:J

    .line 242
    return-void
.end method

.method public blacklist setTxmpdu_vi(J)V
    .registers 3
    .param p1, "txmpdu_vi"    # J

    .line 273
    iput-wide p1, p0, Landroid/net/wifi/WlanLinkLayerQoE;->txmpdu_vi:J

    .line 274
    return-void
.end method

.method public blacklist setTxmpdu_vo(J)V
    .registers 3
    .param p1, "txmpdu_vo"    # J

    .line 305
    iput-wide p1, p0, Landroid/net/wifi/WlanLinkLayerQoE;->txmpdu_vo:J

    .line 306
    return-void
.end method

.method public blacklist setVersion(Ljava/lang/String;)V
    .registers 2
    .param p1, "version"    # Ljava/lang/String;

    .line 113
    iput-object p1, p0, Landroid/net/wifi/WlanLinkLayerQoE;->version:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 326
    iget-object v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->mpduLostRatio:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 330
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->retriesRatio:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 332
    iget v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->rssi_mgmt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->frequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->radioOnTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->ccaBusyTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->bw:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    iget v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->rateMcsIdx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->bitRateInKbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->rxmpdu_be:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 341
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->txmpdu_be:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 342
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->lostmpdu_be:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 343
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->retries_be:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 344
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->rxmpdu_bk:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 345
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->txmpdu_bk:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 346
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->lostmpdu_bk:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 347
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->retries_bk:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 348
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->rxmpdu_vi:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 349
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->txmpdu_vi:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 350
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->lostmpdu_vi:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 351
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->retries_vi:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 352
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->rxmpdu_vo:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 353
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->txmpdu_vo:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 354
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->lostmpdu_vo:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 355
    iget-wide v0, p0, Landroid/net/wifi/WlanLinkLayerQoE;->retries_vo:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 356
    return-void
.end method
