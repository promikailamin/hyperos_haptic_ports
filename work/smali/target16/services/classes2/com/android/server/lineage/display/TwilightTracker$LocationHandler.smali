.class public final Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;
.super Landroid/os/Handler;
.source "TwilightTracker.java"


# instance fields
.field public mDidFirstInit:Z

.field public mLastNetworkRegisterTime:J

.field public mLastUpdateInterval:J

.field public mLocation:Landroid/location/Location;

.field public mNetworkListenerEnabled:Z

.field public mPassiveListenerEnabled:Z

.field public final mTwilightCalculator:Lcom/android/server/lineage/display/TwilightCalculator;

.field public final synthetic this$0:Lcom/android/server/lineage/display/TwilightTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/lineage/display/TwilightTracker;)V
    .registers 4

    .line 152
    iput-object p1, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/lineage/display/TwilightTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-wide/32 v0, -0x1b7740

    .line 170
    iput-wide v0, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mLastNetworkRegisterTime:J

    .line 173
    new-instance p1, Lcom/android/server/lineage/display/TwilightCalculator;

    invoke-direct {p1}, Lcom/android/server/lineage/display/TwilightCalculator;-><init>()V

    iput-object p1, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mTwilightCalculator:Lcom/android/server/lineage/display/TwilightCalculator;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/lineage/display/TwilightTracker;Lcom/android/server/lineage/display/TwilightTracker-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;-><init>(Lcom/android/server/lineage/display/TwilightTracker;)V

    return-void
.end method


# virtual methods
.method public enableLocationUpdates()V
    .registers 2

    const/4 v0, 0x1

    .line 181
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    .line 194
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_61

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3a

    const/4 v3, 0x3

    if-eq v0, v3, :cond_15

    const/4 p1, 0x4

    if-eq v0, p1, :cond_11

    goto/16 :goto_100

    .line 293
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->updateTwilightState()V

    return-void

    .line 196
    :cond_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/location/Location;

    .line 197
    iget-object v0, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-static {v0, p1}, Lcom/android/server/lineage/display/TwilightTracker;->-$$Nest$smhasMoved(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    .line 198
    iget-object v3, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mLocation:Landroid/location/Location;

    if-eqz v3, :cond_31

    .line 199
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    iget-object v4, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_32

    :cond_31
    move v1, v2

    :cond_32
    if-nez v0, :cond_36

    if-eqz v1, :cond_100

    .line 206
    :cond_36
    invoke-virtual {p0, p1}, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->setLocation(Landroid/location/Location;)V

    return-void

    .line 212
    :cond_3a
    iget-boolean p1, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mNetworkListenerEnabled:Z

    if-nez p1, :cond_40

    goto/16 :goto_100

    .line 217
    :cond_40
    iget-wide v3, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mLastNetworkRegisterTime:J

    const-wide/32 v5, 0x1b7740

    add-long/2addr v3, v5

    .line 218
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-ltz p1, :cond_50

    goto/16 :goto_100

    .line 226
    :cond_50
    iput-boolean v1, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mNetworkListenerEnabled:Z

    .line 227
    iget-object p1, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/lineage/display/TwilightTracker;

    invoke-static {p1}, Lcom/android/server/lineage/display/TwilightTracker;->-$$Nest$fgetmLocationManager(Lcom/android/server/lineage/display/TwilightTracker;)Landroid/location/LocationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/lineage/display/TwilightTracker;

    invoke-static {v0}, Lcom/android/server/lineage/display/TwilightTracker;->-$$Nest$fgetmEmptyLocationListener(Lcom/android/server/lineage/display/TwilightTracker;)Landroid/location/LocationListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 235
    :cond_61
    :try_start_61
    iget-object p1, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/lineage/display/TwilightTracker;

    invoke-static {p1}, Lcom/android/server/lineage/display/TwilightTracker;->-$$Nest$fgetmLocationManager(Lcom/android/server/lineage/display/TwilightTracker;)Landroid/location/LocationManager;

    move-result-object p1

    const-string/jumbo v0, "network"

    .line 236
    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_6e} :catch_6f

    goto :goto_70

    :catch_6f
    move p1, v1

    .line 242
    :goto_70
    iget-boolean v0, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mNetworkListenerEnabled:Z

    if-nez v0, :cond_a1

    if-eqz p1, :cond_a1

    .line 243
    iput-boolean v2, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mNetworkListenerEnabled:Z

    .line 244
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mLastNetworkRegisterTime:J

    .line 245
    iget-object v0, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/lineage/display/TwilightTracker;

    invoke-static {v0}, Lcom/android/server/lineage/display/TwilightTracker;->-$$Nest$fgetmLocationManager(Lcom/android/server/lineage/display/TwilightTracker;)Landroid/location/LocationManager;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/lineage/display/TwilightTracker;

    invoke-static {v0}, Lcom/android/server/lineage/display/TwilightTracker;->-$$Nest$fgetmEmptyLocationListener(Lcom/android/server/lineage/display/TwilightTracker;)Landroid/location/LocationListener;

    move-result-object v8

    const-string/jumbo v4, "network"

    const-wide/32 v5, 0x5265c00

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 248
    iget-boolean v0, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mDidFirstInit:Z

    if-nez v0, :cond_a1

    .line 249
    iput-boolean v2, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mDidFirstInit:Z

    .line 250
    iget-object v0, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_a1

    .line 251
    invoke-virtual {p0}, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->retrieveLocation()V

    .line 260
    :cond_a1
    :try_start_a1
    iget-object v0, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/lineage/display/TwilightTracker;

    invoke-static {v0}, Lcom/android/server/lineage/display/TwilightTracker;->-$$Nest$fgetmLocationManager(Lcom/android/server/lineage/display/TwilightTracker;)Landroid/location/LocationManager;

    move-result-object v0

    const-string/jumbo v3, "passive"

    .line 261
    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_ae} :catch_ae

    .line 268
    :catch_ae
    iget-boolean v0, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mPassiveListenerEnabled:Z

    if-nez v0, :cond_cd

    if-eqz v1, :cond_cd

    .line 269
    iput-boolean v2, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mPassiveListenerEnabled:Z

    .line 270
    iget-object v0, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/lineage/display/TwilightTracker;

    invoke-static {v0}, Lcom/android/server/lineage/display/TwilightTracker;->-$$Nest$fgetmLocationManager(Lcom/android/server/lineage/display/TwilightTracker;)Landroid/location/LocationManager;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/lineage/display/TwilightTracker;

    invoke-static {v0}, Lcom/android/server/lineage/display/TwilightTracker;->-$$Nest$fgetmLocationListener(Lcom/android/server/lineage/display/TwilightTracker;)Landroid/location/LocationListener;

    move-result-object v8

    const-string/jumbo v4, "passive"

    const-wide/16 v5, 0x0

    const v7, 0x469c4000    # 20000.0f

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 274
    :cond_cd
    iget-boolean v0, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mNetworkListenerEnabled:Z

    if-eqz v0, :cond_d5

    iget-boolean v0, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mPassiveListenerEnabled:Z

    if-nez v0, :cond_f7

    .line 275
    :cond_d5
    iget-wide v0, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mLastUpdateInterval:J

    long-to-double v0, v0

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v3

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mLastUpdateInterval:J

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_e9

    const-wide/16 v0, 0x1388

    .line 277
    iput-wide v0, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mLastUpdateInterval:J

    goto :goto_f2

    :cond_e9
    const-wide/32 v3, 0xdbba0

    cmp-long v0, v0, v3

    if-lez v0, :cond_f2

    .line 279
    iput-wide v3, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mLastUpdateInterval:J

    .line 281
    :cond_f2
    :goto_f2
    iget-wide v0, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mLastUpdateInterval:J

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_f7
    if-nez p1, :cond_100

    .line 284
    iget-object p1, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mLocation:Landroid/location/Location;

    if-nez p1, :cond_100

    .line 288
    invoke-virtual {p0}, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->retrieveLocation()V

    :cond_100
    :goto_100
    return-void
.end method

.method public processNewLocation(Landroid/location/Location;)V
    .registers 3

    const/4 v0, 0x3

    .line 176
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 177
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public requestLocationUpdate()V
    .registers 2

    const/4 v0, 0x2

    .line 185
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public requestTwilightUpdate()V
    .registers 2

    const/4 v0, 0x4

    .line 189
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final retrieveLocation()V
    .registers 8

    .line 300
    iget-object v0, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/lineage/display/TwilightTracker;

    invoke-static {v0}, Lcom/android/server/lineage/display/TwilightTracker;->-$$Nest$fgetmLocationManager(Lcom/android/server/lineage/display/TwilightTracker;)Landroid/location/LocationManager;

    move-result-object v0

    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    const/4 v2, 0x1

    .line 301
    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 302
    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 303
    iget-object v2, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/lineage/display/TwilightTracker;

    invoke-static {v2}, Lcom/android/server/lineage/display/TwilightTracker;->-$$Nest$fgetmLocationManager(Lcom/android/server/lineage/display/TwilightTracker;)Landroid/location/LocationManager;

    move-result-object v2

    .line 304
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    if-eqz v1, :cond_3b

    if-eqz v2, :cond_15

    .line 307
    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v3

    .line 308
    invoke-virtual {v2}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_15

    :cond_3b
    move-object v1, v2

    goto :goto_15

    :cond_3d
    if-nez v1, :cond_82

    .line 317
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 319
    iget-wide v1, v0, Landroid/text/format/Time;->gmtoff:J

    .line 320
    iget v0, v0, Landroid/text/format/Time;->isDst:I

    if-lez v0, :cond_54

    const/16 v0, 0xe10

    goto :goto_55

    :cond_54
    const/4 v0, 0x0

    :goto_55
    int-to-long v3, v0

    sub-long/2addr v1, v3

    long-to-double v0, v1

    const-wide v2, 0x3f71111111111111L    # 0.004166666666666667

    mul-double/2addr v0, v2

    .line 321
    new-instance v2, Landroid/location/Location;

    const-string v3, "fake"

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    const-wide/16 v0, 0x0

    .line 323
    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    const v0, 0x48cb9d00    # 417000.0f

    .line 324
    invoke-virtual {v2, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 326
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    move-object v1, v2

    .line 333
    :cond_82
    invoke-virtual {p0, v1}, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->setLocation(Landroid/location/Location;)V

    return-void
.end method

.method public final setLocation(Landroid/location/Location;)V
    .registers 2

    .line 337
    iput-object p1, p0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mLocation:Landroid/location/Location;

    .line 338
    invoke-virtual {p0}, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->updateTwilightState()V

    return-void
.end method

.method public final updateTwilightState()V
    .registers 25

    move-object/from16 v0, p0

    .line 342
    iget-object v1, v0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mLocation:Landroid/location/Location;

    if-nez v1, :cond_d

    .line 343
    iget-object v0, v0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/lineage/display/TwilightTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/lineage/display/TwilightTracker;->-$$Nest$msetTwilightState(Lcom/android/server/lineage/display/TwilightTracker;Lcom/android/server/lineage/display/TwilightTracker$TwilightState;)V

    return-void

    .line 347
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 350
    iget-object v5, v0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mTwilightCalculator:Lcom/android/server/lineage/display/TwilightCalculator;

    const-wide/32 v12, 0x5265c00

    sub-long v6, v3, v12

    iget-object v1, v0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mLocation:Landroid/location/Location;

    .line 351
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    iget-object v1, v0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    .line 350
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/lineage/display/TwilightCalculator;->calculateTwilight(JDD)V

    .line 352
    iget-object v2, v0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mTwilightCalculator:Lcom/android/server/lineage/display/TwilightCalculator;

    iget-wide v9, v2, Lcom/android/server/lineage/display/TwilightCalculator;->mSunset:J

    .line 355
    iget-object v1, v0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mLocation:Landroid/location/Location;

    .line 356
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    iget-object v1, v0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    .line 355
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/lineage/display/TwilightCalculator;->calculateTwilight(JDD)V

    .line 357
    iget-object v14, v0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mTwilightCalculator:Lcom/android/server/lineage/display/TwilightCalculator;

    iget v1, v14, Lcom/android/server/lineage/display/TwilightCalculator;->mState:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_44

    move v1, v5

    goto :goto_45

    :cond_44
    move v1, v2

    .line 358
    :goto_45
    iget-wide v6, v14, Lcom/android/server/lineage/display/TwilightCalculator;->mSunrise:J

    move-wide v15, v12

    .line 359
    iget-wide v12, v14, Lcom/android/server/lineage/display/TwilightCalculator;->mSunset:J

    add-long/2addr v15, v3

    .line 362
    iget-object v8, v0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mLocation:Landroid/location/Location;

    .line 363
    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v17

    iget-object v8, v0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v19

    .line 362
    invoke-virtual/range {v14 .. v20}, Lcom/android/server/lineage/display/TwilightCalculator;->calculateTwilight(JDD)V

    .line 364
    iget-object v8, v0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->mTwilightCalculator:Lcom/android/server/lineage/display/TwilightCalculator;

    iget-wide v14, v8, Lcom/android/server/lineage/display/TwilightCalculator;->mSunrise:J

    move-wide/from16 v22, v14

    .line 367
    new-instance v14, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;

    move v15, v1

    move-wide/from16 v18, v6

    move-wide/from16 v16, v9

    move-wide/from16 v20, v12

    invoke-direct/range {v14 .. v23}, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;-><init>(ZJJJJ)V

    .line 372
    iget-object v1, v0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/lineage/display/TwilightTracker;

    invoke-static {v1, v14}, Lcom/android/server/lineage/display/TwilightTracker;->-$$Nest$msetTwilightState(Lcom/android/server/lineage/display/TwilightTracker;Lcom/android/server/lineage/display/TwilightTracker$TwilightState;)V

    const-wide/16 v6, -0x1

    cmp-long v1, v18, v6

    if-eqz v1, :cond_90

    cmp-long v1, v20, v6

    if-nez v1, :cond_7c

    goto :goto_90

    :cond_7c
    cmp-long v1, v3, v20

    const-wide/32 v6, 0xea60

    if-lez v1, :cond_86

    add-long v6, v6, v22

    goto :goto_94

    :cond_86
    cmp-long v1, v3, v18

    if-lez v1, :cond_8d

    add-long v6, v6, v20

    goto :goto_94

    :cond_8d
    add-long v6, v6, v18

    goto :goto_94

    :cond_90
    :goto_90
    const-wide/32 v6, 0x2932e00

    add-long/2addr v6, v3

    .line 396
    :goto_94
    new-instance v1, Landroid/content/Intent;

    const-string v3, "lineageos.platform.intent.action.UPDATE_TWILIGHT_STATE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    iget-object v3, v0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/lineage/display/TwilightTracker;

    invoke-static {v3}, Lcom/android/server/lineage/display/TwilightTracker;->-$$Nest$fgetmContext(Lcom/android/server/lineage/display/TwilightTracker;)Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x4000000

    invoke-static {v3, v2, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 399
    iget-object v2, v0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/lineage/display/TwilightTracker;

    invoke-static {v2}, Lcom/android/server/lineage/display/TwilightTracker;->-$$Nest$fgetmAlarmManager(Lcom/android/server/lineage/display/TwilightTracker;)Landroid/app/AlarmManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 400
    iget-object v0, v0, Lcom/android/server/lineage/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/lineage/display/TwilightTracker;

    invoke-static {v0}, Lcom/android/server/lineage/display/TwilightTracker;->-$$Nest$fgetmAlarmManager(Lcom/android/server/lineage/display/TwilightTracker;)Landroid/app/AlarmManager;

    move-result-object v0

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method
