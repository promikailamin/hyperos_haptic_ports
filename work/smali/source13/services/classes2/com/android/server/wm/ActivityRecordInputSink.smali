.class Lcom/android/server/wm/ActivityRecordInputSink;
.super Ljava/lang/Object;
.source "ActivityRecordInputSink.java"


# static fields
.field static final ENABLE_TOUCH_OPAQUE_ACTIVITIES:J = 0xb978b5fL


# instance fields
.field private final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field private mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

.field private final mIsCompatEnabled:Z

.field private final mName:Ljava/lang/String;

.field private mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 48
    nop

    .line 49
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    .line 48
    const-wide/32 v1, 0xb978b5f

    invoke-static {v1, v2, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mIsCompatEnabled:Z

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ActivityRecordInputSink "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 51
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mName:Ljava/lang/String;

    .line 52
    if-eqz p2, :cond_42

    .line 53
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    iput v0, p2, Lcom/android/server/wm/ActivityRecord;->mAllowedTouchUid:I

    .line 55
    :cond_42
    return-void
.end method

.method private createInputWindowHandle()Landroid/view/InputWindowHandle;
    .registers 4

    .line 108
    new-instance v0, Landroid/view/InputWindowHandle;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 109
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    .line 110
    .local v0, "inputWindowHandle":Landroid/view/InputWindowHandle;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop:Z

    .line 111
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mName:Ljava/lang/String;

    iput-object v1, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 112
    const/16 v1, 0x7e6

    iput v1, v0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 113
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iput v1, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 114
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 115
    const/4 v1, 0x5

    iput v1, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 116
    return-object v0
.end method

.method private createSurface(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 68
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mName:Ljava/lang/String;

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 70
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 71
    const-string v1, "ActivityRecordInputSink.createSurface"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 74
    .local v0, "surfaceControl":Landroid/view/SurfaceControl;
    const/high16 v1, -0x80000000

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 75
    return-object v0
.end method

.method private getInputWindowHandleWrapper()Lcom/android/server/wm/InputWindowHandleWrapper;
    .registers 8

    .line 79
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

    if-nez v0, :cond_f

    .line 80
    new-instance v0, Lcom/android/server/wm/InputWindowHandleWrapper;

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecordInputSink;->createInputWindowHandle()Landroid/view/InputWindowHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;-><init>(Landroid/view/InputWindowHandle;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 85
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 86
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 87
    .local v0, "activityBelowInTask":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_37

    iget v3, v0, Lcom/android/server/wm/ActivityRecord;->mAllowedTouchUid:I

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 88
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v4

    if-eq v3, v4, :cond_35

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 89
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result v3

    if-eqz v3, :cond_37

    :cond_35
    move v3, v1

    goto :goto_38

    :cond_37
    move v3, v2

    .line 92
    .local v3, "allowPassthrough":Z
    :goto_38
    const/4 v4, 0x0

    .line 93
    .local v4, "inMiniFreeform":Z
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 94
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getRootTaskId()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v5

    .line 95
    .local v5, "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-eqz v5, :cond_5a

    invoke-virtual {v5}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->isInMiniFreeFormMode()Z

    move-result v6

    if-eqz v6, :cond_5a

    goto :goto_5b

    :cond_5a
    move v1, v2

    :goto_5b
    move v4, v1

    .line 97
    .end local v5    # "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    :cond_5c
    const/16 v1, 0x8

    if-nez v3, :cond_7d

    iget-boolean v5, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mIsCompatEnabled:Z

    if-eqz v5, :cond_7d

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isInTransition()Z

    move-result v5

    if-eqz v5, :cond_6e

    if-eqz v4, :cond_7d

    :cond_6e
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isSplitMode()Z

    move-result v5

    if-eqz v5, :cond_77

    goto :goto_7d

    .line 102
    :cond_77
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

    invoke-virtual {v5, v2, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setInputConfigMasked(II)V

    goto :goto_82

    .line 99
    :cond_7d
    :goto_7d
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

    invoke-virtual {v2, v1, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setInputConfigMasked(II)V

    .line 104
    :goto_82
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

    return-object v1
.end method


# virtual methods
.method public applyChangesToSurfaceIfChanged(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 58
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecordInputSink;->getInputWindowHandleWrapper()Lcom/android/server/wm/InputWindowHandleWrapper;

    move-result-object v0

    .line 59
    .local v0, "inputWindowHandleWrapper":Lcom/android/server/wm/InputWindowHandleWrapper;
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_e

    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecordInputSink;->createSurface(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 62
    :cond_e
    invoke-virtual {v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->isChanged()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 63
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->applyChangesToSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 65
    :cond_19
    return-void
.end method

.method releaseSurfaceControl()V
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_a

    .line 121
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 124
    :cond_a
    return-void
.end method
