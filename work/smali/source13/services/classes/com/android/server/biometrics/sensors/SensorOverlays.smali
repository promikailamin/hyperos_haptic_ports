.class public final Lcom/android/server/biometrics/sensors/SensorOverlays;
.super Ljava/lang/Object;
.source "SensorOverlays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/SensorOverlays$OverlayControllerConsumer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SensorOverlays"


# instance fields
.field private final mSidefpsController:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Landroid/hardware/fingerprint/ISidefpsController;",
            ">;"
        }
    .end annotation
.end field

.field private final mUdfpsOverlayController:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Landroid/hardware/fingerprint/IUdfpsOverlayController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/fingerprint/IUdfpsOverlayController;Landroid/hardware/fingerprint/ISidefpsController;)V
    .registers 4
    .param p1, "udfpsOverlayController"    # Landroid/hardware/fingerprint/IUdfpsOverlayController;
    .param p2, "sidefpsController"    # Landroid/hardware/fingerprint/ISidefpsController;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    .line 57
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mSidefpsController:Ljava/util/Optional;

    .line 58
    return-void
.end method


# virtual methods
.method public hide(I)V
    .registers 5
    .param p1, "sensorId"    # I

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mSidefpsController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-string v1, "SensorOverlays"

    if-eqz v0, :cond_1c

    .line 103
    :try_start_a
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mSidefpsController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/ISidefpsController;

    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/ISidefpsController;->hide(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 106
    goto :goto_1c

    .line 104
    :catch_16
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception when hiding the side-fps overlay"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 111
    :try_start_24
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->hideUdfpsOverlay(I)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2f} :catch_30

    .line 114
    goto :goto_36

    .line 112
    :catch_30
    move-exception v0

    .line 113
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception when hiding the UDFPS overlay"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_36
    :goto_36
    return-void
.end method

.method public ifUdfps(Lcom/android/server/biometrics/sensors/SensorOverlays$OverlayControllerConsumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/biometrics/sensors/SensorOverlays$OverlayControllerConsumer<",
            "Landroid/hardware/fingerprint/IUdfpsOverlayController;",
            ">;)V"
        }
    .end annotation

    .line 123
    .local p1, "consumer":Lcom/android/server/biometrics/sensors/SensorOverlays$OverlayControllerConsumer;, "Lcom/android/server/biometrics/sensors/SensorOverlays$OverlayControllerConsumer<Landroid/hardware/fingerprint/IUdfpsOverlayController;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 125
    :try_start_8
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-interface {p1, v0}, Lcom/android/server/biometrics/sensors/SensorOverlays$OverlayControllerConsumer;->accept(Ljava/lang/Object;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_13} :catch_14

    .line 128
    goto :goto_1c

    .line 126
    :catch_14
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SensorOverlays"

    const-string v2, "Remote exception using overlay controller"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-void
.end method

.method public show(IILcom/android/server/biometrics/sensors/AcquisitionClient;)V
    .registers 12
    .param p1, "sensorId"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/android/server/biometrics/sensors/AcquisitionClient<",
            "*>;)V"
        }
    .end annotation

    .line 69
    .local p3, "client":Lcom/android/server/biometrics/sensors/AcquisitionClient;, "Lcom/android/server/biometrics/sensors/AcquisitionClient<*>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mSidefpsController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-string v1, "SensorOverlays"

    if-eqz v0, :cond_1c

    .line 71
    :try_start_a
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mSidefpsController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/ISidefpsController;

    invoke-interface {v0, p1, p2}, Landroid/hardware/fingerprint/ISidefpsController;->show(II)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 74
    goto :goto_1c

    .line 72
    :catch_16
    move-exception v0

    .line 73
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception when showing the side-fps overlay"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 78
    new-instance v7, Lcom/android/server/biometrics/sensors/SensorOverlays$1;

    invoke-direct {v7, p0, p3}, Lcom/android/server/biometrics/sensors/SensorOverlays$1;-><init>(Lcom/android/server/biometrics/sensors/SensorOverlays;Lcom/android/server/biometrics/sensors/AcquisitionClient;)V

    .line 87
    .local v7, "callback":Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;
    :try_start_29
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/hardware/fingerprint/IUdfpsOverlayController;

    .line 88
    invoke-virtual {p3}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->getRequestId()J

    move-result-wide v3

    .line 87
    move v5, p1

    move v6, p2

    invoke-interface/range {v2 .. v7}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->showUdfpsOverlay(JIILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_3b} :catch_3c

    .line 91
    goto :goto_42

    .line 89
    :catch_3c
    move-exception v0

    .line 90
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception when showing the UDFPS overlay"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v7    # "callback":Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;
    :cond_42
    :goto_42
    return-void
.end method
