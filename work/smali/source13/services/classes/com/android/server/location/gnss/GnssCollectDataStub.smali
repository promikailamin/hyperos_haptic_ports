.class public interface abstract Lcom/android/server/location/gnss/GnssCollectDataStub;
.super Ljava/lang/Object;
.source "GnssCollectDataStub.java"


# static fields
.field public static final APP_ID:Ljava/lang/String; = "2882303761518758754"

.field public static final B1_CARRIER_FREQ_RANGE_HIGH_HZ:D = 1.564E9

.field public static final B1_CARRIER_FREQ_RANGE_LOW_HZ:D = 1.559E9

.field public static final B1_TOP4_MEAN_CN0:Ljava/lang/String; = "B1Top4MeanCn0"

.field public static final DEBUG:Z

.field public static final FLAG_NON_ANONYMOUS:I = 0x2

.field public static final FLAG_NOT_LIMITED_BY_USER_EXPERIENCE_PLAN:I = 0x1

.field public static final GNSS_CNO:I = 0xa

.field public static final GNSS_STATE_FIX:I = 0x2

.field public static final GNSS_STATE_INIT:I = 0x0

.field public static final GNSS_STATE_LOSE:I = 0x4

.field public static final GNSS_STATE_SAVE:I = 0x5

.field public static final GNSS_STATE_START:I = 0x1

.field public static final GNSS_STATE_STOP:I = 0x3

.field public static final HZ_PER_MHZ:D = 1000000.0

.field public static final INFO_B1CN0_TOP4:I = 0x9

.field public static final INFO_L1CN0_TOP4:I = 0x7

.field public static final INFO_L5CN0_TOP4:I = 0x8

.field public static final INFO_NMEA_PQWP6:I = 0x6

.field public static final INVALID_TIME:Ljava/lang/String; = "invalid time"

.field public static final L5_CARRIER_FREQ_RANGE_HIGH_HZ:D = 1.189E9

.field public static final L5_CARRIER_FREQ_RANGE_LOW_HZ:D = 1.164E9

.field public static final QX_SUPL_ADDRESS:Ljava/lang/String; = "supl.qxwz.com"

.field public static final STATE_UNKNOWN:I = 0x64

.field public static final XTY_SUPL_ADDRESS:Ljava/lang/String; = "supl.bd-caict.com"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    const-string/jumbo v0, "persist.sys.gnss_dc.test"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssCollectDataStub;->DEBUG:Z

    return-void
.end method

.method public static getInstance()Lcom/android/server/location/gnss/GnssCollectDataStub;
    .registers 1

    .line 39
    const-class v0, Lcom/android/server/location/gnss/GnssCollectDataStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/gnss/GnssCollectDataStub;

    return-object v0
.end method


# virtual methods
.method public getCurrentTime()Ljava/lang/String;
    .registers 2

    .line 53
    const-string/jumbo v0, "invalid time"

    return-object v0
.end method

.method public getSuplState()Z
    .registers 2

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public isCnSimInserted()Z
    .registers 2

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public abstract savePoint(ILjava/lang/String;)V
.end method

.method public abstract savePoint(ILjava/lang/String;Landroid/content/Context;)V
.end method

.method public abstract savePoint(I[FI[F)V
.end method

.method public abstract setCnSimInserted(Ljava/lang/String;)V
.end method
