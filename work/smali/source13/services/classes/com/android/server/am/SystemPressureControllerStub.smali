.class public Lcom/android/server/am/SystemPressureControllerStub;
.super Ljava/lang/Object;
.source "SystemPressureControllerStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/SystemPressureControllerStub;
    .registers 1

    .line 10
    const-class v0, Lcom/android/server/am/SystemPressureControllerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/SystemPressureControllerStub;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "opti"    # I

    .line 17
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 13
    return-void
.end method

.method public isAudioOrGPSApp(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public isCtsModeEnable()Z
    .registers 2

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public onSystemReady()V
    .registers 1

    .line 15
    return-void
.end method

.method public performCompaction(Ljava/lang/String;I)V
    .registers 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .line 27
    return-void
.end method

.method public reclaimPage()V
    .registers 1

    .line 23
    return-void
.end method

.method public reclaimPage(I)V
    .registers 2
    .param p1, "reclaimSizeMB"    # I

    .line 21
    return-void
.end method

.method public switchSPTMReclaim(Z)V
    .registers 2
    .param p1, "isEnable"    # Z

    .line 25
    return-void
.end method

.method public triggerProcessClean()V
    .registers 1

    .line 19
    return-void
.end method
