.class public final Lcom/android/server/twilight/TwilightService;
.super Lcom/android/server/SystemService;
.source "TwilightService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/location/LocationListener;


# instance fields
.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mBootCompleted:Z

.field public final mHandler:Landroid/os/Handler;

.field public mHasListeners:Z

.field public mLastLocation:Landroid/location/Location;

.field public mLastTwilightState:Lcom/android/server/twilight/TwilightState;

.field public final mListeners:Landroid/util/ArrayMap;

.field public mLocationManager:Landroid/location/LocationManager;

.field public mSharedPreferences:Landroid/content/SharedPreferences;

.field public mTimeChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$LGxa95zghnRqvHglJe8_uupAa40(Lcom/android/server/twilight/TwilightListener;Lcom/android/server/twilight/TwilightState;)V
    .registers 2

    .line 260
    invoke-interface {p0, p1}, Lcom/android/server/twilight/TwilightListener;->onTwilightStateChanged(Lcom/android/server/twilight/TwilightState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/twilight/TwilightService;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateTwilightState(Lcom/android/server/twilight/TwilightService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 87
    const-string v0, "TwilightService"

    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    .line 88
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static calculateTwilightState(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;
    .registers 12

    if-nez p0, :cond_7

    .line 320
    invoke-static {p1, p2}, Lcom/android/server/twilight/TwilightService;->getManualTwilightState(J)Lcom/android/server/twilight/TwilightState;

    move-result-object p0

    return-object p0

    .line 323
    :cond_7
    new-instance v0, Lcom/ibm/icu/impl/CalendarAstronomer;

    .line 324
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/impl/CalendarAstronomer;-><init>(DD)V

    .line 326
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object p0

    .line 327
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xb

    const/16 v2, 0xc

    .line 328
    invoke-virtual {p0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    const/4 v1, 0x0

    .line 329
    invoke-virtual {p0, v2, v1}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 330
    invoke-virtual {p0, v2, v1}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 331
    invoke-virtual {p0, v2, v1}, Landroid/icu/util/Calendar;->set(II)V

    .line 332
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V

    const/4 v2, 0x1

    .line 334
    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v3

    .line 335
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v5

    cmp-long v7, v5, p1

    const/4 v8, 0x5

    if-gez v7, :cond_54

    .line 338
    invoke-virtual {p0, v8, v2}, Landroid/icu/util/Calendar;->add(II)V

    .line 339
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 340
    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v3

    goto :goto_67

    :cond_54
    cmp-long p1, v3, p1

    if-lez p1, :cond_67

    const/4 p1, -0x1

    .line 342
    invoke-virtual {p0, v8, p1}, Landroid/icu/util/Calendar;->add(II)V

    .line 343
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 344
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v5

    .line 347
    :cond_67
    :goto_67
    new-instance p0, Lcom/android/server/twilight/TwilightState;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    return-object p0
.end method

.method public static getManualTwilightState(J)Lcom/android/server/twilight/TwilightState;
    .registers 10

    .line 351
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 352
    invoke-virtual {v0, p0, p1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x6

    const/16 v2, 0xb

    .line 353
    invoke-virtual {v0, v2, v1}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v1, 0xc

    const/4 v3, 0x0

    .line 354
    invoke-virtual {v0, v1, v3}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v4, 0xd

    .line 355
    invoke-virtual {v0, v4, v3}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v5, 0xe

    .line 356
    invoke-virtual {v0, v5, v3}, Landroid/icu/util/Calendar;->set(II)V

    .line 357
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v6

    .line 358
    invoke-virtual {v6, p0, p1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    const/16 v7, 0x14

    .line 359
    invoke-virtual {v6, v2, v7}, Landroid/icu/util/Calendar;->set(II)V

    .line 360
    invoke-virtual {v6, v1, v3}, Landroid/icu/util/Calendar;->set(II)V

    .line 361
    invoke-virtual {v6, v4, v3}, Landroid/icu/util/Calendar;->set(II)V

    .line 362
    invoke-virtual {v6, v5, v3}, Landroid/icu/util/Calendar;->set(II)V

    .line 363
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 364
    invoke-virtual {v6}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    cmp-long v5, v3, p0

    const/4 v7, 0x5

    if-gez v5, :cond_48

    const/4 p0, 0x1

    .line 366
    invoke-virtual {v0, v7, p0}, Landroid/icu/util/Calendar;->add(II)V

    .line 367
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    goto :goto_54

    :cond_48
    cmp-long p0, v1, p0

    if-lez p0, :cond_54

    const/4 p0, -0x1

    .line 369
    invoke-virtual {v6, v7, p0}, Landroid/icu/util/Calendar;->add(II)V

    .line 370
    invoke-virtual {v6}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 372
    :cond_54
    :goto_54
    new-instance p0, Lcom/android/server/twilight/TwilightState;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    return-object p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    .line 144
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_18

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_a

    return v2

    .line 154
    :cond_a
    iget-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-eqz p1, :cond_17

    .line 155
    iput-boolean v2, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    .line 156
    iget-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    if-eqz p1, :cond_17

    .line 157
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->stopListening()V

    :cond_17
    return v0

    .line 146
    :cond_18
    iget-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-nez p1, :cond_25

    .line 147
    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    .line 148
    iget-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    if-eqz p1, :cond_25

    .line 149
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->startListening()V

    :cond_25
    return v0
.end method

.method public onAlarm()V
    .registers 3

    .line 275
    const-string v0, "TwilightService"

    const-string/jumbo v1, "onAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_26

    .line 131
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 132
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 133
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const/4 p1, 0x1

    .line 135
    iput-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    .line 136
    iget-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-eqz p1, :cond_26

    .line 137
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->startListening()V

    :cond_26
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 5

    if-eqz p1, :cond_3a

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLocationChanged: provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " accuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    const-string v1, "TwilightService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    .line 287
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    :cond_3a
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 93
    new-instance v0, Lcom/android/server/twilight/TwilightService$1;

    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$1;-><init>(Lcom/android/server/twilight/TwilightService;)V

    const-class v1, Lcom/android/server/twilight/TwilightManager;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    .line 0
    return-void
.end method

.method public onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5

    .line 305
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    .line 306
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string v2, "TwilightService_preferences.xml"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 305
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 308
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    return-void
.end method

.method public final startListening()V
    .registers 6

    .line 166
    const-string v0, "TwilightService"

    const-string/jumbo v1, "startListening"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 170
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    .line 169
    invoke-virtual {v0, v2, p0, v1}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 173
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_54

    .line 174
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 175
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 176
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/twilight/TwilightService;)V

    .line 175
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/location/LocationManager;->getCurrentLocation(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    goto :goto_54

    .line 178
    :cond_38
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 179
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 180
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/twilight/TwilightService;)V

    .line 179
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/location/LocationManager;->getCurrentLocation(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 186
    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_74

    .line 187
    new-instance v0, Lcom/android/server/twilight/TwilightService$2;

    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$2;-><init>(Lcom/android/server/twilight/TwilightService;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 195
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 196
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 201
    :cond_74
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    return-void
.end method

.method public final stopListening()V
    .registers 4

    .line 205
    const-string v0, "TwilightService"

    const-string/jumbo v1, "stopListening"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 208
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 209
    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    :cond_18
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    if-eqz v0, :cond_21

    .line 213
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 216
    :cond_21
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 217
    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    return-void
.end method

.method public final updateTwilightState()V
    .registers 11

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 223
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    if-eqz v2, :cond_9

    goto :goto_f

    .line 224
    :cond_9
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v2

    :goto_f
    if-nez v2, :cond_43

    .line 226
    iget-object v3, p0, Lcom/android/server/twilight/TwilightService;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_43

    .line 228
    const-string v4, "TwilightService_LONGITUDE"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 229
    iget-object v7, p0, Lcom/android/server/twilight/TwilightService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v8, "TwilightService_LATITUDE"

    invoke-interface {v7, v8, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v9, v3, v5

    if-eqz v9, :cond_73

    cmp-long v5, v7, v5

    if-eqz v5, :cond_73

    .line 231
    new-instance v2, Landroid/location/Location;

    const-string v5, ""

    invoke-direct {v2, v5}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    .line 233
    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    goto :goto_73

    .line 237
    :cond_43
    iget-object v3, p0, Lcom/android/server/twilight/TwilightService;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_73

    .line 239
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "TwilightService_LONGITUDE"

    .line 240
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v5

    .line 239
    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 240
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 241
    iget-object v3, p0, Lcom/android/server/twilight/TwilightService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "TwilightService_LATITUDE"

    .line 242
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v5

    .line 241
    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 242
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 247
    :cond_73
    :goto_73
    invoke-static {v2, v0, v1}, Lcom/android/server/twilight/TwilightService;->calculateTwilightState(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 254
    :try_start_7a
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ac

    .line 255
    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    .line 257
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_8c
    if-ltz v2, :cond_ac

    .line 258
    iget-object v3, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/twilight/TwilightListener;

    .line 259
    iget-object v4, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    .line 260
    new-instance v5, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3, v0}, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/twilight/TwilightListener;Lcom/android/server/twilight/TwilightState;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_8c

    :catchall_a9
    move-exception v0

    move-object p0, v0

    goto :goto_cc

    .line 263
    :cond_ac
    monitor-exit v1
    :try_end_ad
    .catchall {:try_start_7a .. :try_end_ad} :catchall_a9

    if-eqz v0, :cond_cb

    .line 267
    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 268
    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightState;->sunriseTimeMillis()J

    move-result-wide v0

    :goto_b9
    move-wide v4, v0

    goto :goto_c0

    :cond_bb
    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightState;->sunsetTimeMillis()J

    move-result-wide v0

    goto :goto_b9

    .line 269
    :goto_c0
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    const-string v6, "TwilightService"

    iget-object v8, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    move-object v7, p0

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :cond_cb
    return-void

    .line 263
    :goto_cc
    :try_start_cc
    monitor-exit v1
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_a9

    throw p0
.end method
