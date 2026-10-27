.class public Lcom/android/server/location/gnss/GnssManagerService;
.super Ljava/lang/Object;
.source "GnssManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;,
        Lcom/android/server/location/gnss/GnssManagerService$GnssCapabilitiesHalModule;
    }
.end annotation


# static fields
.field private static final ATTRIBUTION_ID:Ljava/lang/String; = "GnssService"

.field public static final D:Z

.field public static final TAG:Ljava/lang/String; = "GnssManager"


# instance fields
.field private final mCapabilitiesHalModule:Lcom/android/server/location/gnss/GnssManagerService$GnssCapabilitiesHalModule;

.field final mContext:Landroid/content/Context;

.field private final mGeofenceHalModule:Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;

.field private final mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

.field private final mGnssGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

.field private final mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

.field private final mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

.field private final mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

.field private final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field private final mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

.field private final mGnssNmeaProvider:Lcom/android/server/location/gnss/GnssNmeaProvider;

.field private final mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 63
    const-string v0, "GnssManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssManagerService;->D:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/location/injector/Injector;
    .param p3, "gnssNative"    # Lcom/android/server/location/gnss/hal/GnssNative;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-string v0, "GnssService"

    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    .line 85
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 87
    new-instance v1, Lcom/android/server/location/gnss/GnssMetrics;

    .line 88
    const-string v2, "batterystats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 87
    invoke-static {v2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    invoke-direct {v1, v0, v2, p3}, Lcom/android/server/location/gnss/GnssMetrics;-><init>(Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/location/gnss/hal/GnssNative;)V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    .line 90
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-direct {v2, v0, p2, p3, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;Lcom/android/server/location/gnss/GnssMetrics;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 92
    new-instance v0, Lcom/android/server/location/gnss/GnssStatusProvider;

    invoke-direct {v0, p2, p3}, Lcom/android/server/location/gnss/GnssStatusProvider;-><init>(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusProvider;

    .line 93
    new-instance v0, Lcom/android/server/location/gnss/GnssNmeaProvider;

    invoke-direct {v0, p2, p3}, Lcom/android/server/location/gnss/GnssNmeaProvider;-><init>(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNmeaProvider:Lcom/android/server/location/gnss/GnssNmeaProvider;

    .line 94
    new-instance v0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-direct {v0, p2, p3}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;-><init>(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    .line 95
    new-instance v0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    invoke-direct {v0, p2, p3}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;-><init>(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    .line 96
    new-instance v0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    invoke-direct {v0, p3}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    .line 97
    new-instance v0, Lcom/android/server/location/gnss/GnssGeofenceProxy;

    invoke-direct {v0, p3}, Lcom/android/server/location/gnss/GnssGeofenceProxy;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    .line 99
    new-instance v0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;

    invoke-direct {v0, p0, p3}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;-><init>(Lcom/android/server/location/gnss/GnssManagerService;Lcom/android/server/location/gnss/hal/GnssNative;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGeofenceHalModule:Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;

    .line 100
    new-instance v0, Lcom/android/server/location/gnss/GnssManagerService$GnssCapabilitiesHalModule;

    invoke-direct {v0, p0, p3}, Lcom/android/server/location/gnss/GnssManagerService$GnssCapabilitiesHalModule;-><init>(Lcom/android/server/location/gnss/GnssManagerService;Lcom/android/server/location/gnss/hal/GnssNative;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mCapabilitiesHalModule:Lcom/android/server/location/gnss/GnssManagerService$GnssCapabilitiesHalModule;

    .line 103
    invoke-virtual {p3}, Lcom/android/server/location/gnss/hal/GnssNative;->register()V

    .line 104
    return-void
.end method


# virtual methods
.method public addGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "listener"    # Landroid/location/IGnssAntennaInfoListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "listenerId"    # Ljava/lang/String;

    .line 282
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3, p4}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    .line 284
    .local v0, "identity":Landroid/location/util/identity/CallerIdentity;
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->addListener(Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssAntennaInfoListener;)V

    .line 285
    return-void
.end method

.method public addGnssMeasurementsListener(Landroid/location/GnssMeasurementRequest;Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "request"    # Landroid/location/GnssMeasurementRequest;
    .param p2, "listener"    # Landroid/location/IGnssMeasurementsListener;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "listenerId"    # Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1}, Landroid/location/GnssMeasurementRequest;->isCorrelationVectorOutputsEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 231
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_15
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p4, p5}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    .line 235
    .local v0, "identity":Landroid/location/util/identity/CallerIdentity;
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-virtual {v1, p1, v0, p2}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->addListener(Landroid/location/GnssMeasurementRequest;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssMeasurementsListener;)V

    .line 236
    return-void
.end method

.method public addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "listener"    # Landroid/location/IGnssNavigationMessageListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "listenerId"    # Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3, p4}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    .line 266
    .local v0, "identity":Landroid/location/util/identity/CallerIdentity;
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->addListener(Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssNavigationMessageListener;)V

    .line 267
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 309
    array-length v0, p3

    if-lez v0, :cond_18

    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-string v1, "--gnssmetrics"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 310
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssMetrics;->dumpGnssMetricsAsProtoString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 311
    return-void

    .line 314
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capabilities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/hal/GnssNative;->getCapabilities()Landroid/location/GnssCapabilities;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssStatusProvider;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 317
    const-string v0, "Status Provider:"

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 319
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssStatusProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 323
    :cond_4c
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 324
    const-string v0, "Measurements Provider:"

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 326
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 330
    :cond_64
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 331
    const-string v0, "Navigation Message Provider:"

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 333
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 334
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 337
    :cond_7c
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 338
    const-string v0, "Antenna Info Provider:"

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Antenna Infos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->getAntennaInfos()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 345
    :cond_b0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->getPowerStats()Lcom/android/server/location/gnss/GnssPowerStats;

    move-result-object v0

    .line 346
    .local v0, "powerStats":Lcom/android/server/location/gnss/GnssPowerStats;
    if-eqz v0, :cond_cc

    .line 347
    const-string v1, "Last Power Stats:"

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 349
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/hal/GnssNative;->getCapabilities()Landroid/location/GnssCapabilities;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/location/gnss/GnssPowerStats;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;Landroid/location/GnssCapabilities;)V

    .line 350
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 352
    :cond_cc
    return-void
.end method

.method public getGnssAntennaInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/GnssAntennaInfo;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->getAntennaInfos()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGnssBatchSize()I
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getBatchSize()I

    move-result v0

    return v0
.end method

.method public getGnssCapabilities()Landroid/location/GnssCapabilities;
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->getCapabilities()Landroid/location/GnssCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getGnssGeofenceProxy()Landroid/location/IGpsGeofenceHardware;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    return-object v0
.end method

.method public getGnssHardwareModelName()Ljava/lang/String;
    .registers 4

    .line 157
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGnssHardwareModelName called with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 159
    invoke-virtual {v2}, Lcom/android/server/location/gnss/hal/GnssNative;->getHardwareModelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    const/4 v2, 0x2

    invoke-interface {v0, v2, v1}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->getHardwareModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGnssLocationProvider()Lcom/android/server/location/gnss/GnssLocationProvider;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    return-object v0
.end method

.method public getGnssYearOfHardware()I
    .registers 4

    .line 143
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGnssYearOfHardware called with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 145
    invoke-virtual {v2}, Lcom/android/server/location/gnss/hal/GnssNative;->getHardwareYear()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    const/4 v2, 0x2

    invoke-interface {v0, v2, v1}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->getHardwareYear()I

    move-result v0

    return v0
.end method

.method public injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)V
    .registers 5
    .param p1, "corrections"    # Landroid/location/GnssMeasurementCorrections;

    .line 242
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->injectMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 246
    const-string v0, "GnssManager"

    const-string v1, "failed to inject GNSS measurement corrections"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_1e
    return-void
.end method

.method public isAutomotiveGnssSuspended()Z
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isAutomotiveGnssSuspended()Z

    move-result v0

    return v0
.end method

.method public onSystemReady()V
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->onSystemReady()V

    .line 109
    return-void
.end method

.method public registerGnssNmeaCallback(Landroid/location/IGnssNmeaListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "listener"    # Landroid/location/IGnssNmeaListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "listenerId"    # Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3, p4}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    .line 213
    .local v0, "identity":Landroid/location/util/identity/CallerIdentity;
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNmeaProvider:Lcom/android/server/location/gnss/GnssNmeaProvider;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/location/gnss/GnssNmeaProvider;->addListener(Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssNmeaListener;)V

    .line 214
    return-void
.end method

.method public registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "listener"    # Landroid/location/IGnssStatusListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "listenerId"    # Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3, p4}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    .line 194
    .local v0, "identity":Landroid/location/util/identity/CallerIdentity;
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusProvider;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/location/gnss/GnssStatusProvider;->addListener(Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssStatusListener;)V

    .line 195
    return-void
.end method

.method public removeGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/IGnssAntennaInfoListener;

    .line 291
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->removeListener(Landroid/location/IGnssAntennaInfoListener;)V

    .line 292
    return-void
.end method

.method public removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/IGnssMeasurementsListener;

    .line 254
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->removeListener(Landroid/os/IInterface;)V

    .line 255
    return-void
.end method

.method public removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/IGnssNavigationMessageListener;

    .line 273
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->removeListener(Landroid/os/IInterface;)V

    .line 274
    return-void
.end method

.method public sendNiResponse(II)V
    .registers 5
    .param p1, "notifId"    # I
    .param p2, "userResponse"    # I

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getNetInitiatedListener()Landroid/location/INetInitiatedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 302
    nop

    .line 303
    return-void

    .line 300
    :catch_b
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAutomotiveGnssSuspended(Z)V
    .registers 3
    .param p1, "suspended"    # Z

    .line 121
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->setAutomotiveGnssSuspended(Z)V

    .line 122
    return-void
.end method

.method public unregisterGnssNmeaCallback(Landroid/location/IGnssNmeaListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/IGnssNmeaListener;

    .line 220
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNmeaProvider:Lcom/android/server/location/gnss/GnssNmeaProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssNmeaProvider;->removeListener(Landroid/os/IInterface;)V

    .line 221
    return-void
.end method

.method public unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/IGnssStatusListener;

    .line 201
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssStatusProvider;->removeListener(Landroid/os/IInterface;)V

    .line 202
    return-void
.end method
