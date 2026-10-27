.class public Lcom/android/server/wm/ActivityStarterStub;
.super Ljava/lang/Object;
.source "ActivityStarterStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/server/wm/ActivityStarterStub;
    .registers 1

    .line 19
    const-class v0, Lcom/android/server/wm/ActivityStarterStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityStarterStub;

    return-object v0
.end method


# virtual methods
.method activityIdle(Landroid/content/pm/ActivityInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 59
    return-void
.end method

.method carlinkJudge(Landroid/content/Context;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/RootWindowContainer;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "targetRootTask"    # Lcom/android/server/wm/Task;
    .param p3, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "rwc"    # Lcom/android/server/wm/RootWindowContainer;

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public checkIntentActivityForAppLock(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p1, "intentActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "startActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method checkParentalStartActivityPermission(Lcom/android/server/wm/ActivityStarter$Request;)Z
    .registers 3
    .param p1, "request"    # Lcom/android/server/wm/ActivityStarter$Request;

    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method checkRunningCompatibility(Landroid/app/IApplicationThread;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;ILjava/lang/String;)Z
    .registers 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "userId"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method checkStartActivityByFreeForm(Landroid/app/IApplicationThread;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;ZILjava/lang/String;Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/SafeActivityOptions;
    .registers 9
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "ignoreTargetSecurity"    # Z
    .param p6, "callingUid"    # I
    .param p7, "callingPackage"    # Ljava/lang/String;
    .param p8, "bOptions"    # Lcom/android/server/wm/SafeActivityOptions;

    .line 78
    return-object p8
.end method

.method checkStartActivityPermission(Landroid/app/IApplicationThread;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;ZIZIILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;
    .registers 14
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "fromActivity"    # Z
    .param p6, "requestCode"    # I
    .param p7, "ignoreTargetSecurity"    # Z
    .param p8, "userId"    # I
    .param p9, "callingUid"    # I
    .param p10, "callingPackage"    # Ljava/lang/String;
    .param p11, "bOptions"    # Landroid/os/Bundle;
    .param p12, "reason"    # Ljava/lang/String;
    .param p13, "resultTo"    # Landroid/os/IBinder;

    .line 89
    return-object p3
.end method

.method destroyActivity(Landroid/content/pm/ActivityInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 61
    return-void
.end method

.method public finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .line 93
    return-object p1
.end method

.method public finishLaunchedFromActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public getRebootReason(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method isAllowedStartActivity(IILjava/lang/String;)Z
    .registers 5
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method isAllowedStartActivity(Landroid/content/Intent;IILjava/lang/String;IILandroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityStarter$Request;)Z
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "realCallingUid"    # I
    .param p6, "realCallingPid"    # I
    .param p7, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p8, "request"    # Lcom/android/server/wm/ActivityStarter$Request;

    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public isAppLockActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public isCarWithDisplay(Lcom/android/server/wm/DisplayContent;)Z
    .registers 3
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public isCarWithDisplay(Lcom/android/server/wm/RootWindowContainer;Landroid/app/ActivityOptions;)Z
    .registers 4
    .param p1, "rootWindowContainer"    # Lcom/android/server/wm/RootWindowContainer;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public logStartActivityError(ILandroid/content/Intent;)V
    .registers 3
    .param p1, "err"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .line 115
    return-void
.end method

.method recordNewIntent(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 131
    return-void
.end method

.method requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 47
    return-object p1
.end method

.method requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/SafeActivityOptions;Landroid/app/IApplicationThread;)Landroid/content/Intent;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "options"    # Lcom/android/server/wm/SafeActivityOptions;
    .param p4, "caller"    # Landroid/app/IApplicationThread;

    .line 52
    return-object p1
.end method

.method resolveCheckIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;
    .registers 5
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p4, "userId"    # I

    .line 68
    return-object p1
.end method

.method resolveSplashIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;
    .registers 5
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p4, "userId"    # I

    .line 56
    return-object p1
.end method

.method public shouldRebootReasonCheckNull()Z
    .registers 2

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public startActivityUncheckedBefore(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 98
    return-void
.end method

.method public triggerLaunchMode(Ljava/lang/String;I)V
    .registers 3
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 112
    return-void
.end method
