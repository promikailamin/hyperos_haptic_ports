.class Lcom/android/server/location/gnss/GnssVisibilityControl;
.super Ljava/lang/Object;
.source "GnssVisibilityControl.java"


# static fields
.field public static final DEBUG:Z

.field public static final NO_LOCATION_ENABLED_PROXY_APPS:[Ljava/lang/String;


# instance fields
.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsGpsEnabled:Z

.field public final mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field public mOnPermissionsChangedListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mProxyAppsState:Landroid/util/ArrayMap;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$-C_A0LLAtzxFw2GtgzhvWwBB6Yo(Lcom/android/server/location/gnss/GnssVisibilityControl;Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->lambda$onConfigurationUpdated$4(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5V8vH4biFgXoRqyBM_TUEfXREpQ(Lcom/android/server/location/gnss/GnssVisibilityControl;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->lambda$new$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$A4UYQAFA7LXTt1VW4nIMDckqXBE(Lcom/android/server/location/gnss/GnssVisibilityControl;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->lambda$showLocationIcon$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KqWp3vHGQ6ypxlUxXJaA5Vl0Yw0(Lcom/android/server/location/gnss/GnssVisibilityControl;Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .registers 9

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/location/gnss/GnssVisibilityControl;->lambda$reportNfwNotification$3(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$QSIGEde0V8a2umZ6weceH27oZBU(Lcom/android/server/location/gnss/GnssVisibilityControl;Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->lambda$runEventAndReleaseWakeLock$6(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UFJaGDOfHy8H_6ZhRklIms-8o_A(Lcom/android/server/location/gnss/GnssVisibilityControl;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->lambda$onGpsEnabledChanged$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$dJecQTgcsVi1z20DN2Mq2OZgcLo(Lcom/android/server/location/gnss/GnssVisibilityControl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->handleInitialize()V

    return-void
.end method

.method public static synthetic $r8$lambda$k9aTnhnlZs2XpRypViwGipDiKWo(Lcom/android/server/location/gnss/GnssVisibilityControl;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->lambda$new$0(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleProxyAppPackageUpdate(Lcom/android/server/location/gnss/GnssVisibilityControl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssVisibilityControl;->handleProxyAppPackageUpdate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 55
    const-string v0, "GnssVisibilityControl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->DEBUG:Z

    const/4 v0, 0x0

    .line 60
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->NO_LOCATION_ENABLED_PROXY_APPS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/location/GpsNetInitiatedHandler;)V
    .registers 7

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    .line 97
    new-instance v0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/gnss/GnssVisibilityControl;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mOnPermissionsChangedListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    .line 101
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mContext:Landroid/content/Context;

    .line 102
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    .line 103
    const-string v2, "GnssVisibilityControl"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    .line 105
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 106
    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 111
    new-instance p1, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/gnss/GnssVisibilityControl;)V

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->runOnHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static createEmergencyLocationUserNotification(Landroid/content/Context;)Landroid/app/Notification;
    .registers 7

    const v0, 0x10404b0

    .line 629
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x1040499

    .line 630
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 632
    new-instance v3, Landroid/app/Notification$Builder;

    const-string v4, "NETWORK_STATUS"

    invoke-direct {v3, p0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x10809f1

    .line 633
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 634
    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 635
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v5, 0x1

    .line 636
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const v5, 0x106001c

    .line 637
    invoke-virtual {p0, v5}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v3, p0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 639
    invoke-virtual {p0, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 640
    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 641
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 642
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 643
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method private native native_enable_nfw_location_access([Ljava/lang/String;)Z
.end method


# virtual methods
.method public final clearLocationIcon(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;ILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 563
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/location/gnss/GnssVisibilityControl;->updateLocationIcon(ZILjava/lang/String;)Z

    if-eqz p1, :cond_9

    .line 564
    invoke-static {p1, v0}, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->-$$Nest$fputmIsLocationIconOn(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;Z)V

    .line 565
    :cond_9
    sget-boolean p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->DEBUG:Z

    if-eqz p0, :cond_2b

    .line 566
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Location icon off. Uid: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", proxyAppPkgName: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GnssVisibilityControl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-void
.end method

.method public final disableNfwLocationAccess()V
    .registers 2

    .line 280
    sget-object v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->NO_LOCATION_ENABLED_PROXY_APPS:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->setNfwLocationAccessProxyAppsInGnssHal([Ljava/lang/String;)V

    return-void
.end method

.method public final getLocationPermissionEnabledProxyApps()[Ljava/lang/String;
    .registers 5

    .line 422
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;

    .line 423
    invoke-static {v3}, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->-$$Nest$fgetmHasLocationPermission(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;)Z

    move-result v3

    if-eqz v3, :cond_c

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 429
    :cond_21
    new-array v0, v2, [Ljava/lang/String;

    .line 431
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2d
    :goto_2d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 432
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 433
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;

    invoke-static {v2}, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->-$$Nest$fgetmHasLocationPermission(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;)Z

    move-result v2

    if-eqz v2, :cond_2d

    add-int/lit8 v2, v1, 0x1

    .line 434
    aput-object v3, v0, v1

    move v1, v2

    goto :goto_2d

    :cond_51
    return-object v0
.end method

.method public final getProxyAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .registers 3

    .line 379
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_7} :catch_8

    return-object p0

    .line 381
    :catch_8
    sget-boolean p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->DEBUG:Z

    if-eqz p0, :cond_27

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Proxy app "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not found."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GnssVisibilityControl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public final handleEmergencyNfwNotification(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)V
    .registers 8

    .line 593
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$misRequestAccepted(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "GnssVisibilityControl"

    if-nez v0, :cond_1f

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emergency non-framework location request incorrectly rejected. Notification: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    .line 599
    :goto_20
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    const-wide/32 v4, 0x1f400

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency(J)Z

    move-result v3

    if-nez v3, :cond_40

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emergency state mismatch. Device currently not in user initiated emergency session. Notification: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :cond_40
    move v1, v0

    .line 605
    :goto_41
    invoke-virtual {p0, p1, v1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->logEvent(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;Z)V

    .line 607
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$misLocationProvided(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 608
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->postEmergencyLocationUserNotification(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)V

    :cond_4d
    return-void
.end method

.method public final handleGpsEnabledChanged(Z)V
    .registers 4

    .line 263
    sget-boolean v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->DEBUG:Z

    if-eqz v0, :cond_24

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleGpsEnabledChanged, mIsGpsEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mIsGpsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isGpsEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssVisibilityControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_24
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mIsGpsEnabled:Z

    if-nez p1, :cond_2c

    .line 272
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->disableNfwLocationAccess()V

    return-void

    .line 276
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->getLocationPermissionEnabledProxyApps()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->setNfwLocationAccessProxyAppsInGnssHal([Ljava/lang/String;)V

    return-void
.end method

.method public final handleInitialize()V
    .registers 1

    .line 153
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->listenForProxyAppsPackageUpdates()V

    return-void
.end method

.method public final handleLocationIconTimeout(Ljava/lang/String;)V
    .registers 4

    .line 554
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->getProxyAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 556
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->clearLocationIcon(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;ILjava/lang/String;)V

    :cond_13
    return-void
.end method

.method public final handleNfwNotification(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)V
    .registers 9

    .line 445
    sget-boolean v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->DEBUG:Z

    const-string v1, "GnssVisibilityControl"

    if-eqz v0, :cond_1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-framework location access notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_1a
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$misEmergencyRequestNotification(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 448
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->handleEmergencyNfwNotification(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)V

    return-void

    .line 452
    :cond_24
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$fgetmProxyAppPackageName(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;

    move-result-object v2

    .line 453
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;

    .line 454
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$misRequestAccepted(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z

    move-result v4

    .line 455
    invoke-virtual {p0, v3, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->isPermissionMismatched(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z

    move-result v5

    .line 457
    invoke-virtual {p0, p1, v5}, Lcom/android/server/location/gnss/GnssVisibilityControl;->logEvent(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;Z)V

    .line 459
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$misRequestAttributedToProxyApp(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z

    move-result v6

    if-nez v6, :cond_7d

    if-nez v4, :cond_68

    if-eqz v0, :cond_11c

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-framework location request rejected. ProxyAppPackageName field is not set in the notification: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Number of configured proxy apps: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    .line 471
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 469
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 476
    :cond_68
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ProxyAppPackageName field is not set. AppOps service not notified for notification: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7d
    if-nez v3, :cond_a6

    .line 482
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not find proxy app "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in the value specified for config parameter: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "NFW_PROXY_APPS"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". AppOps service not notified for notification: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 489
    :cond_a6
    invoke-virtual {p0, v2}, Lcom/android/server/location/gnss/GnssVisibilityControl;->getProxyAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_c9

    .line 491
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Proxy app "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not found. AppOps service not notified for notification: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 496
    :cond_c9
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$misLocationProvided(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z

    move-result v4

    if-eqz v4, :cond_dc

    .line 497
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v3, p1, v4, v2}, Lcom/android/server/location/gnss/GnssVisibilityControl;->showLocationIcon(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;ILjava/lang/String;)V

    .line 498
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v6, 0x1

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v6, v0, v2}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    :cond_dc
    if-eqz v5, :cond_11c

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission mismatch. Proxy app "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " location permission is set to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->-$$Nest$fgetmHasLocationPermission(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " and GNSS HAL enabled is set to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mIsGpsEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " but GNSS non-framework location access response type is "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$mgetResponseTypeAsString(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for notification: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 504
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11c
    return-void
.end method

.method public final handlePermissionsChanged(I)V
    .registers 6

    .line 353
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_64

    .line 357
    :cond_9
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 358
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 359
    invoke-virtual {p0, v2}, Lcom/android/server/location/gnss/GnssVisibilityControl;->getProxyAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 360
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, p1, :cond_30

    goto :goto_13

    .line 364
    :cond_30
    invoke-virtual {p0, v2}, Lcom/android/server/location/gnss/GnssVisibilityControl;->shouldEnableLocationPermissionInGnssHal(Ljava/lang/String;)Z

    move-result p1

    .line 366
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;

    .line 367
    invoke-static {v0}, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->-$$Nest$fgetmHasLocationPermission(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;)Z

    move-result v1

    if-eq p1, v1, :cond_64

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " location permission changed. IsLocationPermissionEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssVisibilityControl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {v0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->-$$Nest$fputmHasLocationPermission(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;Z)V

    .line 371
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->updateNfwLocationAccessProxyAppsInGnssHal()V

    :cond_64
    :goto_64
    return-void
.end method

.method public final handleProxyAppPackageUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 186
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;

    if-nez v0, :cond_b

    goto :goto_57

    .line 191
    :cond_b
    sget-boolean v1, Lcom/android/server/location/gnss/GnssVisibilityControl;->DEBUG:Z

    const-string v2, "Proxy app "

    const-string v3, "GnssVisibilityControl"

    if-eqz v1, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " package changed: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_2d
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->shouldEnableLocationPermissionInGnssHal(Ljava/lang/String;)Z

    move-result p2

    .line 193
    invoke-static {v0}, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->-$$Nest$fgetmHasLocationPermission(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;)Z

    move-result v1

    if-eq v1, p2, :cond_57

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " location permission changed. IsLocationPermissionEnabled: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {v0, p2}, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->-$$Nest$fputmHasLocationPermission(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;Z)V

    .line 198
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->updateNfwLocationAccessProxyAppsInGnssHal()V

    :cond_57
    :goto_57
    return-void
.end method

.method public final handleUpdateProxyApps(Ljava/util/List;)V
    .registers 6

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->isProxyAppListUpdated(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_22

    .line 207
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 209
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_22

    .line 210
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mOnPermissionsChangedListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->removeOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->resetProxyAppsState()V

    .line 212
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->updateNfwLocationAccessProxyAppsInGnssHal()V

    :cond_22
    :goto_22
    return-void

    .line 217
    :cond_23
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 218
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mOnPermissionsChangedListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    goto :goto_36

    .line 220
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->resetProxyAppsState()V

    .line 223
    :goto_36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 224
    new-instance v1, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->shouldEnableLocationPermissionInGnssHal(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;-><init>(ZLcom/android/server/location/gnss/GnssVisibilityControl-IA;)V

    .line 226
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 229
    :cond_56
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->updateNfwLocationAccessProxyAppsInGnssHal()V

    return-void
.end method

.method public final hasLocationPermission(Ljava/lang/String;)Z
    .registers 3

    .line 396
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public hasLocationPermissionEnabledProxyApps()Z
    .registers 1

    .line 441
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->getLocationPermissionEnabledProxyApps()[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    if-lez p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final isPermissionMismatched(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z
    .registers 3

    .line 517
    invoke-static {p2}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$misRequestAccepted(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z

    move-result p2

    if-eqz p1, :cond_15

    .line 518
    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mIsGpsEnabled:Z

    if-nez p0, :cond_b

    goto :goto_15

    .line 519
    :cond_b
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->-$$Nest$fgetmHasLocationPermission(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;)Z

    move-result p0

    if-eq p0, p2, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    return p2
.end method

.method public final isProxyAppInstalled(Ljava/lang/String;)Z
    .registers 2

    .line 391
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->getProxyAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 392
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final isProxyAppListUpdated(Ljava/util/List;)Z
    .registers 5

    .line 250
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_e

    return v2

    .line 254
    :cond_e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 255
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    return v2

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$new$0(I)V
    .registers 2

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->handlePermissionsChanged(I)V

    return-void
.end method

.method public final synthetic lambda$new$1(I)V
    .registers 3

    .line 98
    new-instance v0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/gnss/GnssVisibilityControl;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->runOnHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic lambda$onConfigurationUpdated$4(Ljava/util/List;)V
    .registers 2

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->handleUpdateProxyApps(Ljava/util/List;)V

    return-void
.end method

.method public final synthetic lambda$onGpsEnabledChanged$2(Z)V
    .registers 2

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->handleGpsEnabledChanged(Z)V

    return-void
.end method

.method public final synthetic lambda$reportNfwNotification$3(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .registers 19

    .line 141
    new-instance v0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;

    const/4 v9, 0x0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;-><init>(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZLcom/android/server/location/gnss/GnssVisibilityControl-IA;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->handleNfwNotification(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)V

    return-void
.end method

.method public final synthetic lambda$runEventAndReleaseWakeLock$6(Ljava/lang/Runnable;)V
    .registers 2

    .line 672
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_9

    .line 674
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_9
    move-exception p1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 675
    throw p1
.end method

.method public final synthetic lambda$showLocationIcon$5(Ljava/lang/String;)V
    .registers 2

    .line 543
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->handleLocationIconTimeout(Ljava/lang/String;)V

    return-void
.end method

.method public final listenForProxyAppsPackageUpdates()V
    .registers 7

    .line 158
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/location/gnss/GnssVisibilityControl$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/GnssVisibilityControl$1;-><init>(Lcom/android/server/location/gnss/GnssVisibilityControl;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final logEvent(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;Z)V
    .registers 13

    .line 647
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$fgetmProxyAppPackageName(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$fgetmProtocolStack(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)B

    move-result v2

    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$fgetmOtherProtocolStackName(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$fgetmRequestor(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)B

    move-result v4

    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$fgetmRequestorId(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$fgetmResponseType(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)B

    move-result v6

    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$fgetmInEmergencyMode(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z

    move-result v7

    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$fgetmIsCachedLocation(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z

    move-result v8

    const/16 v0, 0x83

    move v9, p2

    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;IZZZ)V

    return-void
.end method

.method public onConfigurationUpdated(Lcom/android/server/location/gnss/GnssConfiguration;)V
    .registers 3

    .line 148
    invoke-virtual {p1}, Lcom/android/server/location/gnss/GnssConfiguration;->getProxyApps()Ljava/util/List;

    move-result-object p1

    .line 149
    new-instance v0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/GnssVisibilityControl;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->runOnHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onGpsEnabledChanged(Z)V
    .registers 6

    .line 123
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssVisibilityControl;Z)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_19

    :cond_10
    if-nez p1, :cond_19

    .line 133
    const-string p0, "GnssVisibilityControl"

    const-string p1, "Native call to disable non-framework location access in GNSS HAL may get executed after native_cleanup()."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    :goto_19
    return-void
.end method

.method public final postEmergencyLocationUserNotification(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)V
    .registers 5

    .line 614
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    .line 615
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_24

    .line 617
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not notify user of emergency location request. Notification: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GnssVisibilityControl"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 622
    :cond_24
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mContext:Landroid/content/Context;

    .line 623
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->createEmergencyLocationUserNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 622
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public reportNfwNotification(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .registers 19

    .line 141
    new-instance v0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/gnss/GnssVisibilityControl;Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->runOnHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final resetProxyAppsState()V
    .registers 5

    .line 234
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 235
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;

    .line 236
    invoke-static {v2}, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->-$$Nest$fgetmIsLocationIconOn(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;)Z

    move-result v3

    if-nez v3, :cond_23

    goto :goto_a

    .line 240
    :cond_23
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 241
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/location/gnss/GnssVisibilityControl;->getProxyAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 243
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->clearLocationIcon(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;ILjava/lang/String;)V

    goto :goto_a

    .line 246
    :cond_40
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public final runEventAndReleaseWakeLock(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 3

    .line 670
    new-instance v0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/location/gnss/GnssVisibilityControl;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final runOnHandler(Ljava/lang/Runnable;)V
    .registers 5

    .line 663
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 664
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->runEventAndReleaseWakeLock(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_19

    .line 665
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_19
    return-void
.end method

.method public final setNfwLocationAccessProxyAppsInGnssHal([Ljava/lang/String;)V
    .registers 5

    .line 409
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating non-framework location access proxy apps in the GNSS HAL to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssVisibilityControl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->native_enable_nfw_location_access([Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_34

    .line 414
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to update non-framework location access proxy apps in the GNSS HAL to: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    return-void
.end method

.method public final shouldEnableLocationPermissionInGnssHal(Ljava/lang/String;)Z
    .registers 3

    .line 387
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->isProxyAppInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->hasLocationPermission(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final showLocationIcon(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;ILjava/lang/String;)V
    .registers 10

    .line 526
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->-$$Nest$fgetmIsLocationIconOn(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;)Z

    move-result v0

    .line 527
    const-string v1, "GnssVisibilityControl"

    if-nez v0, :cond_28

    const/4 v2, 0x1

    .line 528
    invoke-virtual {p0, v2, p3, p4}, Lcom/android/server/location/gnss/GnssVisibilityControl;->updateLocationIcon(ZILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 529
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to show Location icon for notification: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 532
    :cond_24
    invoke-static {p1, v2}, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->-$$Nest$fputmIsLocationIconOn(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;Z)V

    goto :goto_2d

    .line 535
    :cond_28
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 539
    :goto_2d
    sget-boolean v2, Lcom/android/server/location/gnss/GnssVisibilityControl;->DEBUG:Z

    if-eqz v2, :cond_5c

    .line 540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location icon on. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_40

    const-string v0, "Extending"

    goto :goto_42

    :cond_40
    const-string v0, "Setting"

    :goto_42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " icon display timer. Uid: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", proxyAppPkgName: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_5c
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p4}, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/location/gnss/GnssVisibilityControl;Ljava/lang/String;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, p1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result v0

    if-nez v0, :cond_82

    .line 545
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/location/gnss/GnssVisibilityControl;->clearLocationIcon(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;ILjava/lang/String;)V

    .line 546
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to show location icon for the full duration for notification: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    return-void
.end method

.method public final updateLocationIcon(ZILjava/lang/String;)Z
    .registers 7

    const/16 v0, 0x2a

    const/16 v1, 0x29

    if-eqz p1, :cond_1e

    .line 575
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p1, v1, p2, p3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_10

    return v2

    .line 579
    :cond_10
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0, p2, p3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_28

    .line 581
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p0, v1, p2, p3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    return v2

    .line 585
    :cond_1e
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p1, v1, p2, p3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 586
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    :cond_28
    const/4 p0, 0x1

    return p0
.end method

.method public final updateNfwLocationAccessProxyAppsInGnssHal()V
    .registers 2

    .line 401
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mIsGpsEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 404
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->getLocationPermissionEnabledProxyApps()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->setNfwLocationAccessProxyAppsInGnssHal([Ljava/lang/String;)V

    return-void
.end method
