.class public interface abstract Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;
.super Ljava/lang/Object;
.source "MiuiEmbeddingWindowServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub$SingletonHolder;
    }
.end annotation


# static fields
.field public static final ADAPT_CUTOUT_UNAVAILABLE:I = -0x1

.field public static final DEFAULT_SPLIT_DARK_COLOR:Ljava/lang/String; = "#323232"

.field public static final DEFAULT_SPLIT_LIGHT_COLOR:Ljava/lang/String; = "#E6E6E6"

.field public static final EMBEDDING_RELAUNCH_DEFAULT:I = 0x0

.field public static final EMBEDDING_RELAUNCH_RELAUNCH:I = 0x2

.field public static final EMBEDDING_RELAUNCH_SKIP_RELAUNCH:I = 0x1

.field public static final SCREEN_ORIENTATION_MIUI_UNSET:I = -0x3


# direct methods
.method public static get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;
    .registers 1

    .line 60
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStubHead;->isActivityEmbeddingEnable()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 61
    const-class v0, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    return-object v0

    .line 63
    :cond_f
    new-instance v0, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub$1;

    invoke-direct {v0}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public adaptEmbeddingWindowNavBar(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/TaskFragmentStub;Landroid/window/ClientWindowFrames;Lcom/android/server/wm/WindowState;Z)V
    .registers 6
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "tf"    # Lcom/android/server/wm/TaskFragmentStub;
    .param p3, "windowFrames"    # Landroid/window/ClientWindowFrames;
    .param p4, "navigationBar"    # Lcom/android/server/wm/WindowState;
    .param p5, "hasNavBar"    # Z

    .line 109
    return-void
.end method

.method public adaptProcConfiguration(Lcom/android/server/wm/WindowProcessController;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .registers 3
    .param p1, "proc"    # Lcom/android/server/wm/WindowProcessController;
    .param p2, "configuration"    # Landroid/content/res/Configuration;

    .line 286
    return-object p2
.end method

.method public adaptRequestedOrientation(Lcom/android/server/wm/WindowContainer;II)I
    .registers 5
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "requestedOrientation"    # I
    .param p3, "lastOrientation"    # I

    .line 276
    const/4 v0, -0x1

    return v0
.end method

.method public addStatusBarAppearanceRegionsForLetterBox(ILandroid/graphics/Rect;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Ljava/util/ArrayList;)V
    .registers 6
    .param p1, "appearance"    # I
    .param p2, "statusBarFrame"    # Landroid/graphics/Rect;
    .param p3, "win"    # Lcom/android/server/wm/WindowState;
    .param p4, "tmpRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/Rect;",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/view/AppearanceRegion;",
            ">;)V"
        }
    .end annotation

    .line 311
    .local p5, "statusBarAppearanceRegionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/AppearanceRegion;>;"
    return-void
.end method

.method public adjustTFConfigForEmbeddingResizing(Landroid/os/IBinder;ZLjava/lang/String;IILandroid/content/res/Configuration;)V
    .registers 7
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "isFold"    # Z
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "parentWindowingMode"    # I
    .param p5, "windowingMode"    # I
    .param p6, "config"    # Landroid/content/res/Configuration;

    .line 209
    return-void
.end method

.method public allowFixedRotation(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 5
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "newRotation"    # I

    .line 291
    const/4 v0, 0x1

    return v0
.end method

.method public canResumeTop(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public computeTfConfig(Lcom/android/server/wm/TaskFragmentStub;Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "tf"    # Lcom/android/server/wm/TaskFragmentStub;
    .param p2, "inOutConfig"    # Landroid/content/res/Configuration;

    .line 176
    return-void
.end method

.method public enable()Z
    .registers 2

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoUIRule(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;
    .registers 3
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 238
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEmbeddedApps()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 92
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public getEmbeddedOrientation(Lcom/android/server/wm/ActivityRecord;)I
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 86
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v0

    return v0
.end method

.method public getFixedOrientationLetterboxAspectRatio(Lcom/android/server/wm/ActivityRecord;)F
    .registers 3
    .param p1, "record"    # Lcom/android/server/wm/ActivityRecord;

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public getRelaunchState(Ljava/lang/String;)I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public getScaleAppsFrame(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "mActivityRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "outFrame"    # Landroid/graphics/Rect;

    .line 279
    return-void
.end method

.method public getSplitLineDarkColor(Ljava/lang/String;)I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 139
    const-string v0, "#323232"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSplitLineLightColor(Ljava/lang/String;)I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 136
    const-string v0, "#E6E6E6"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTaskFragmentStub(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragmentStub;
    .registers 3
    .param p1, "tf"    # Lcom/android/server/wm/TaskFragment;

    .line 151
    new-instance v0, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub$2;-><init>(Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;)V

    return-object v0
.end method

.method public handleBeforeBindApplication(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "proc"    # Lcom/android/server/wm/WindowProcessController;
    .param p2, "hostType"    # Ljava/lang/String;
    .param p3, "config"    # Landroid/content/res/Configuration;

    .line 153
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "atms"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 70
    return-void
.end method

.method public initWindowHandle([Ljava/lang/Object;)Landroid/os/Bundle;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public isActivityEmbedded(Lcom/android/server/wm/ActivityRecord;Z)Z
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "includeMiddle"    # Z

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public isActivityInFixedOrientation(Lcom/android/server/wm/ActivityRecord;ZZ)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "excludeMultiWin"    # Z
    .param p3, "includeCompatDisplayInsets"    # Z

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public isAppNeedRelaunch(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public isAppShowDialog(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public isAppSupportCameraPreview(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public isDisableSensor(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public isEmbeddedOnScreen()Z
    .registers 2

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public isEmbeddingDividerEnabledForSelfAdaptApp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public isEmbeddingEnabledForPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public isEmbeddingEnabledForPackageIncludeAdaptApp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public isEmbeddingWindowFullscreen(Lcom/android/server/wm/WindowContainer;)Z
    .registers 3
    .param p1, "windowContainer"    # Lcom/android/server/wm/WindowContainer;

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public isFixedOrientationScale(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "record"    # Lcom/android/server/wm/ActivityRecord;

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public isFixedOrientationScale(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public isFullyTransparentBarAEEnabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 307
    const/4 v0, 0x1

    return v0
.end method

.method public isFullyTransparentBarAllowed(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "mActivityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public isInFullScreenMiuiEmbedState(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public isMiddleTransition(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "oldBounds"    # Landroid/graphics/Rect;
    .param p3, "newBounds"    # Landroid/graphics/Rect;

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public isMiuiIgnoreOrientationRequestDisabled()Z
    .registers 2

    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public isMiuiSizeCompatEnableInTablet(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "record"    # Lcom/android/server/wm/ActivityRecord;

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public isNeedPreventRotation(II)Z
    .registers 4
    .param p1, "curRotation"    # I
    .param p2, "newRotation"    # I

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public isPackageNeedAdaptCutout(Ljava/lang/String;)I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 281
    const/4 v0, -0x1

    return v0
.end method

.method public isSupportCameraPreviewInFixOri(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "record"    # Lcom/android/server/wm/ActivityRecord;

    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public isUsingCameraWhenEmbedded(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public notifyCameraStateChanged(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cameraState"    # I

    .line 289
    return-void
.end method

.method public onActivityRotationChanged(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 266
    return-void
.end method

.method public onActivityStateChange(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 263
    return-void
.end method

.method public onFreeFormStateChange(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 259
    return-void
.end method

.method public onTaskFragmentParentRotationChanged(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 98
    return-void
.end method

.method public onWindowsVisible(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p1, "record"    # Lcom/android/server/wm/ActivityRecord;

    .line 119
    return-void
.end method

.method public overrideOrientation(Lcom/android/server/wm/ActivityRecord;)I
    .registers 3
    .param p1, "record"    # Lcom/android/server/wm/ActivityRecord;

    .line 72
    const/4 v0, -0x3

    return v0
.end method

.method public removeOrganizerForEmbeddingDivider(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 195
    return-void
.end method

.method public resetMiuiEmbedStateIfNeeded(Lcom/android/server/wm/Task;)V
    .registers 2
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 197
    return-void
.end method

.method public resizeSpecialVideoInEmbedded(Lcom/android/server/wm/TaskFragmentStub;Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 5
    .param p1, "stub"    # Lcom/android/server/wm/TaskFragmentStub;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "requestOrientation"    # I

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public setEmbeddedEnable(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "isEnable"    # Z

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public setPendingFreeFormPackage(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setRequestedOrientation(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 269
    return-void
.end method

.method public shouldAddWindowExtension(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V
    .registers 2
    .param p1, "parsed"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 88
    return-void
.end method

.method public shouldBeAllPortrait(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "record"    # Lcom/android/server/wm/ActivityRecord;

    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public shouldDisableFixedOrientation(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "record"    # Lcom/android/server/wm/ActivityRecord;

    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public shouldDisableFixedOrientation(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public shouldExecuteAppTransitionWhenResumeFocused(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;)Z
    .registers 6
    .param p1, "rootTask"    # Lcom/android/server/wm/Task;
    .param p2, "topRunningActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "display"    # Lcom/android/server/wm/DisplayContent;

    .line 295
    const/4 v0, 0x0

    if-eqz p1, :cond_2a

    if-eqz p2, :cond_2a

    if-nez p3, :cond_8

    goto :goto_2a

    .line 301
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskDisplayArea;->isTopRootTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_28

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p2, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 302
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne p1, v1, :cond_28

    :cond_26
    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    nop

    .line 301
    :goto_29
    return v0

    .line 296
    :cond_2a
    :goto_2a
    return v0
.end method

.method public shouldRelaunchInEmbeddedWindow(IILcom/android/server/wm/ActivityRecord;)I
    .registers 4
    .param p1, "changes"    # I
    .param p2, "configChanged"    # I
    .param p3, "record"    # Lcom/android/server/wm/ActivityRecord;

    .line 183
    return p2
.end method

.method public shouldRelaunchInFixedOrientation(IILcom/android/server/wm/ActivityRecord;)I
    .registers 4
    .param p1, "changes"    # I
    .param p2, "configChanged"    # I
    .param p3, "record"    # Lcom/android/server/wm/ActivityRecord;

    .line 187
    return p2
.end method

.method public shouldSendEventWhenTaskInvisible(Lcom/android/server/wm/Task;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "current"    # Landroid/content/res/Configuration;
    .param p3, "last"    # Landroid/content/res/Configuration;

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSkipCheckStartActivityPermission(Lcom/android/server/wm/ActivityStarter$Request;)Z
    .registers 3
    .param p1, "request"    # Lcom/android/server/wm/ActivityStarter$Request;

    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSkipCompatMode(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public shouldTfStartChangeTransition(Lcom/android/server/wm/TaskFragmentStub;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 5
    .param p1, "tf"    # Lcom/android/server/wm/TaskFragmentStub;
    .param p2, "startBounds"    # Landroid/graphics/Rect;
    .param p3, "endBounds"    # Landroid/graphics/Rect;

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public skipAppTransitionAnimationForEmbeddingDivider()Z
    .registers 2

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public skipChangeTransition(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskFragmentStub;Lcom/android/server/wm/TaskFragmentStub;)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "newParent"    # Lcom/android/server/wm/TaskFragmentStub;
    .param p3, "oldParent"    # Lcom/android/server/wm/TaskFragmentStub;

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public skipPinnedMode(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public skipSnapshotFreeze(Lcom/android/server/wm/SurfaceFreezer$Freezable;Landroid/graphics/Rect;)Z
    .registers 4
    .param p1, "animatable"    # Lcom/android/server/wm/SurfaceFreezer$Freezable;
    .param p2, "startBounds"    # Landroid/graphics/Rect;

    .line 162
    instance-of v0, p1, Lcom/android/server/wm/TaskFragment;

    if-eqz v0, :cond_e

    .line 163
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/TaskFragment;

    iget-object v0, v0, Lcom/android/server/wm/TaskFragment;->mStub:Lcom/android/server/wm/TaskFragmentStub;

    invoke-interface {p0, v0, p2}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->skipSnapshotFreeze(Lcom/android/server/wm/TaskFragmentStub;Landroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 165
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public skipSnapshotFreeze(Lcom/android/server/wm/TaskFragmentStub;Landroid/graphics/Rect;)Z
    .registers 4
    .param p1, "tf"    # Lcom/android/server/wm/TaskFragmentStub;
    .param p2, "startBounds"    # Landroid/graphics/Rect;

    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public updateAdaptCutMode(Landroid/content/pm/ApplicationInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 283
    return-void
.end method

.method public updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 90
    return-void
.end method

.method public updateConfigurationForEmbeddingDivider(Landroid/content/res/Configuration;Z)V
    .registers 3
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "isFolded"    # Z

    .line 193
    return-void
.end method

.method public updateEmbeddedConfiguration(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 74
    return-void
.end method

.method public updateEmbeddingStateIfNeed(Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p1, "ws"    # Lcom/android/server/wm/WindowState;

    .line 191
    return-void
.end method

.method public updateResolvedConfigurationForEmbeddingDivider(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "taskFragment"    # Lcom/android/server/wm/TaskFragment;
    .param p2, "ar"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "config"    # Landroid/content/res/Configuration;

    .line 212
    return-void
.end method

.method public updateTouchableRegion(Lcom/android/server/wm/InputWindowHandleWrapper;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;)V
    .registers 4
    .param p1, "inputWindowHandle"    # Lcom/android/server/wm/InputWindowHandleWrapper;
    .param p2, "w"    # Lcom/android/server/wm/WindowState;
    .param p3, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 149
    return-void
.end method

.method public wmSetResumedActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p1, "reocrd"    # Lcom/android/server/wm/ActivityRecord;

    .line 121
    return-void
.end method
