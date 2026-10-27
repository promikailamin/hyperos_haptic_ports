.class public Lcom/android/server/wm/ActivityTaskManagerServiceStub;
.super Ljava/lang/Object;
.source "ActivityTaskManagerServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityTaskManagerServiceStub$DisplayCompatPolicy;
    }
.end annotation


# static fields
.field static final DISMISS_RESTART_APP_DIALOG_UI_MSG:I = 0x3

.field static final REMOVE_RESTART_APP_NOTIFICATION_MSG:I = 0x5

.field static final SHOW_RESTART_APP_DIALOG_UI_MSG:I = 0x2

.field static final SHOW_RESTART_APP_NOTIFICATION_MSG:I = 0x4

.field static sInstance:Lcom/android/server/wm/ActivityTaskManagerServiceStub;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    .line 38
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->sInstance:Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;
    .registers 1

    .line 41
    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->sInstance:Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    return-object v0
.end method

.method public static hasDefinedAspectRatio(F)Z
    .registers 2
    .param p0, "aspectRatio"    # F

    .line 156
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isForcedResizeableDisplayCompatPolicy(I)Z
    .registers 3
    .param p0, "policy"    # I

    .line 170
    const/4 v0, 0x1

    .line 171
    .local v0, "isForceResize":Z
    const/4 v1, 0x3

    if-eq p0, v1, :cond_b

    const/4 v1, 0x1

    if-eq p0, v1, :cond_b

    const/4 v1, 0x5

    if-eq p0, v1, :cond_b

    .line 174
    const/4 v0, 0x0

    .line 176
    :cond_b
    return v0
.end method

.method public static isForcedUnresizeableDisplayCompatPolicy(I)Z
    .registers 2
    .param p0, "policy"    # I

    .line 180
    const/4 v0, 0x4

    if-eq p0, v0, :cond_9

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method


# virtual methods
.method public clearSplitTask(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 185
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 212
    return-void
.end method

.method executeShellCommand(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public exitSplitScreen(I)V
    .registers 2
    .param p1, "position"    # I

    .line 275
    return-void
.end method

.method public getAspectRatio(Ljava/lang/String;)F
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 128
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method getGlobalConfigurationForMiui(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;)Landroid/content/res/Configuration;
    .registers 4
    .param p1, "atms"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "app"    # Lcom/android/server/wm/WindowProcessController;

    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastResumedActivityInfo()Landroid/content/pm/ActivityInfo;
    .registers 2

    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method getMetaDataBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "metaDataKey"    # Ljava/lang/String;

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method getMetaDataFloat(Ljava/lang/String;Ljava/lang/String;)F
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "metaDataKey"    # Ljava/lang/String;

    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public getMiuiActivityController()Lcom/android/server/wm/MiuiActivityController;
    .registers 2

    .line 45
    const-class v0, Lcom/android/server/wm/MiuiActivityController;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MiuiActivityController;

    return-object v0
.end method

.method public getOrientation(Lcom/android/server/wm/Task;)I
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 238
    const/4 v0, -0x1

    return v0
.end method

.method public getPackageHoldOn()Ljava/lang/String;
    .registers 2

    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPolicy(Ljava/lang/String;)I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public getScaleMode(Ljava/lang/String;)I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public getSplitTaskInfo(Landroid/os/IBinder;)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleQSOnConfigureChanged(II)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "change"    # I

    .line 246
    return-void
.end method

.method public hasActivityController()Z
    .registers 2

    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method hasMetaData(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "metaDataKey"    # Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public hookGetCallingPkg(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "callingPkg"    # Ljava/lang/String;

    .line 57
    return-object p2
.end method

.method public hookStartActivity(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 53
    return-object p1
.end method

.method ignoreSpecifiedSource(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public inMiuiGameSizeCompat(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public inMultipleTaskWhiteList(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public inResizeBlackList(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public inResizeWhiteList(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method init(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/Context;)V
    .registers 3
    .param p1, "atms"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .line 48
    return-void
.end method

.method public isAppSizeCompatRestarting(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public isCameraForeground()Z
    .registers 2

    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method isGetTasksOpAllowed(Ljava/lang/String;II)Z
    .registers 5
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public isInSystemSplitScreen(Lcom/android/server/wm/WindowContainer;)Z
    .registers 3
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method needSetWindowMode(Lcom/android/server/wm/Task;ZI)Z
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "toTop"    # Z
    .param p3, "windowingMode"    # I

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public notifyActivityResumed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowManagerService;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 244
    return-void
.end method

.method public onConfigurationChanged(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 102
    return-void
.end method

.method onForegroundActivityChangedLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 62
    return-void
.end method

.method public onMetaKeyCombination()V
    .registers 1

    .line 241
    return-void
.end method

.method onSystemReady()V
    .registers 1

    .line 50
    return-void
.end method

.method public removeRestartNotification()V
    .registers 1

    .line 209
    return-void
.end method

.method public removeSplitTaskShotIfNeed()Z
    .registers 2

    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public restartSubScreenUiIfNeeded(ILjava/lang/String;)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 89
    return-void
.end method

.method public restartSubScreenUiIfNeeded(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .registers 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "reason"    # Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .registers 2
    .param p1, "control"    # Landroid/app/IActivityController;

    .line 252
    return-void
.end method

.method public setDismissRestartAppDialogUiMsg()V
    .registers 1

    .line 203
    return-void
.end method

.method public setPackageHoldOn(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V
    .registers 3
    .param p1, "atms"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 96
    return-void
.end method

.method public shouldDeclineIfNeed(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public shouldExcludeTaskFromRecents(Lcom/android/server/wm/Task;)Z
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public shouldNotApplyAspectRatio()Z
    .registers 2

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSkipApplyAnimation(Lcom/android/server/wm/WindowContainer;I)Z
    .registers 4
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "transit"    # I

    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public showRestartAppDialogProcess(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 200
    return-void
.end method

.method public showRestartNotification(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 206
    return-void
.end method

.method public skipTaskForMultiWindow(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public splitTaskIfNeed(Landroid/app/ActivityOptions;ILcom/android/server/wm/Task;)V
    .registers 4
    .param p1, "options"    # Landroid/app/ActivityOptions;
    .param p2, "launchFlags"    # I
    .param p3, "startedActivityRootTask"    # Lcom/android/server/wm/Task;

    .line 232
    return-void
.end method

.method public startIntentInSplitScreen(Landroid/app/PendingIntent;I)V
    .registers 3
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "position"    # I

    .line 273
    return-void
.end method

.method public updateMultiWindowState(Lcom/android/server/wm/WindowContainer;)Z
    .registers 3
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method updateResizeBlackList(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    return-void
.end method
