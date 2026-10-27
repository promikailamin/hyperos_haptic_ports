.class public interface abstract Lcom/android/server/wm/MiuiSplitInputMethodStub;
.super Ljava/lang/Object;
.source "MiuiSplitInputMethodStub.java"


# static fields
.field public static final sInstance:Lcom/android/server/wm/MiuiSplitInputMethodStub;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const-class v0, Lcom/android/server/wm/MiuiSplitInputMethodStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MiuiSplitInputMethodStub;

    sput-object v0, Lcom/android/server/wm/MiuiSplitInputMethodStub;->sInstance:Lcom/android/server/wm/MiuiSplitInputMethodStub;

    return-void
.end method

.method public static getInstance()Lcom/android/server/wm/MiuiSplitInputMethodStub;
    .registers 1

    .line 21
    sget-object v0, Lcom/android/server/wm/MiuiSplitInputMethodStub;->sInstance:Lcom/android/server/wm/MiuiSplitInputMethodStub;

    return-object v0
.end method


# virtual methods
.method public adjustCutoutForSplitIme(Landroid/view/InsetsState;Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p1, "state"    # Landroid/view/InsetsState;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 52
    return-void
.end method

.method public adjustWindowFrameForSplitIme(Lcom/android/server/wm/WindowState;Landroid/window/ClientWindowFrames;)V
    .registers 3
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "clientWindowFrames"    # Landroid/window/ClientWindowFrames;

    .line 30
    return-void
.end method

.method public init(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 4
    .param p1, "imms"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .line 18
    return-void
.end method

.method public isSplitIMESupport(Landroid/content/res/Configuration;)Z
    .registers 3
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChangedForSplitIme(Landroid/content/res/Configuration;Lcom/android/server/wm/DisplayArea$Tokens;)V
    .registers 3
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;
    .param p2, "imeContainer"    # Lcom/android/server/wm/DisplayArea$Tokens;

    .line 61
    return-void
.end method

.method public onConfigurationChangedForTask(Landroid/content/res/Configuration;Lcom/android/server/wm/Task;)V
    .registers 3
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 69
    return-void
.end method

.method public resolveOverrideConfigurationForSplitIme(Landroid/content/res/Configuration;Lcom/android/server/wm/DisplayArea$Tokens;)V
    .registers 3
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;
    .param p2, "imeContainer"    # Lcom/android/server/wm/DisplayArea$Tokens;

    .line 66
    return-void
.end method

.method public shouldAdjustCutoutForSplitIme(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public updateImeBoundsInDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 2
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 36
    return-void
.end method

.method public updateImeBoundsInImeTargetChanged(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "FocusedWindow"    # Lcom/android/server/wm/WindowState;

    .line 42
    return-void
.end method

.method public updateImeBoundsInTaskChanged(ZIZLcom/android/server/wm/DisplayContent;)V
    .registers 5
    .param p1, "mCreatedByOrganizer"    # Z
    .param p2, "childCount"    # I
    .param p3, "inMultiWindowMode"    # Z
    .param p4, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 49
    return-void
.end method
