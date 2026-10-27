.class public Lcom/android/server/wm/BoundsCompatControllerStub;
.super Ljava/lang/Object;
.source "BoundsCompatControllerStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static newInstance()Lcom/android/server/wm/BoundsCompatControllerStub;
    .registers 1

    .line 21
    const-class v0, Lcom/android/server/wm/BoundsCompatControllerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/BoundsCompatControllerStub;

    return-object v0
.end method


# virtual methods
.method adaptCompatConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Lcom/android/server/wm/DisplayContent;)Z
    .registers 5
    .param p1, "parentConfiguration"    # Landroid/content/res/Configuration;
    .param p2, "resolvedConfig"    # Landroid/content/res/Configuration;
    .param p3, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method addCallbackIfNeeded(Landroid/app/servertransaction/ClientTransaction;)V
    .registers 2
    .param p1, "transaction"    # Landroid/app/servertransaction/ClientTransaction;

    .line 78
    return-void
.end method

.method adjustWindowParamsIfNeededLocked(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 81
    return-void
.end method

.method areBoundsLetterboxed()Z
    .registers 2

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method clearAppBoundsIfNeeded(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "resolvedConfig"    # Landroid/content/res/Configuration;

    .line 68
    return-void
.end method

.method public clearSizeCompatMode(Lcom/android/server/wm/Task;Z)V
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "isClearConfig"    # Z

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/BoundsCompatControllerStub;->clearSizeCompatMode(Lcom/android/server/wm/Task;ZLcom/android/server/wm/ActivityRecord;)V

    .line 29
    return-void
.end method

.method public clearSizeCompatMode(Lcom/android/server/wm/Task;ZLcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "isClearConfig"    # Z
    .param p3, "excluded"    # Lcom/android/server/wm/ActivityRecord;

    .line 32
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 51
    return-void
.end method

.method dumpBounds(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/app/WindowConfiguration;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "winConfig"    # Landroid/app/WindowConfiguration;

    .line 53
    return-void
.end method

.method getCurrentMiuiSizeCompatScale(F)F
    .registers 2
    .param p1, "currentScale"    # F

    .line 88
    return p1
.end method

.method getDispatchedBounds()Landroid/graphics/Rect;
    .registers 2

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method inMiuiSizeCompatMode()Z
    .registers 2

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public initBoundsCompatController(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p1, "owner"    # Lcom/android/server/wm/ActivityRecord;

    .line 25
    return-void
.end method

.method public interceptScheduleTransactionIfNeeded(Landroid/app/servertransaction/ClientTransactionItem;)Z
    .registers 3
    .param p1, "originalTransactionItem"    # Landroid/app/servertransaction/ClientTransactionItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method isBoundsCompatEnabled()Z
    .registers 2

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public isDisplayCompatModeEnabled()Z
    .registers 2

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public isFixedAspectRatioAvailable()Z
    .registers 2

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public isFixedAspectRatioEnabled()Z
    .registers 2

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public prepareBoundsCompat()V
    .registers 1

    .line 71
    return-void
.end method

.method resolveBoundsCompat(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/graphics/Rect;F)V
    .registers 5
    .param p1, "resolvedConfig"    # Landroid/content/res/Configuration;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;
    .param p3, "sizeCompatBounds"    # Landroid/graphics/Rect;
    .param p4, "sizeCompatScale"    # F

    .line 41
    return-void
.end method

.method shouldNotCreateCompatDisplayInsets()Z
    .registers 2

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method shouldRelaunchInMiuiSizeCompatMode(III)I
    .registers 4
    .param p1, "changes"    # I
    .param p2, "configChanged"    # I
    .param p3, "lastReportedDisplayId"    # I

    .line 93
    return p2
.end method

.method shouldShowLetterboxUi()Z
    .registers 2

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method updateDisplayCompatModeAvailableIfNeeded(Lcom/android/server/wm/Task;)V
    .registers 2
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 38
    return-void
.end method
