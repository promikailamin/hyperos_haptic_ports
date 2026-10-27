.class public Lcom/android/server/wm/PinnedTaskController;
.super Ljava/lang/Object;
.source "PinnedTaskController.java"


# instance fields
.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mFreezingTaskConfig:Z

.field public mImeHeight:I

.field public mIsImeShowing:Z

.field public mMaxAspectRatio:F

.field public mMinAspectRatio:F

.field public mPinnedTaskListener:Landroid/view/IPinnedTaskListener;

.field public final mPinnedTaskListenerDeathHandler:Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;

.field public final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/PinnedTaskController;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmFreezingTaskConfig(Lcom/android/server/wm/PinnedTaskController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPinnedTaskListener(Lcom/android/server/wm/PinnedTaskController;Landroid/view/IPinnedTaskListener;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListener:Landroid/view/IPinnedTaskListener;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;-><init>(Lcom/android/server/wm/PinnedTaskController;Lcom/android/server/wm/PinnedTaskController-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListenerDeathHandler:Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;

    .line 84
    iput-object p1, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 85
    iput-object p2, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 86
    invoke-virtual {p0}, Lcom/android/server/wm/PinnedTaskController;->reloadResources()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PinnedTaskController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    iget-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mFreezingTaskConfig=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mIsImeShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/PinnedTaskController;->mIsImeShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mImeHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/PinnedTaskController;->mImeHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mMinAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/PinnedTaskController;->mMinAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  mMaxAspectRatio="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/PinnedTaskController;->mMaxAspectRatio:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public isFreezingTaskConfig(Lcom/android/server/wm/Task;)Z
    .registers 3

    .line 150
    iget-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 151
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-ne p1, p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public isValidExpandedPictureInPictureAspectRatio(F)Z
    .registers 3

    .line 132
    iget v0, p0, Lcom/android/server/wm/PinnedTaskController;->mMinAspectRatio:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_13

    iget p0, p0, Lcom/android/server/wm/PinnedTaskController;->mMaxAspectRatio:F

    .line 133
    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-lez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public isValidPictureInPictureAspectRatio(F)Z
    .registers 3

    .line 124
    iget v0, p0, Lcom/android/server/wm/PinnedTaskController;->mMinAspectRatio:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_12

    iget p0, p0, Lcom/android/server/wm/PinnedTaskController;->mMaxAspectRatio:F

    .line 125
    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-gtz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final notifyImeVisibilityChanged(ZI)V
    .registers 3

    .line 183
    iget-object p0, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListener:Landroid/view/IPinnedTaskListener;

    if-nez p0, :cond_5

    return-void

    .line 188
    :cond_5
    :try_start_5
    invoke-interface {p0, p1, p2}, Landroid/view/IPinnedTaskListener;->onImeVisibilityChanged(ZI)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 190
    const-string p1, "WindowManager"

    const-string p2, "Error delivering ime visibility changed event."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final notifyMovementBoundsChanged(Z)V
    .registers 3

    .line 198
    iget-object p0, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListener:Landroid/view/IPinnedTaskListener;

    if-nez p0, :cond_5

    return-void

    .line 203
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Landroid/view/IPinnedTaskListener;->onMovementBoundsChanged(Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 205
    const-string p1, "WindowManager"

    const-string v0, "Error delivering movement bounds changed event."

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onCancelFixedRotationTransform()V
    .registers 2

    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    return-void
.end method

.method public onPostDisplayConfigurationChanged()V
    .registers 2

    .line 91
    invoke-virtual {p0}, Lcom/android/server/wm/PinnedTaskController;->reloadResources()V

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    return-void
.end method

.method public registerPinnedTaskListener(Landroid/view/IPinnedTaskListener;)V
    .registers 5

    .line 111
    :try_start_0
    invoke-interface {p1}, Landroid/view/IPinnedTaskListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListenerDeathHandler:Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 112
    iput-object p1, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListener:Landroid/view/IPinnedTaskListener;

    .line 113
    iget-boolean p1, p0, Lcom/android/server/wm/PinnedTaskController;->mIsImeShowing:Z

    iget v0, p0, Lcom/android/server/wm/PinnedTaskController;->mImeHeight:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/PinnedTaskController;->notifyImeVisibilityChanged(ZI)V

    .line 114
    invoke-virtual {p0, v2}, Lcom/android/server/wm/PinnedTaskController;->notifyMovementBoundsChanged(Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p0

    .line 116
    const-string p1, "WindowManager"

    const-string v0, "Failed to register pinned task listener"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final reloadResources()V
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050116

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/wm/PinnedTaskController;->mMinAspectRatio:F

    const v1, 0x1050115

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/PinnedTaskController;->mMaxAspectRatio:F

    return-void
.end method

.method public setAdjustedForIme(ZI)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    if-lez p2, :cond_8

    move p1, v1

    goto :goto_9

    :cond_8
    move p1, v0

    :goto_9
    if-eqz p1, :cond_c

    goto :goto_d

    :cond_c
    move p2, v0

    .line 169
    :goto_d
    iget-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mIsImeShowing:Z

    if-ne p1, v0, :cond_16

    iget v0, p0, Lcom/android/server/wm/PinnedTaskController;->mImeHeight:I

    if-ne p2, v0, :cond_16

    return-void

    .line 173
    :cond_16
    iput-boolean p1, p0, Lcom/android/server/wm/PinnedTaskController;->mIsImeShowing:Z

    .line 174
    iput p2, p0, Lcom/android/server/wm/PinnedTaskController;->mImeHeight:I

    .line 175
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PinnedTaskController;->notifyImeVisibilityChanged(ZI)V

    .line 176
    invoke-virtual {p0, v1}, Lcom/android/server/wm/PinnedTaskController;->notifyMovementBoundsChanged(Z)V

    return-void
.end method

.method public setEnterPipWithRotatedTransientLaunch()V
    .registers 2

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    return-void
.end method
