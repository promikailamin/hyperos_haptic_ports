.class public interface abstract Lcom/android/server/wm/AppResurrectionServiceStub;
.super Ljava/lang/Object;
.source "AppResurrectionServiceStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/wm/AppResurrectionServiceStub;
    .registers 1

    .line 16
    const-class v0, Lcom/android/server/wm/AppResurrectionServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppResurrectionServiceStub;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 63
    return-void
.end method

.method public getActivityIndex(Ljava/lang/String;)I
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getAllowChildCount(Ljava/lang/String;)I
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 57
    const/4 v0, -0x1

    return v0
.end method

.method public getSplashScreenTheme(Ljava/lang/String;IZZZZ)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resolvedTheme"    # I
    .param p3, "newTask"    # Z
    .param p4, "taskSwitch"    # Z
    .param p5, "processRunning"    # Z
    .param p6, "startActivity"    # Z

    .line 45
    const/4 v0, -0x1

    return v0
.end method

.method public getStartingWindowResolvedTheme(Ljava/lang/String;ZZZZ)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newTask"    # Z
    .param p3, "taskSwitch"    # Z
    .param p4, "processRunning"    # Z
    .param p5, "startActivity"    # Z

    .line 34
    const/4 v0, -0x1

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    return-void
.end method

.method public isActivityTag(Ljava/lang/String;)Z
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public isRebootResurrectionEnable(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public isRestoreTask(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public isResurrectionEnable(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public isResurrectionEnable(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public isSaveTask(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public keepTaskInRecent(Lcom/android/server/wm/Task;)Z
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public notifyWindowsDrawn(JLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "windowsDrawnDelay"    # J
    .param p3, "lastLaunchedActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "curTransitionActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p5, "curComponent"    # Landroid/content/ComponentName;

    .line 60
    return-void
.end method

.method public saveActivityToXml(Lcom/android/server/wm/ActivityRecord;Landroid/util/TypedXmlSerializer;I)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "out"    # Landroid/util/TypedXmlSerializer;
    .param p3, "index"    # I

    .line 71
    return-void
.end method

.method public updateStartingWindowResolvedTheme(Ljava/lang/String;IZZZZ)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resolvedTheme"    # I
    .param p3, "newTask"    # Z
    .param p4, "taskSwitch"    # Z
    .param p5, "processRunning"    # Z
    .param p6, "startActivity"    # Z

    .line 38
    const/4 v0, 0x0

    return v0
.end method
