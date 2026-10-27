.class Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;
.super Ljava/lang/Object;
.source "RebootEscrowProviderHalImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRebootEscrow()Landroid/hardware/rebootescrow/IRebootEscrow;
    .registers 4

    .line 44
    :try_start_0
    const-string v0, "android.hardware.rebootescrow.IRebootEscrow/default"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/rebootescrow/IRebootEscrow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/rebootescrow/IRebootEscrow;

    move-result-object v0
    :try_end_a
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 46
    :catch_b
    move-exception v0

    .line 47
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "RebootEscrowProviderHal"

    const-string v2, "Device doesn\'t implement RebootEscrow HAL"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    const/4 v0, 0x0

    return-object v0
.end method
