.class public Lcom/android/server/lights/LightsService;
.super Lcom/android/server/SystemService;
.source "LightsService.java"


# instance fields
.field public mH:Landroid/os/Handler;

.field public final mLightsById:Landroid/util/SparseArray;

.field public final mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

.field final mManagerService:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

.field public final mService:Lcom/android/server/lights/LightsManager;

.field public final mVintfLights:Ljava/util/function/Supplier;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmH(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLightsById(Lcom/android/server/lights/LightsService;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLightsByType(Lcom/android/server/lights/LightsService;)[Lcom/android/server/lights/LightsService$LightImpl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVintfLights(Lcom/android/server/lights/LightsService;)Ljava/util/function/Supplier;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 465
    new-instance v0, Lcom/android/server/lights/LightsService$VintfHalCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/lights/LightsService$VintfHalCache;-><init>(Lcom/android/server/lights/LightsService-IA;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/lights/LightsService;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/Looper;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/light/ILights;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 470
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x8

    .line 59
    new-array v0, v0, [Lcom/android/server/lights/LightsService$LightImpl;

    iput-object v0, p0, Lcom/android/server/lights/LightsService;->mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    .line 532
    new-instance v0, Lcom/android/server/lights/LightsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/lights/LightsService$1;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v0, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    .line 471
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    .line 472
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_25

    goto :goto_26

    :cond_25
    const/4 p2, 0x0

    :goto_26
    iput-object p2, p0, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    .line 474
    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService;->populateAvailableLights(Landroid/content/Context;)V

    .line 475
    new-instance p1, Lcom/android/server/lights/LightsService$LightsManagerBinderService;

    invoke-direct {p1, p0}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mManagerService:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

    return-void
.end method

.method public static native setLight_native(IIIIII)V
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 516
    const-class v0, Lcom/android/server/lights/LightsManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 517
    const-string v0, "lights"

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mManagerService:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final populateAvailableLights(Landroid/content/Context;)V
    .registers 6

    .line 479
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    if-eqz v0, :cond_8

    .line 480
    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService;->populateAvailableLightsFromAidl(Landroid/content/Context;)V

    goto :goto_b

    .line 482
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService;->populateAvailableLightsFromHidl(Landroid/content/Context;)V

    .line 485
    :goto_b
    iget-object p1, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_13
    if-ltz p1, :cond_2f

    .line 486
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsService$LightImpl;

    .line 487
    invoke-static {v0}, Lcom/android/server/lights/LightsService$LightImpl;->-$$Nest$fgetmHwLight(Lcom/android/server/lights/LightsService$LightImpl;)Landroid/hardware/light/HwLight;

    move-result-object v1

    iget-byte v1, v1, Landroid/hardware/light/HwLight;->type:B

    if-ltz v1, :cond_2c

    .line 488
    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

    array-length v3, v2

    if-ge v1, v3, :cond_2c

    .line 489
    aput-object v0, v2, v1

    :cond_2c
    add-int/lit8 p1, p1, -0x1

    goto :goto_13

    :cond_2f
    return-void
.end method

.method public final populateAvailableLightsFromAidl(Landroid/content/Context;)V
    .registers 10

    .line 496
    :try_start_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/light/ILights;

    invoke-interface {v0}, Landroid/hardware/light/ILights;->getLights()[Landroid/hardware/light/HwLight;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_22

    aget-object v3, v0, v2

    .line 497
    iget-object v4, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    iget v5, v3, Landroid/hardware/light/HwLight;->id:I

    new-instance v6, Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v7, 0x0

    invoke-direct {v6, p0, p1, v3, v7}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;Landroid/hardware/light/HwLight;Lcom/android/server/lights/LightsService-IA;)V

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_23

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_22
    return-void

    :catch_23
    move-exception p0

    .line 500
    const-string p1, "LightsService"

    const-string v0, "Unable to get lights from HAL"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final populateAvailableLightsFromHidl(Landroid/content/Context;)V
    .registers 8

    const/4 v0, 0x0

    .line 505
    :goto_1
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

    array-length v1, v1

    if-ge v0, v1, :cond_21

    .line 506
    new-instance v1, Landroid/hardware/light/HwLight;

    invoke-direct {v1}, Landroid/hardware/light/HwLight;-><init>()V

    int-to-byte v2, v0

    .line 507
    iput v2, v1, Landroid/hardware/light/HwLight;->id:I

    const/4 v3, 0x1

    .line 508
    iput v3, v1, Landroid/hardware/light/HwLight;->ordinal:I

    .line 509
    iput-byte v2, v1, Landroid/hardware/light/HwLight;->type:B

    .line 510
    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, v1, v5}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;Landroid/hardware/light/HwLight;Lcom/android/server/lights/LightsService-IA;)V

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    return-void
.end method
