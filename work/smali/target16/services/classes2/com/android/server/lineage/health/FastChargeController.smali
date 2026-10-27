.class public Lcom/android/server/lineage/health/FastChargeController;
.super Lcom/android/server/lineage/health/LineageHealthFeature;
.source "FastChargeController.java"


# instance fields
.field public final MODE_URI:Landroid/net/Uri;

.field public final mChargingSpeedValues:[I

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mFastCharge:Lvendor/lineage/health/IFastCharge;


# direct methods
.method public static synthetic $r8$lambda$0fHcAW3LZU-hgFIEjHXEdC__4mk(JI)Z
    .registers 5

    .line 74
    int-to-long v0, p2

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/server/lineage/health/LineageHealthFeature;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 38
    const-string p1, "fast_charge_mode"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lineage/health/FastChargeController;->MODE_URI:Landroid/net/Uri;

    .line 44
    iget-object p1, p0, Lcom/android/server/lineage/LineageBaseFeature;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lineage/health/FastChargeController;->mContentResolver:Landroid/content/ContentResolver;

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lvendor/lineage/health/IFastCharge;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/default"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-static {p1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 45
    invoke-static {p1}, Lvendor/lineage/health/IFastCharge$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/health/IFastCharge;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lineage/health/FastChargeController;->mFastCharge:Lvendor/lineage/health/IFastCharge;

    .line 49
    iget-object p2, p0, Lcom/android/server/lineage/LineageBaseFeature;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x107000c

    .line 50
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda25;-><init>()V

    .line 51
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p2

    .line 52
    invoke-interface {p2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/lineage/health/FastChargeController;->mChargingSpeedValues:[I

    if-nez p1, :cond_59

    .line 55
    const-string p0, "LineageHealth"

    const-string p1, "Lineage Health HAL not found"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    return-void
.end method

.method private handleSettingChange()V
    .registers 2

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/android/server/lineage/health/FastChargeController;->mFastCharge:Lvendor/lineage/health/IFastCharge;

    invoke-virtual {p0}, Lcom/android/server/lineage/health/FastChargeController;->getFastChargeMode()I

    move-result p0

    invoke-interface {v0, p0}, Lvendor/lineage/health/IFastCharge;->setFastChargeMode(I)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 126
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 127
    const-string v0, "FastChargeController Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/lineage/health/FastChargeController;->getFastChargeMode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getFastChargeMode()I
    .registers 4

    .line 82
    invoke-virtual {p0}, Lcom/android/server/lineage/health/FastChargeController;->getSupportedFastChargeModes()[I

    move-result-object v0

    .line 83
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    .line 85
    iget-object p0, p0, Lcom/android/server/lineage/health/FastChargeController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "fast_charge_mode"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v1, :cond_1a

    .line 88
    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_1a

    return v1

    :cond_1a
    return p0
.end method

.method public getSupportedFastChargeModes()[I
    .registers 4

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/android/server/lineage/health/FastChargeController;->mFastCharge:Lvendor/lineage/health/IFastCharge;

    invoke-interface {v0}, Lvendor/lineage/health/IFastCharge;->getSupportedFastChargeModes()J

    move-result-wide v0

    .line 73
    iget-object p0, p0, Lcom/android/server/lineage/health/FastChargeController;->mChargingSpeedValues:[I

    invoke-static {p0}, Ljava/util/stream/IntStream;->of([I)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v2, Lcom/android/server/lineage/health/FastChargeController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Lcom/android/server/lineage/health/FastChargeController$$ExternalSyntheticLambda0;-><init>(J)V

    .line 74
    invoke-interface {p0, v2}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 75
    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    const/4 p0, 0x0

    .line 77
    new-array p0, p0, [I

    return-object p0
.end method

.method public isSupported()Z
    .registers 6

    const/4 v0, 0x0

    .line 63
    :try_start_1
    iget-object p0, p0, Lcom/android/server/lineage/health/FastChargeController;->mFastCharge:Lvendor/lineage/health/IFastCharge;

    if-eqz p0, :cond_11

    invoke-interface {p0}, Lvendor/lineage/health/IFastCharge;->getSupportedFastChargeModes()J

    move-result-wide v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_11

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-lez p0, :cond_11

    const/4 p0, 0x1

    return p0

    :catch_11
    :cond_11
    return v0
.end method

.method public onSettingsChanged(Landroid/net/Uri;)V
    .registers 2

    .line 121
    invoke-direct {p0}, Lcom/android/server/lineage/health/FastChargeController;->handleSettingChange()V

    return-void
.end method

.method public onStart()V
    .registers 4

    .line 102
    iget-object v0, p0, Lcom/android/server/lineage/health/FastChargeController;->mFastCharge:Lvendor/lineage/health/IFastCharge;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 107
    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/lineage/health/FastChargeController;->MODE_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/lineage/LineageBaseFeature;->registerSettings([Landroid/net/Uri;)V

    .line 109
    invoke-direct {p0}, Lcom/android/server/lineage/health/FastChargeController;->handleSettingChange()V

    return-void
.end method

.method public setFastChargeMode(I)Z
    .registers 3

    .line 96
    const-string v0, "fast_charge_mode"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/lineage/LineageBaseFeature;->putInt(Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0
.end method
