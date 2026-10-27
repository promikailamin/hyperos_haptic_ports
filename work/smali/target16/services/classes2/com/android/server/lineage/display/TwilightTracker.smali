.class public final Lcom/android/server/lineage/display/TwilightTracker;
.super Ljava/lang/Object;
.source "TwilightTracker.java"


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field public final mEmptyLocationListener:Landroid/location/LocationListener;

.field public final mListeners:Ljava/util/ArrayList;

.field public final mLocationHandler:Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;

.field public final mLocationListener:Landroid/location/LocationListener;

.field public final mLocationManager:Landroid/location/LocationManager;

.field public final mLock:Ljava/lang/Object;

.field public mTwilightState:Lcom/android/server/lineage/display/TwilightTracker$TwilightState;

.field public final mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAlarmManager(Lcom/android/server/lineage/display/TwilightTracker;)Landroid/app/AlarmManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lineage/display/TwilightTracker;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/lineage/display/TwilightTracker;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lineage/display/TwilightTracker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEmptyLocationListener(Lcom/android/server/lineage/display/TwilightTracker;)Landroid/location/LocationListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lineage/display/TwilightTracker;->mEmptyLocationListener:Landroid/location/LocationListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLocationHandler(Lcom/android/server/lineage/display/TwilightTracker;)Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lineage/display/TwilightTracker;->mLocationHandler:Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLocationListener(Lcom/android/server/lineage/display/TwilightTracker;)Landroid/location/LocationListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lineage/display/TwilightTracker;->mLocationListener:Landroid/location/LocationListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLocationManager(Lcom/android/server/lineage/display/TwilightTracker;)Landroid/location/LocationManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lineage/display/TwilightTracker;->mLocationManager:Landroid/location/LocationManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetTwilightState(Lcom/android/server/lineage/display/TwilightTracker;Lcom/android/server/lineage/display/TwilightTracker$TwilightState;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/lineage/display/TwilightTracker;->setTwilightState(Lcom/android/server/lineage/display/TwilightTracker$TwilightState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smhasMoved(Landroid/location/Location;Landroid/location/Location;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/lineage/display/TwilightTracker;->hasMoved(Landroid/location/Location;Landroid/location/Location;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/lineage/display/TwilightTracker;->mLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/lineage/display/TwilightTracker;->mListeners:Ljava/util/ArrayList;

    .line 404
    new-instance v0, Lcom/android/server/lineage/display/TwilightTracker$1;

    invoke-direct {v0, p0}, Lcom/android/server/lineage/display/TwilightTracker$1;-><init>(Lcom/android/server/lineage/display/TwilightTracker;)V

    iput-object v0, p0, Lcom/android/server/lineage/display/TwilightTracker;->mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

    .line 421
    new-instance v1, Lcom/android/server/lineage/display/TwilightTracker$2;

    invoke-direct {v1, p0}, Lcom/android/server/lineage/display/TwilightTracker$2;-><init>(Lcom/android/server/lineage/display/TwilightTracker;)V

    iput-object v1, p0, Lcom/android/server/lineage/display/TwilightTracker;->mEmptyLocationListener:Landroid/location/LocationListener;

    .line 435
    new-instance v1, Lcom/android/server/lineage/display/TwilightTracker$3;

    invoke-direct {v1, p0}, Lcom/android/server/lineage/display/TwilightTracker$3;-><init>(Lcom/android/server/lineage/display/TwilightTracker;)V

    iput-object v1, p0, Lcom/android/server/lineage/display/TwilightTracker;->mLocationListener:Landroid/location/LocationListener;

    .line 69
    const-string v1, "TwilightTracker"

    invoke-virtual {p1, v1}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lineage/display/TwilightTracker;->mContext:Landroid/content/Context;

    .line 70
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/lineage/display/TwilightTracker;->mAlarmManager:Landroid/app/AlarmManager;

    .line 71
    const-string v1, "location"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/server/lineage/display/TwilightTracker;->mLocationManager:Landroid/location/LocationManager;

    .line 73
    new-instance v1, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;-><init>(Lcom/android/server/lineage/display/TwilightTracker;Lcom/android/server/lineage/display/TwilightTracker-IA;)V

    iput-object v1, p0, Lcom/android/server/lineage/display/TwilightTracker;->mLocationHandler:Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;

    .line 75
    new-instance p0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {p0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 76
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v1, "lineageos.platform.intent.action.UPDATE_TWILIGHT_STATE"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static hasMoved(Landroid/location/Location;Landroid/location/Location;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-nez p0, :cond_8

    return v1

    .line 137
    :cond_8
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_15

    return v0

    .line 142
    :cond_15
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    .line 145
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result p0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    add-float/2addr p0, p1

    cmpl-float p0, v2, p0

    if-ltz p0, :cond_27

    return v1

    :cond_27
    return v0
.end method


# virtual methods
.method public getCurrentState()Lcom/android/server/lineage/display/TwilightTracker$TwilightState;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/android/server/lineage/display/TwilightTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_3
    iget-object p0, p0, Lcom/android/server/lineage/display/TwilightTracker;->mTwilightState:Lcom/android/server/lineage/display/TwilightTracker$TwilightState;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 90
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public registerListener(Lcom/android/server/lineage/display/TwilightTracker$TwilightListener;Landroid/os/Handler;)V
    .registers 6

    .line 99
    iget-object v0, p0, Lcom/android/server/lineage/display/TwilightTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_3
    iget-object v1, p0, Lcom/android/server/lineage/display/TwilightTracker;->mListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/lineage/display/TwilightTracker$TwilightListenerRecord;

    invoke-direct {v2, p1, p2}, Lcom/android/server/lineage/display/TwilightTracker$TwilightListenerRecord;-><init>(Lcom/android/server/lineage/display/TwilightTracker$TwilightListener;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object p1, p0, Lcom/android/server/lineage/display/TwilightTracker;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1e

    .line 103
    iget-object p0, p0, Lcom/android/server/lineage/display/TwilightTracker;->mLocationHandler:Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;

    invoke-virtual {p0}, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->enableLocationUpdates()V

    goto :goto_1e

    :catchall_1c
    move-exception p0

    goto :goto_20

    .line 105
    :cond_1e
    :goto_1e
    monitor-exit v0

    return-void

    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1c

    throw p0
.end method

.method public final setTwilightState(Lcom/android/server/lineage/display/TwilightTracker$TwilightState;)V
    .registers 5

    .line 110
    iget-object v0, p0, Lcom/android/server/lineage/display/TwilightTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_3
    iget-object v1, p0, Lcom/android/server/lineage/display/TwilightTracker;->mTwilightState:Lcom/android/server/lineage/display/TwilightTracker$TwilightState;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 116
    iput-object p1, p0, Lcom/android/server/lineage/display/TwilightTracker;->mTwilightState:Lcom/android/server/lineage/display/TwilightTracker$TwilightState;

    .line 118
    iget-object p1, p0, Lcom/android/server/lineage/display/TwilightTracker;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_14
    if-ge v1, p1, :cond_26

    .line 120
    iget-object v2, p0, Lcom/android/server/lineage/display/TwilightTracker;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/lineage/display/TwilightTracker$TwilightListenerRecord;

    invoke-virtual {v2}, Lcom/android/server/lineage/display/TwilightTracker$TwilightListenerRecord;->postUpdate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :catchall_24
    move-exception p0

    goto :goto_28

    .line 123
    :cond_26
    monitor-exit v0

    return-void

    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_24

    throw p0
.end method
