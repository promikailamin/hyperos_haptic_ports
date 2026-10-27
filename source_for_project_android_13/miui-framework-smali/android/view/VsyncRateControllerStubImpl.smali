.class public Landroid/view/VsyncRateControllerStubImpl;
.super Ljava/lang/Object;
.source "VsyncRateControllerStubImpl.java"

# interfaces
.implements Landroid/view/VsyncRateControllerStub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VsyncRateControllerStubImpl$VsyncRateControllerHandler;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z = true

.field private static final blacklist DEFAULT_TARGET_FRAMERATE:F = 60.0f

.field private static final blacklist IDLE_TIMER_DELAY_MS:J = 0x7d0L

.field private static final blacklist MSG_RESET_VSYNC_RATE:I = 0x7d1

.field private static final blacklist MSG_SET_VSYNC_RATE_DEFAULT:I = 0x7d0

.field private static final blacklist MSG_SET_VSYNC_RATE_IDLE:I = 0x7d2

.field private static final blacklist TAG:Ljava/lang/String; = "ViewRootImpl"

.field private static final blacklist VSYNC_REQUEST_NONE:I


# instance fields
.field private blacklist DecorViewLogTag:Ljava/lang/String;

.field private blacklist mBasePackageName:Ljava/lang/String;

.field private blacklist mChoreographer:Landroid/view/VsyncRateControllerStub$ChoreographerStub;

.field private blacklist mCurrentCount:I

.field private blacklist mCurrentRefreshRate:F

.field private blacklist mEnabled:Z

.field final blacklist mHandler:Landroid/view/VsyncRateControllerStubImpl$VsyncRateControllerHandler;

.field private blacklist mLastUserInputTime:J

.field private blacklist mVsyncScheduled:Z

.field private blacklist mVsyncSet:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/VsyncRateControllerStubImpl;->mLastUserInputTime:J

    .line 37
    const-string v0, "DecorView"

    iput-object v0, p0, Landroid/view/VsyncRateControllerStubImpl;->DecorViewLogTag:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/VsyncRateControllerStubImpl;->mVsyncSet:Z

    .line 42
    iput-boolean v0, p0, Landroid/view/VsyncRateControllerStubImpl;->mVsyncScheduled:Z

    .line 43
    iput-boolean v0, p0, Landroid/view/VsyncRateControllerStubImpl;->mEnabled:Z

    .line 45
    iput v0, p0, Landroid/view/VsyncRateControllerStubImpl;->mCurrentCount:I

    .line 46
    new-instance v0, Landroid/view/VsyncRateControllerStubImpl$VsyncRateControllerHandler;

    invoke-direct {v0, p0}, Landroid/view/VsyncRateControllerStubImpl$VsyncRateControllerHandler;-><init>(Landroid/view/VsyncRateControllerStubImpl;)V

    iput-object v0, p0, Landroid/view/VsyncRateControllerStubImpl;->mHandler:Landroid/view/VsyncRateControllerStubImpl$VsyncRateControllerHandler;

    return-void
.end method


# virtual methods
.method public blacklist cancelSetVsyncRate()V
    .registers 3

    .line 105
    iget-object v0, p0, Landroid/view/VsyncRateControllerStubImpl;->mHandler:Landroid/view/VsyncRateControllerStubImpl$VsyncRateControllerHandler;

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1}, Landroid/view/VsyncRateControllerStubImpl$VsyncRateControllerHandler;->removeMessages(I)V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/VsyncRateControllerStubImpl;->mVsyncScheduled:Z

    .line 107
    return-void
.end method

.method public blacklist initialize(Landroid/view/ViewRootImpl;Landroid/view/VsyncRateControllerStub$ChoreographerStub;)V
    .registers 4
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;
    .param p2, "choreographer"    # Landroid/view/VsyncRateControllerStub$ChoreographerStub;

    .line 50
    iput-object p2, p0, Landroid/view/VsyncRateControllerStubImpl;->mChoreographer:Landroid/view/VsyncRateControllerStub$ChoreographerStub;

    .line 51
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/VsyncRateControllerStubImpl;->mBasePackageName:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    iput v0, p0, Landroid/view/VsyncRateControllerStubImpl;->mCurrentRefreshRate:F

    .line 53
    iget-boolean v0, p0, Landroid/view/VsyncRateControllerStubImpl;->mEnabled:Z

    if-nez v0, :cond_15

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/VsyncRateControllerStubImpl;->mEnabled:Z

    .line 55
    :cond_15
    return-void
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 58
    iget-boolean v0, p0, Landroid/view/VsyncRateControllerStubImpl;->mEnabled:Z

    return v0
.end method

.method public blacklist onDisplayChanged(F)V
    .registers 4
    .param p1, "currentRefreshRate"    # F

    .line 182
    iget-boolean v0, p0, Landroid/view/VsyncRateControllerStubImpl;->mVsyncSet:Z

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Landroid/view/VsyncRateControllerStubImpl;->mEnabled:Z

    if-eqz v0, :cond_3b

    .line 183
    iget v0, p0, Landroid/view/VsyncRateControllerStubImpl;->mCurrentRefreshRate:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_3b

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/view/VsyncRateControllerStubImpl;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": setVsyncRate onDisplayChanged. currentRefreshRate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewRootImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iput p1, p0, Landroid/view/VsyncRateControllerStubImpl;->mCurrentRefreshRate:F

    .line 188
    iget-object v0, p0, Landroid/view/VsyncRateControllerStubImpl;->mHandler:Landroid/view/VsyncRateControllerStubImpl$VsyncRateControllerHandler;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/view/VsyncRateControllerStubImpl$VsyncRateControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 189
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/VsyncRateControllerStubImpl;->mHandler:Landroid/view/VsyncRateControllerStubImpl$VsyncRateControllerHandler;

    invoke-virtual {v1, v0}, Landroid/view/VsyncRateControllerStubImpl$VsyncRateControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 192
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3b
    return-void
.end method

.method public blacklist onInputEvent(Landroid/view/InputEvent;Landroid/view/View;Z)V
    .registers 4
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mView"    # Landroid/view/View;
    .param p3, "mHadWindowFocus"    # Z

    .line 162
    return-void
.end method

.method public blacklist onWindowFocusChanged(Landroid/view/View;ZZ)V
    .registers 5
    .param p1, "mView"    # Landroid/view/View;
    .param p2, "hasWindowFocus"    # Z
    .param p3, "inTouchMode"    # Z

    .line 119
    instance-of v0, p1, Lcom/android/internal/policy/DecorView;

    .line 134
    return-void
.end method

.method public blacklist onWindowModeChanged(II)V
    .registers 7
    .param p1, "mWindowMode"    # I
    .param p2, "windowMode"    # I

    .line 166
    if-eq p1, p2, :cond_6c

    .line 168
    const-string v0, "; oldwindowmode is "

    const/4 v1, 0x5

    if-ne p2, v1, :cond_39

    .line 169
    iget-object v1, p0, Landroid/view/VsyncRateControllerStubImpl;->mHandler:Landroid/view/VsyncRateControllerStubImpl$VsyncRateControllerHandler;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Landroid/view/VsyncRateControllerStubImpl$VsyncRateControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/VsyncRateControllerStubImpl$VsyncRateControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 171
    iget-object v1, p0, Landroid/view/VsyncRateControllerStubImpl;->DecorViewLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/VsyncRateControllerStubImpl;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": setVsyncRate  windowmode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    .line 173
    :cond_39
    if-ne p1, v1, :cond_6c

    .line 174
    iget-object v1, p0, Landroid/view/VsyncRateControllerStubImpl;->mHandler:Landroid/view/VsyncRateControllerStubImpl$VsyncRateControllerHandler;

    const/16 v2, 0x7d1

    invoke-virtual {v1, v2}, Landroid/view/VsyncRateControllerStubImpl$VsyncRateControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/VsyncRateControllerStubImpl$VsyncRateControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 176
    iget-object v1, p0, Landroid/view/VsyncRateControllerStubImpl;->DecorViewLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/VsyncRateControllerStubImpl;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": resetVsyncRate  windowmode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_6c
    :goto_6c
    return-void
.end method

.method public blacklist resetVsyncRate()V
    .registers 4

    .line 91
    iget-boolean v0, p0, Landroid/view/VsyncRateControllerStubImpl;->mVsyncSet:Z

    if-nez v0, :cond_5

    .line 92
    return-void

    .line 93
    :cond_5
    iget-boolean v0, p0, Landroid/view/VsyncRateControllerStubImpl;->mVsyncScheduled:Z

    if-eqz v0, :cond_c

    .line 94
    invoke-virtual {p0}, Landroid/view/VsyncRateControllerStubImpl;->cancelSetVsyncRate()V

    .line 96
    :cond_c
    iget-object v0, p0, Landroid/view/VsyncRateControllerStubImpl;->mChoreographer:Landroid/view/VsyncRateControllerStub$ChoreographerStub;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/VsyncRateControllerStub$ChoreographerStub;->setVsyncRate(I)V

    .line 97
    iput-boolean v1, p0, Landroid/view/VsyncRateControllerStubImpl;->mVsyncSet:Z

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/view/VsyncRateControllerStubImpl;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": resetVsyncRate: rate ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewRootImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Landroid/view/VsyncRateControllerStubImpl;->mChoreographer:Landroid/view/VsyncRateControllerStub$ChoreographerStub;

    invoke-interface {v0}, Landroid/view/VsyncRateControllerStub$ChoreographerStub;->requestVsyncRate()V

    .line 101
    return-void
.end method

.method public blacklist scheduleSetVsyncRateOnIdle(J)V
    .registers 6
    .param p1, "timeMs"    # J

    .line 112
    iget-object v0, p0, Landroid/view/VsyncRateControllerStubImpl;->mHandler:Landroid/view/VsyncRateControllerStubImpl$VsyncRateControllerHandler;

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1}, Landroid/view/VsyncRateControllerStubImpl$VsyncRateControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 113
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 114
    iget-object v2, p0, Landroid/view/VsyncRateControllerStubImpl;->mHandler:Landroid/view/VsyncRateControllerStubImpl$VsyncRateControllerHandler;

    invoke-virtual {v2, v0, p1, p2}, Landroid/view/VsyncRateControllerStubImpl$VsyncRateControllerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 115
    iput-boolean v1, p0, Landroid/view/VsyncRateControllerStubImpl;->mVsyncScheduled:Z

    .line 116
    return-void
.end method

.method public blacklist setVsyncRate(F)V
    .registers 6
    .param p1, "rate"    # F

    .line 66
    iget-boolean v0, p0, Landroid/view/VsyncRateControllerStubImpl;->mEnabled:Z

    if-nez v0, :cond_5

    .line 67
    return-void

    .line 69
    :cond_5
    iget-boolean v0, p0, Landroid/view/VsyncRateControllerStubImpl;->mVsyncScheduled:Z

    if-eqz v0, :cond_c

    .line 70
    invoke-virtual {p0}, Landroid/view/VsyncRateControllerStubImpl;->cancelSetVsyncRate()V

    .line 72
    :cond_c
    iget v0, p0, Landroid/view/VsyncRateControllerStubImpl;->mCurrentRefreshRate:F

    div-float/2addr v0, p1

    invoke-static {v0}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v0

    .line 73
    .local v0, "count":I
    const-string v1, "ViewRootImpl"

    if-gez v0, :cond_34

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/VsyncRateControllerStubImpl;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": setVsyncRate: Invalid value, rate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void

    .line 77
    :cond_34
    iget-boolean v2, p0, Landroid/view/VsyncRateControllerStubImpl;->mVsyncSet:Z

    if-eqz v2, :cond_65

    iget v2, p0, Landroid/view/VsyncRateControllerStubImpl;->mCurrentCount:I

    if-ne v0, v2, :cond_65

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/VsyncRateControllerStubImpl;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": setVsyncRate: Ignore duplicate value, rate ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", current rate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/VsyncRateControllerStubImpl;->mCurrentCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void

    .line 82
    :cond_65
    iget-object v2, p0, Landroid/view/VsyncRateControllerStubImpl;->mChoreographer:Landroid/view/VsyncRateControllerStub$ChoreographerStub;

    invoke-interface {v2, v0}, Landroid/view/VsyncRateControllerStub$ChoreographerStub;->setVsyncRate(I)V

    .line 83
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/VsyncRateControllerStubImpl;->mVsyncSet:Z

    .line 84
    iput v0, p0, Landroid/view/VsyncRateControllerStubImpl;->mCurrentCount:I

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/VsyncRateControllerStubImpl;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": setVsyncRate: rate ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method public blacklist setVsyncRateDefault()V
    .registers 2

    .line 62
    const/high16 v0, 0x42700000    # 60.0f

    invoke-virtual {p0, v0}, Landroid/view/VsyncRateControllerStubImpl;->setVsyncRate(F)V

    .line 63
    return-void
.end method
