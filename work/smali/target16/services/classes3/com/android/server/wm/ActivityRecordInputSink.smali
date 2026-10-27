.class public Lcom/android/server/wm/ActivityRecordInputSink;
.super Ljava/lang/Object;
.source "ActivityRecordInputSink.java"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

.field public final mIsCompatEnabled:Z

.field public final mName:Ljava/lang/String;

.field public mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 7

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide/32 v0, 0xb978b5f

    .line 68
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v2

    .line 67
    invoke-static {v0, v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mIsCompatEnabled:Z

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ActivityRecordInputSink "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 70
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mName:Ljava/lang/String;

    if-nez p2, :cond_39

    goto :goto_49

    :cond_39
    const-wide/32 v0, 0x15589dda

    .line 79
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result p0

    .line 77
    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-eqz p0, :cond_4a

    if-eqz p3, :cond_49

    goto :goto_4a

    :cond_49
    :goto_49
    return-void

    .line 82
    :cond_4a
    :goto_4a
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result p0

    iput p0, p2, Lcom/android/server/wm/ActivityRecord;->mAllowedTouchUid:I

    return-void
.end method


# virtual methods
.method public applyChangesToSurfaceIfChanged(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 87
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecordInputSink;->getInputWindowHandleWrapper()Lcom/android/server/wm/InputWindowHandleWrapper;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_e

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecordInputSink;->createSurface(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 91
    :cond_e
    invoke-virtual {v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->isChanged()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 92
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/InputWindowHandleWrapper;->applyChangesToSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    :cond_19
    return-void
.end method

.method public final createInputWindowHandle()Landroid/view/InputWindowHandle;
    .registers 4

    .line 133
    new-instance v0, Landroid/view/InputWindowHandle;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 134
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    const/4 v1, 0x1

    .line 135
    iput-boolean v1, v0, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop:Z

    .line 136
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mName:Ljava/lang/String;

    iput-object p0, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    const/16 p0, 0x7e6

    .line 137
    iput p0, v0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 138
    sget p0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iput p0, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 139
    sget p0, Lcom/android/server/wm/WindowManagerService;->MY_UID:I

    iput p0, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    const/4 p0, 0x5

    .line 140
    iput p0, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    return-object v0
.end method

.method public final createSurface(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .registers 4

    .line 97
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mName:Ljava/lang/String;

    .line 98
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    const-string v0, "ActivityRecordInputSink.createSurface"

    .line 100
    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    .line 101
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p0

    const/high16 v0, -0x80000000

    .line 103
    invoke-virtual {p1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public final getInputWindowHandleWrapper()Lcom/android/server/wm/InputWindowHandleWrapper;
    .registers 5

    .line 108
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

    if-nez v0, :cond_f

    .line 109
    new-instance v0, Lcom/android/server/wm/InputWindowHandleWrapper;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecordInputSink;->createInputWindowHandle()Landroid/view/InputWindowHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;-><init>(Landroid/view/InputWindowHandle;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 114
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    const/16 v1, 0x8

    if-eqz v0, :cond_40

    .line 116
    iget v2, v0, Lcom/android/server/wm/ActivityRecord;->mAllowedTouchUid:I

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 117
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v3

    if-eq v2, v3, :cond_5a

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 118
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_5a

    .line 119
    :cond_40
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mIsCompatEnabled:Z

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mActivityRecordInputSinkEnabled:Z

    if-nez v0, :cond_53

    goto :goto_5a

    .line 126
    :cond_53
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setInputConfigMasked(II)V

    goto :goto_5f

    .line 122
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setInputConfigMasked(II)V

    .line 128
    :goto_5f
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setDisplayId(I)V

    .line 129
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

    return-object p0
.end method

.method public releaseSurfaceControl()V
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_a

    .line 146
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mSurfaceControl:Landroid/view/SurfaceControl;

    :cond_a
    return-void
.end method
