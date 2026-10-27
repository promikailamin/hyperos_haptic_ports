.class public Lcom/miui/server/xspace/XSpaceManagerServiceStub;
.super Ljava/lang/Object;
.source "XSpaceManagerServiceStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/server/xspace/XSpaceManagerServiceStub;
    .registers 1

    .line 20
    const-class v0, Lcom/miui/server/xspace/XSpaceManagerServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/server/xspace/XSpaceManagerServiceStub;

    return-object v0
.end method


# virtual methods
.method public checkAndGetXSpaceUserId(II)I
    .registers 3
    .param p1, "flags"    # I
    .param p2, "defUserId"    # I

    .line 54
    return p2
.end method

.method public checkXSpaceControl(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;ZIILjava/lang/String;ILcom/android/server/wm/SafeActivityOptions;)Landroid/content/Intent;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "fromActivity"    # Z
    .param p5, "requestCode"    # I
    .param p6, "userId"    # I
    .param p7, "callingPackage"    # Ljava/lang/String;
    .param p8, "callingUserId"    # I
    .param p9, "safeActivityOptions"    # Lcom/android/server/wm/SafeActivityOptions;

    .line 64
    return-object p3
.end method

.method public computeGids(I[ILjava/lang/String;)[I
    .registers 4
    .param p1, "userId"    # I
    .param p2, "gids"    # [I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 74
    return-object p2
.end method

.method public getDefaultUserId()I
    .registers 2

    .line 32
    const/4 v0, -0x1

    return v0
.end method

.method public getXSpaceUserId()I
    .registers 2

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public handleWindowManagerAndUserLru(Landroid/content/Context;IIILcom/android/server/wm/WindowManagerService;[I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "userIdOrig"    # I
    .param p4, "oldUserId"    # I
    .param p5, "mWindowManager"    # Lcom/android/server/wm/WindowManagerService;
    .param p6, "mCurrentProfileIds"    # [I

    .line 46
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    return-void
.end method

.method public isXSpaceActive()Z
    .registers 2

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public needCheckUser(Landroid/content/pm/ProviderInfo;Ljava/lang/String;IZ)Z
    .registers 6
    .param p1, "cpi"    # Landroid/content/pm/ProviderInfo;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "checkUser"    # Z

    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public resolveXSpaceIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ProfilerInfo;Ljava/lang/String;IILjava/lang/String;I)Landroid/content/pm/ActivityInfo;
    .registers 10
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "stack"    # Lcom/android/server/wm/ActivityTaskSupervisor;
    .param p4, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "startFlags"    # I
    .param p7, "userId"    # I
    .param p8, "callingPackage"    # Ljava/lang/String;
    .param p9, "callingUserId"    # I

    .line 70
    return-object p1
.end method

.method public shouldCrossXSpace(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public shouldInstallInXSpace(Landroid/os/UserHandle;I)Z
    .registers 4
    .param p1, "installUser"    # Landroid/os/UserHandle;
    .param p2, "userId"    # I

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public showSwitchingDialog(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;IILandroid/os/Handler;I)Z
    .registers 8
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "currentUserId"    # I
    .param p4, "targetUserId"    # I
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userSwitchUiMessage"    # I

    .line 50
    const/4 v0, 0x0

    return v0
.end method
