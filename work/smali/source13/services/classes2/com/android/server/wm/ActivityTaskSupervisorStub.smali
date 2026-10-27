.class public Lcom/android/server/wm/ActivityTaskSupervisorStub;
.super Ljava/lang/Object;
.source "ActivityTaskSupervisorStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;
    }
.end annotation


# static fields
.field public static final MIUI_APP_LOCK_REQUEST_CODE:I = -0x3e9


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get()Lcom/android/server/wm/ActivityTaskSupervisorStub;
    .registers 1

    .line 16
    const-class v0, Lcom/android/server/wm/ActivityTaskSupervisorStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskSupervisorStub;

    return-object v0
.end method


# virtual methods
.method acquireLaunchWakelock()V
    .registers 1

    .line 25
    return-void
.end method

.method activityIdle(Landroid/content/pm/ActivityInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 29
    return-void
.end method

.method init(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "atms"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 19
    return-void
.end method

.method isAppLockActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method keyguardGoingAway(I)V
    .registers 2
    .param p1, "flags"    # I

    .line 27
    return-void
.end method

.method public noteOperationLocked(IILjava/lang/String;Landroid/os/Handler;Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;)I
    .registers 7
    .param p1, "appOp"    # I
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "checker"    # Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method startActivityFromRecentsFlag(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 32
    return-void
.end method
