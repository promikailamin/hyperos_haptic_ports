.class Lmiui/stepcounter/StepProvider$Injector;
.super Ljava/lang/Object;
.source "StepProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/stepcounter/StepProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# static fields
.field private static final blacklist GET_LATEST_DATA:I = 0x2

.field private static final blacklist HAVE_STEP_SENSOR:I = 0x1

.field public static final blacklist SERVICE_NAME:Ljava/lang/String; = "miui_step_counter_service"


# instance fields
.field private blacklist mService:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetLatestData(Lmiui/stepcounter/StepProvider$Injector;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/stepcounter/StepProvider$Injector;->getLatestData(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhaveStepSensor(Lmiui/stepcounter/StepProvider$Injector;)Z
    .registers 1

    invoke-direct {p0}, Lmiui/stepcounter/StepProvider$Injector;->haveStepSensor()Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    const-string v0, "miui_step_counter_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lmiui/stepcounter/StepProvider$Injector;->mService:Landroid/os/IBinder;

    .line 458
    return-void
.end method

.method private blacklist getLatestData(Z)V
    .registers 7
    .param p1, "force"    # Z

    .line 480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 481
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 482
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "miui_step_counter_service"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 485
    :try_start_10
    iget-object v2, p0, Lmiui/stepcounter/StepProvider$Injector;->mService:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_17} :catch_20
    .catchall {:try_start_10 .. :try_end_17} :catchall_1e

    .line 489
    :goto_17
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 490
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 491
    goto :goto_25

    .line 489
    :catchall_1e
    move-exception v2

    goto :goto_26

    .line 486
    :catch_20
    move-exception v2

    .line 487
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_21
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_1e

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_17

    .line 492
    :goto_25
    return-void

    .line 489
    :goto_26
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 490
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 491
    throw v2
.end method

.method private blacklist haveStepSensor()Z
    .registers 6

    .line 461
    iget-object v0, p0, Lmiui/stepcounter/StepProvider$Injector;->mService:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    .line 462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 463
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 464
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "miui_step_counter_service"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 466
    :try_start_12
    iget-object v3, p0, Lmiui/stepcounter/StepProvider$Injector;->mService:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 467
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1c} :catch_29
    .catchall {:try_start_12 .. :try_end_1c} :catchall_27

    if-eqz v3, :cond_1f

    move v1, v4

    .line 468
    .local v1, "isHave":Z
    :cond_1f
    nop

    .line 472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 473
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 468
    return v1

    .line 472
    .end local v1    # "isHave":Z
    :catchall_27
    move-exception v1

    goto :goto_34

    .line 469
    :catch_29
    move-exception v3

    .line 470
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2a
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_27

    .line 472
    .end local v3    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 473
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 474
    goto :goto_3b

    .line 472
    :goto_34
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 473
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 474
    throw v1

    .line 476
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    :cond_3b
    :goto_3b
    return v1
.end method
