.class public Lcom/android/server/SystemServerStub;
.super Ljava/lang/Object;
.source "SystemServerStub.java"


# annotations
.annotation runtime Lcom/miui/base/annotations/MiuiStubHead;
    manifestName = "com.android.server.MiuiStubImplManifest$$"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const-class v0, Lcom/android/server/SystemServerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubRegistry;->init(Ljava/lang/Class;)V

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/server/SystemServerStub;
    .registers 1

    .line 24
    const-class v0, Lcom/android/server/SystemServerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemServerStub;

    return-object v0
.end method


# virtual methods
.method addCameraCoveredManagerService(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    return-void
.end method

.method addExtraServices(Landroid/content/Context;Z)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onlyCore"    # Z

    .line 32
    return-void
.end method

.method addMagicPointerManagerService(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p4, "inputManager"    # Lcom/android/server/input/InputManagerService;

    .line 59
    return-void
.end method

.method addMiuiPeriodicCleanerService(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 2
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 62
    return-void
.end method

.method addMiuiRestoreManagerService(Landroid/content/Context;Lcom/android/server/pm/Installer;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "installer"    # Lcom/android/server/pm/Installer;

    .line 43
    return-void
.end method

.method createLightsServices()Ljava/lang/Class;
    .registers 2

    .line 35
    const-class v0, Lcom/android/server/lights/LightsService;

    return-object v0
.end method

.method createPhoneWindowManager()Lcom/android/server/policy/PhoneWindowManager;
    .registers 2

    .line 28
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v0}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V

    return-object v0
.end method

.method public getConnectivitylibpath()Ljava/lang/String;
    .registers 2

    .line 46
    const-string v0, ""

    return-object v0
.end method

.method public getMiuilibpath()Ljava/lang/String;
    .registers 2

    .line 39
    const-string v0, ""

    return-object v0
.end method

.method magicPointerManagerServiceSystemReady()V
    .registers 1

    .line 60
    return-void
.end method

.method markBootDexopt(JJ)V
    .registers 5
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .line 56
    return-void
.end method

.method markPmsScan(JJ)V
    .registers 5
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .line 54
    return-void
.end method

.method markSystemRun(J)V
    .registers 3
    .param p1, "time"    # J

    .line 52
    return-void
.end method
