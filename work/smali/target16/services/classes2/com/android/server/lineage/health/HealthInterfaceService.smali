.class public Lcom/android/server/lineage/health/HealthInterfaceService;
.super Lcom/android/server/SystemService;
.source "HealthInterfaceService.java"


# instance fields
.field public mCCC:Lcom/android/server/lineage/health/ChargingControlController;

.field public final mContext:Landroid/content/Context;

.field public mFCC:Lcom/android/server/lineage/health/FastChargeController;

.field public final mFeatures:Ljava/util/List;

.field public final mHandler:Landroid/os/Handler;

.field public final mHandlerThread:Lcom/android/server/ServiceThread;

.field public final mService:Landroid/os/IBinder;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCCC(Lcom/android/server/lineage/health/HealthInterfaceService;)Lcom/android/server/lineage/health/ChargingControlController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lineage/health/HealthInterfaceService;->mCCC:Lcom/android/server/lineage/health/ChargingControlController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/lineage/health/HealthInterfaceService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lineage/health/HealthInterfaceService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFCC(Lcom/android/server/lineage/health/HealthInterfaceService;)Lcom/android/server/lineage/health/FastChargeController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lineage/health/HealthInterfaceService;->mFCC:Lcom/android/server/lineage/health/FastChargeController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFeatures(Lcom/android/server/lineage/health/HealthInterfaceService;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lineage/health/HealthInterfaceService;->mFeatures:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/lineage/health/HealthInterfaceService;->mFeatures:Ljava/util/List;

    .line 79
    new-instance v0, Lcom/android/server/lineage/health/HealthInterfaceService$1;

    invoke-direct {v0, p0}, Lcom/android/server/lineage/health/HealthInterfaceService$1;-><init>(Lcom/android/server/lineage/health/HealthInterfaceService;)V

    iput-object v0, p0, Lcom/android/server/lineage/health/HealthInterfaceService;->mService:Landroid/os/IBinder;

    .line 43
    iput-object p1, p0, Lcom/android/server/lineage/health/HealthInterfaceService;->mContext:Landroid/content/Context;

    .line 45
    new-instance p1, Lcom/android/server/ServiceThread;

    const-string v0, "LineageHealth"

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object p1, p0, Lcom/android/server/lineage/health/HealthInterfaceService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 46
    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->start()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/lineage/health/HealthInterfaceService;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_5

    goto :goto_1b

    .line 73
    :cond_5
    iget-object p0, p0, Lcom/android/server/lineage/health/HealthInterfaceService;->mFeatures:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/lineage/health/LineageHealthFeature;

    .line 74
    invoke-virtual {p1}, Lcom/android/server/lineage/LineageBaseFeature;->start()V

    goto :goto_b

    :cond_1b
    :goto_1b
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 52
    new-instance v0, Lcom/android/server/lineage/health/ChargingControlController;

    iget-object v1, p0, Lcom/android/server/lineage/health/HealthInterfaceService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/lineage/health/HealthInterfaceService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/lineage/health/ChargingControlController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/lineage/health/HealthInterfaceService;->mCCC:Lcom/android/server/lineage/health/ChargingControlController;

    .line 53
    invoke-virtual {v0}, Lcom/android/server/lineage/health/ChargingControlController;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 54
    iget-object v0, p0, Lcom/android/server/lineage/health/HealthInterfaceService;->mFeatures:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/lineage/health/HealthInterfaceService;->mCCC:Lcom/android/server/lineage/health/ChargingControlController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_18
    new-instance v0, Lcom/android/server/lineage/health/FastChargeController;

    iget-object v1, p0, Lcom/android/server/lineage/health/HealthInterfaceService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/lineage/health/HealthInterfaceService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/lineage/health/FastChargeController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/lineage/health/HealthInterfaceService;->mFCC:Lcom/android/server/lineage/health/FastChargeController;

    .line 57
    invoke-virtual {v0}, Lcom/android/server/lineage/health/FastChargeController;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 58
    iget-object v0, p0, Lcom/android/server/lineage/health/HealthInterfaceService;->mFeatures:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/lineage/health/HealthInterfaceService;->mFCC:Lcom/android/server/lineage/health/FastChargeController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_30
    iget-object v0, p0, Lcom/android/server/lineage/health/HealthInterfaceService;->mFeatures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 62
    const-string v0, "lineagehealth"

    iget-object v1, p0, Lcom/android/server/lineage/health/HealthInterfaceService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_3f
    return-void
.end method
