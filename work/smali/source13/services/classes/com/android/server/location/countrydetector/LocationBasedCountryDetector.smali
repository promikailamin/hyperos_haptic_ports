.class public Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;
.super Lcom/android/server/location/countrydetector/CountryDetectorBase;
.source "LocationBasedCountryDetector.java"


# static fields
.field private static final QUERY_LOCATION_TIMEOUT:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "LocationBasedCountryDetector"


# instance fields
.field private mEnabledProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLocationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationManager:Landroid/location/LocationManager;

.field protected mQueryThread:Ljava/lang/Thread;

.field protected mTimer:Ljava/util/Timer;


# direct methods
.method static bridge synthetic -$$Nest$mqueryCountryCode(Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;Landroid/location/Location;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->queryCountryCode(Landroid/location/Location;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/location/countrydetector/CountryDetectorBase;-><init>(Landroid/content/Context;)V

    .line 69
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    .line 70
    return-void
.end method

.method private declared-synchronized queryCountryCode(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    monitor-enter p0

    .line 244
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mQueryThread:Ljava/lang/Thread;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 245
    :cond_7
    :try_start_7
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;-><init>(Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;Landroid/location/Location;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mQueryThread:Ljava/lang/Thread;

    .line 262
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_18

    .line 263
    monitor-exit p0

    return-void

    .line 243
    .end local p0    # "this":Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;
    .end local p1    # "location":Landroid/location/Location;
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized detectCountry()Landroid/location/Country;
    .registers 7

    monitor-enter p0

    .line 171
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    if-nez v0, :cond_54

    .line 175
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->getEnabledProviders()Ljava/util/List;

    move-result-object v0

    .line 176
    .local v0, "enabledProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 177
    .local v1, "totalProviders":I
    if-lez v1, :cond_49

    .line 178
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    .line 179
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    if-ge v2, v1, :cond_35

    .line 180
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 181
    .local v3, "provider":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->isAcceptableProvider(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 182
    new-instance v4, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$1;

    invoke-direct {v4, p0}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$1;-><init>(Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;)V

    .line 200
    .local v4, "listener":Landroid/location/LocationListener;
    iget-object v5, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-virtual {p0, v3, v4}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->registerListener(Ljava/lang/String;Landroid/location/LocationListener;)V

    .line 179
    .end local v3    # "provider":Ljava/lang/String;
    .end local v4    # "listener":Landroid/location/LocationListener;
    .end local p0    # "this":Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 205
    .end local v2    # "i":I
    :cond_35
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    .line 206
    new-instance v3, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$2;

    invoke-direct {v3, p0}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$2;-><init>(Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->getQueryLocationTimeout()J

    move-result-wide v4

    .line 206
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_50

    .line 218
    :cond_49
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->queryCountryCode(Landroid/location/Location;)V

    .line 220
    :goto_50
    iget-object v2, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mDetectedCountry:Landroid/location/Country;
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_5a

    monitor-exit p0

    return-object v2

    .line 172
    .end local v0    # "enabledProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "totalProviders":I
    :cond_54
    :try_start_54
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_5a
    .catchall {:try_start_54 .. :try_end_5a} :catchall_5a

    .line 170
    :catchall_5a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getCountryFromLocation(Landroid/location/Location;)Ljava/lang/String;
    .registers 10
    .param p1, "location"    # Landroid/location/Location;

    .line 76
    const-string v0, "LocationBasedCountryDetector"

    if-nez p1, :cond_6

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_6
    const/4 v1, 0x0

    .line 80
    .local v1, "country":Ljava/lang/String;
    new-instance v2, Landroid/location/Geocoder;

    iget-object v3, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 82
    .local v2, "geoCoder":Landroid/location/Geocoder;
    nop

    .line 83
    :try_start_f
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    const/4 v7, 0x1

    .line 82
    invoke-virtual/range {v2 .. v7}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v3

    .line 84
    .local v3, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v3, :cond_30

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_30

    .line 85
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Address;

    invoke-virtual {v4}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v0
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2f} :catch_61
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_2f} :catch_31

    move-object v1, v0

    .line 92
    .end local v3    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_30
    :goto_30
    goto :goto_68

    .line 89
    :catch_31
    move-exception v3

    .line 90
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to getCountryFromLocation, latitude="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or longitude="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 91
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", is invalidate"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 87
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_61
    move-exception v3

    .line 88
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "Exception occurs when getting country from location"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_30

    .line 93
    :goto_68
    return-object v1
.end method

.method protected getEnabledProviders()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mEnabledProviders:Ljava/util/List;

    if-nez v0, :cond_d

    .line 158
    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mEnabledProviders:Ljava/util/List;

    .line 160
    :cond_d
    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mEnabledProviders:Ljava/util/List;

    return-object v0
.end method

.method protected getLastKnownLocation()Landroid/location/Location;
    .registers 12

    .line 129
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 131
    .local v0, "bid":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v2

    .line 132
    .local v2, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 133
    .local v3, "bestLocation":Landroid/location/Location;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 134
    .local v5, "provider":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v6, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    .line 135
    .local v6, "lastKnownLocation":Landroid/location/Location;
    if-eqz v6, :cond_32

    .line 136
    if-eqz v3, :cond_31

    .line 137
    invoke-virtual {v3}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v7

    .line 138
    invoke-virtual {v6}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v9
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_38

    cmp-long v7, v7, v9

    if-gez v7, :cond_32

    .line 139
    :cond_31
    move-object v3, v6

    .line 142
    .end local v5    # "provider":Ljava/lang/String;
    .end local v6    # "lastKnownLocation":Landroid/location/Location;
    :cond_32
    goto :goto_f

    .line 143
    :cond_33
    nop

    .line 145
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 143
    return-object v3

    .line 145
    .end local v2    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "bestLocation":Landroid/location/Location;
    :catchall_38
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    throw v2
.end method

.method protected getQueryLocationTimeout()J
    .registers 3

    .line 153
    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method protected isAcceptableProvider(Ljava/lang/String;)Z
    .registers 3
    .param p1, "provider"    # Ljava/lang/String;

    .line 98
    const-string/jumbo v0, "passive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected registerListener(Ljava/lang/String;Landroid/location/LocationListener;)V
    .registers 11
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/location/LocationListener;

    .line 105
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 107
    .local v0, "bid":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 109
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 110
    nop

    .line 111
    return-void

    .line 109
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 110
    throw v2
.end method

.method public declared-synchronized stop()V
    .registers 4

    monitor-enter p0

    .line 228
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 229
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationListener;

    .line 230
    .local v2, "listener":Landroid/location/LocationListener;
    invoke-virtual {p0, v2}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->unregisterListener(Landroid/location/LocationListener;)V

    .line 231
    .end local v2    # "listener":Landroid/location/LocationListener;
    goto :goto_a

    .line 232
    .end local p0    # "this":Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;
    :cond_1a
    iput-object v1, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    .line 234
    :cond_1c
    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_25

    .line 235
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 236
    iput-object v1, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    .line 238
    :cond_25
    monitor-exit p0

    return-void

    .line 227
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected unregisterListener(Landroid/location/LocationListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/location/LocationListener;

    .line 117
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 119
    .local v0, "bid":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 121
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    nop

    .line 123
    return-void

    .line 121
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    throw v2
.end method
