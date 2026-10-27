.class Lcom/android/server/lights/LightsService$VintfHalCache;
.super Ljava/lang/Object;
.source "LightsService.java"

# interfaces
.implements Ljava/util/function/Supplier;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VintfHalCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Landroid/hardware/light/ILights;",
        ">;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# instance fields
.field private mInstance:Landroid/hardware/light/ILights;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Landroid/hardware/light/ILights;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/LightsService$VintfHalCache-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/lights/LightsService$VintfHalCache;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized binderDied()V
    .registers 2

    monitor-enter p0

    .line 577
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Landroid/hardware/light/ILights;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 578
    monitor-exit p0

    return-void

    .line 576
    .end local p0    # "this":Lcom/android/server/lights/LightsService$VintfHalCache;
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get()Landroid/hardware/light/ILights;
    .registers 6

    monitor-enter p0

    .line 560
    :try_start_1
    iget-object v0, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Landroid/hardware/light/ILights;

    if-nez v0, :cond_4a

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/light/ILights;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 561
    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    .line 563
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_4a

    .line 564
    invoke-static {v0}, Landroid/hardware/light/ILights$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/light/ILights;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Landroid/hardware/light/ILights;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_4e

    .line 566
    const/4 v1, 0x0

    :try_start_2b
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2e} :catch_2f
    .catchall {:try_start_2b .. :try_end_2e} :catchall_4e

    .line 569
    goto :goto_4a

    .line 567
    .end local p0    # "this":Lcom/android/server/lights/LightsService$VintfHalCache;
    :catch_2f
    move-exception v1

    .line 568
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_30
    const-string v2, "LightsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to register DeathRecipient for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Landroid/hardware/light/ILights;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Landroid/hardware/light/ILights;
    :try_end_4c
    .catchall {:try_start_30 .. :try_end_4c} :catchall_4e

    monitor-exit p0

    return-object v0

    .line 559
    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 554
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService$VintfHalCache;->get()Landroid/hardware/light/ILights;

    move-result-object v0

    return-object v0
.end method
