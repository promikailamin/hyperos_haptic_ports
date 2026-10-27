.class Lcom/android/server/power/hint/HintManagerService$Injector;
.super Ljava/lang/Object;
.source "HintManagerService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createIPower()Landroid/hardware/power/IPower;
    .registers 2

    .line 436
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Landroid/hardware/power/IPower;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/default"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 437
    invoke-static {p0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 436
    invoke-static {p0}, Landroid/hardware/power/IPower$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/power/IPower;

    move-result-object p0

    return-object p0
.end method

.method public createNativeWrapper()Lcom/android/server/power/hint/HintManagerService$NativeWrapper;
    .registers 1

    .line 433
    new-instance p0, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    invoke-direct {p0}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;-><init>()V

    return-object p0
.end method

.method public getIActivityManager()Landroid/app/IActivityManager;
    .registers 1

    .line 440
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    return-object p0
.end method
