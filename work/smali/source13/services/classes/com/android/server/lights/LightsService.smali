.class public Lcom/android/server/lights/LightsService;
.super Lcom/android/server/SystemService;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/LightsService$VintfHalCache;,
        Lcom/android/server/lights/LightsService$LightImpl;,
        Lcom/android/server/lights/LightsService$LightsManagerBinderService;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "LightsService"


# instance fields
.field private mH:Landroid/os/Handler;

.field final mLightsById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/lights/LightsService$LightImpl;",
            ">;"
        }
    .end annotation
.end field

.field final mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

.field final mManagerService:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

.field private final mService:Lcom/android/server/lights/LightsManager;

.field private final mVintfLights:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/light/ILights;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmH(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVintfLights(Lcom/android/server/lights/LightsService;)Ljava/util/function/Supplier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetVrDisplayMode(Lcom/android/server/lights/LightsService;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->getVrDisplayMode()I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/lights/LightsService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 477
    new-instance v0, Lcom/android/server/lights/LightsService$VintfHalCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/lights/LightsService$VintfHalCache;-><init>(Lcom/android/server/lights/LightsService$VintfHalCache-IA;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/lights/LightsService;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/Looper;)V

    .line 478
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/Looper;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
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

    .line 482
    .local p2, "service":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/hardware/light/ILights;>;"
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 66
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/server/lights/LightsService$LightImpl;

    iput-object v0, p0, Lcom/android/server/lights/LightsService;->mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    .line 543
    new-instance v0, Lcom/android/server/lights/LightsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/lights/LightsService$1;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v0, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    .line 483
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    .line 484
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    move-object v0, p2

    goto :goto_28

    :cond_27
    move-object v0, v1

    :goto_28
    iput-object v0, p0, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    .line 486
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService;->populateAvailableLights(Landroid/content/Context;)V

    .line 487
    new-instance v0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;

    invoke-direct {v0, p0, v1}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;-><init>(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$LightsManagerBinderService-IA;)V

    iput-object v0, p0, Lcom/android/server/lights/LightsService;->mManagerService:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

    .line 488
    return-void
.end method

.method private getVrDisplayMode()I
    .registers 5

    .line 536
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 537
    .local v0, "currentUser":I
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vr_display_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method private populateAvailableLights(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 491
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    if-eqz v0, :cond_8

    .line 492
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService;->populateAvailableLightsFromAidl(Landroid/content/Context;)V

    goto :goto_b

    .line 494
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService;->populateAvailableLightsFromHidl(Landroid/content/Context;)V

    .line 497
    :goto_b
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_13
    if-ltz v0, :cond_2f

    .line 498
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 499
    .local v1, "type":I
    if-ltz v1, :cond_2c

    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

    array-length v3, v2

    if-ge v1, v3, :cond_2c

    .line 500
    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/lights/LightsService$LightImpl;

    aput-object v3, v2, v1

    .line 497
    .end local v1    # "type":I
    :cond_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 503
    .end local v0    # "i":I
    :cond_2f
    return-void
.end method

.method private populateAvailableLightsFromAidl(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 507
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
    if-ge v2, v1, :cond_21

    aget-object v3, v0, v2

    .line 508
    .local v3, "hwLight":Landroid/hardware/light/HwLight;
    iget-object v4, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    iget v5, v3, Landroid/hardware/light/HwLight;->id:I

    new-instance v6, Lcom/android/server/lights/LightsService$LightImpl;

    invoke-direct {v6, p0, p1, v3}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;Landroid/hardware/light/HwLight;)V

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_22

    .line 507
    .end local v3    # "hwLight":Landroid/hardware/light/HwLight;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 512
    :cond_21
    goto :goto_2a

    .line 510
    :catch_22
    move-exception v0

    .line 511
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "LightsService"

    const-string v2, "Unable to get lights from HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 513
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method private populateAvailableLightsFromHidl(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 516
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

    array-length v1, v1

    if-ge v0, v1, :cond_23

    .line 517
    new-instance v1, Landroid/hardware/light/HwLight;

    invoke-direct {v1}, Landroid/hardware/light/HwLight;-><init>()V

    .line 518
    .local v1, "hwLight":Landroid/hardware/light/HwLight;
    int-to-byte v2, v0

    iput v2, v1, Landroid/hardware/light/HwLight;->id:I

    .line 519
    const/4 v2, 0x1

    iput v2, v1, Landroid/hardware/light/HwLight;->ordinal:I

    .line 520
    int-to-byte v2, v0

    iput-byte v2, v1, Landroid/hardware/light/HwLight;->type:B

    .line 521
    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    iget v3, v1, Landroid/hardware/light/HwLight;->id:I

    new-instance v4, Lcom/android/server/lights/LightsService$LightImpl;

    invoke-direct {v4, p0, p1, v1}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;Landroid/hardware/light/HwLight;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 516
    .end local v1    # "hwLight":Landroid/hardware/light/HwLight;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 523
    .end local v0    # "i":I
    :cond_23
    return-void
.end method

.method static native setLight_native(IIIIII)V
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 2
    .param p1, "phase"    # I

    .line 533
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 527
    const-class v0, Lcom/android/server/lights/LightsManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 528
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mManagerService:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

    const-string/jumbo v1, "lights"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/lights/LightsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 529
    return-void
.end method
