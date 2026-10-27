.class public Lcom/android/server/lights/LightsService$VintfHalCache;
.super Ljava/lang/Object;
.source "LightsService.java"

# interfaces
.implements Ljava/util/function/Supplier;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mInstance:Landroid/hardware/light/ILights;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 544
    iput-object v0, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Landroid/hardware/light/ILights;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/lights/LightsService-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$VintfHalCache;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized binderDied()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 566
    :try_start_2
    iput-object v0, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Landroid/hardware/light/ILights;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 567
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public declared-synchronized get()Landroid/hardware/light/ILights;
    .registers 4

    monitor-enter p0

    .line 549
    :try_start_1
    iget-object v0, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Landroid/hardware/light/ILights;

    if-nez v0, :cond_47

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/light/ILights;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 550
    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 553
    invoke-static {v0}, Landroid/hardware/light/ILights$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/light/ILights;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Landroid/hardware/light/ILights;
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2d

    const/4 v1, 0x0

    .line 555
    :try_start_29
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2c} :catch_2f
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_47

    :catchall_2d
    move-exception v0

    goto :goto_4b

    .line 557
    :catch_2f
    :try_start_2f
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to register DeathRecipient for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Landroid/hardware/light/ILights;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_47
    :goto_47
    iget-object v0, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Landroid/hardware/light/ILights;
    :try_end_49
    .catchall {:try_start_2f .. :try_end_49} :catchall_2d

    monitor-exit p0

    return-object v0

    :goto_4b
    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_2d

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 543
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService$VintfHalCache;->get()Landroid/hardware/light/ILights;

    move-result-object p0

    return-object p0
.end method
