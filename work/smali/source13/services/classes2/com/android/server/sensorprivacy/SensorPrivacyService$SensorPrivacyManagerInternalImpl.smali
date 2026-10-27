.class Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;
.super Landroid/hardware/SensorPrivacyManagerInternal;
.source "SensorPrivacyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sensorprivacy/SensorPrivacyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorPrivacyManagerInternalImpl"
.end annotation


# instance fields
.field private mAllUserListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArraySet<",
            "Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArraySet<",
            "Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;


# direct methods
.method static bridge synthetic -$$Nest$mdispatch(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;IIZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->dispatch(IIZ)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;)V
    .registers 2

    .line 1425
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-direct {p0}, Landroid/hardware/SensorPrivacyManagerInternal;-><init>()V

    .line 1427
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mListeners:Landroid/util/ArrayMap;

    .line 1429
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mAllUserListeners:Landroid/util/ArrayMap;

    .line 1432
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;)V

    return-void
.end method

.method private dispatch(IIZ)V
    .registers 12
    .param p1, "userId"    # I
    .param p2, "sensor"    # I
    .param p3, "enabled"    # Z

    .line 1435
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1436
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mAllUserListeners:Landroid/util/ArrayMap;

    .line 1437
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1438
    .local v1, "allUserSensorListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;>;"
    if-eqz v1, :cond_2f

    .line 1439
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_2f

    .line 1440
    nop

    .line 1441
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;

    .line 1442
    .local v3, "listener":Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, p1, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;IZ)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1439
    nop

    .end local v3    # "listener":Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1447
    .end local v2    # "i":I
    :cond_2f
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mListeners:Landroid/util/ArrayMap;

    .line 1448
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 1449
    .local v2, "userSensorListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/util/ArraySet<Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;>;>;"
    if-eqz v2, :cond_67

    .line 1450
    nop

    .line 1451
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 1452
    .local v3, "sensorListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;>;"
    if-eqz v3, :cond_67

    .line 1453
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4b
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_67

    .line 1454
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;

    .line 1455
    .local v5, "listener":Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl$$ExternalSyntheticLambda1;

    invoke-direct {v7, v5, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;Z)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1453
    nop

    .end local v5    # "listener":Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    .line 1460
    .end local v1    # "allUserSensorListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;>;"
    .end local v2    # "userSensorListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/util/ArraySet<Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;>;>;"
    .end local v3    # "sensorListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;>;"
    .end local v4    # "i":I
    :cond_67
    monitor-exit v0

    .line 1461
    return-void

    .line 1460
    :catchall_69
    move-exception v1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_3 .. :try_end_6b} :catchall_69

    throw v1
.end method

.method static synthetic lambda$dispatch$0(Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;IZ)V
    .registers 3
    .param p0, "listener"    # Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z

    .line 1443
    invoke-interface {p0, p1, p2}, Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;->onSensorPrivacyChanged(IZ)V

    return-void
.end method

.method static synthetic lambda$dispatch$1(Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;Z)V
    .registers 2
    .param p0, "listener"    # Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;
    .param p1, "enabled"    # Z

    .line 1456
    invoke-interface {p0, p1}, Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;->onSensorPrivacyChanged(Z)V

    return-void
.end method


# virtual methods
.method public addSensorPrivacyListener(IILandroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "sensor"    # I
    .param p3, "listener"    # Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;

    .line 1473
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1474
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mListeners:Landroid/util/ArrayMap;

    .line 1475
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 1476
    .local v1, "userSensorListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/util/ArraySet<Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;>;>;"
    if-nez v1, :cond_20

    .line 1477
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v2

    .line 1478
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mListeners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    :cond_20
    nop

    .line 1482
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1483
    .local v2, "sensorListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;>;"
    if-nez v2, :cond_3a

    .line 1484
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v3

    .line 1485
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    :cond_3a
    invoke-virtual {v2, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1489
    nop

    .end local v1    # "userSensorListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/util/ArraySet<Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;>;>;"
    .end local v2    # "sensorListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;>;"
    monitor-exit v0

    .line 1490
    return-void

    .line 1489
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public addSensorPrivacyListenerForAllUsers(ILandroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;)V
    .registers 7
    .param p1, "sensor"    # I
    .param p2, "listener"    # Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;

    .line 1495
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1496
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mAllUserListeners:Landroid/util/ArrayMap;

    .line 1497
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1498
    .local v1, "sensorListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;>;"
    if-nez v1, :cond_20

    .line 1499
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 1500
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mAllUserListeners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1503
    :cond_20
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1504
    nop

    .end local v1    # "sensorListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;>;"
    monitor-exit v0

    .line 1505
    return-void

    .line 1504
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public isSensorPrivacyEnabled(II)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "sensor"    # I

    .line 1465
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmSensorPrivacyServiceImpl(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object v0

    .line 1466
    const/4 v1, 0x1

    invoke-static {v0, p1, v1, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->-$$Nest$misToggleSensorPrivacyEnabledInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;III)Z

    move-result v0

    .line 1465
    return v0
.end method

.method public setPhysicalToggleSensorPrivacy(IIZ)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "sensor"    # I
    .param p3, "enable"    # Z

    .line 1509
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmSensorPrivacyServiceImpl(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object v0

    .line 1514
    .local v0, "sps":Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;
    const/4 v1, -0x2

    if-ne p1, v1, :cond_10

    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result v1

    goto :goto_11

    :cond_10
    move v1, p1

    :goto_11
    move p1, v1

    .line 1515
    const/16 v1, -0x2710

    if-ne p1, v1, :cond_22

    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    move v3, v1

    goto :goto_23

    :cond_22
    move v3, p1

    .line 1517
    .local v3, "realUserId":I
    :goto_23
    const/4 v2, 0x2

    const/4 v4, 0x5

    move-object v1, v0

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->-$$Nest$msetToggleSensorPrivacyUnchecked(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIIIZ)V

    .line 1520
    if-nez p3, :cond_36

    .line 1521
    const/4 v5, 0x1

    const/4 v7, 0x5

    move-object v4, v0

    move v6, v3

    move v8, p2

    move v9, p3

    invoke-static/range {v4 .. v9}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->-$$Nest$msetToggleSensorPrivacyUnchecked(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIIIZ)V

    .line 1524
    :cond_36
    return-void
.end method
