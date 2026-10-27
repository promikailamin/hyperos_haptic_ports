.class public Landroid/view/FramePredict;
.super Ljava/lang/Object;
.source "FramePredict.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/FramePredict$FramePredictHolder;
    }
.end annotation


# static fields
.field public static final blacklist DEBUG:Z

.field public static blacklist ENABLE_FRAMEPREDICT:Z = false

.field private static final blacklist FRAMEPREDICT_ENABLE:Ljava/lang/String; = "framepredict_enable"

.field private static final blacklist MSG_REGISTER_CLOUD_OBSERVER:I = 0x1

.field public static final blacklist TAG:Ljava/lang/String; = "FramePredict"


# instance fields
.field private blacklist isFocusApp:Z

.field private blacklist isInit:Z

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mFrameNum:J

.field private blacklist mH:Landroid/os/Handler;

.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mVsync:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/view/FramePredict;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/view/FramePredict;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterCloudObserver(Landroid/view/FramePredict;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/FramePredict;->registerCloudObserver(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateCloudControlParas(Landroid/view/FramePredict;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/FramePredict;->updateCloudControlParas()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 27
    nop

    .line 28
    const-string/jumbo v0, "persist.sys.framepredict.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/FramePredict;->ENABLE_FRAMEPREDICT:Z

    .line 29
    nop

    .line 30
    const-string/jumbo v0, "persist.sys.framepredict.debug"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/FramePredict;->DEBUG:Z

    .line 29
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/FramePredict;->isFocusApp:Z

    .line 37
    iput-boolean v0, p0, Landroid/view/FramePredict;->isInit:Z

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/FramePredict;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FramePredict init: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/view/FramePredict;->ENABLE_FRAMEPREDICT:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FramePredict"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/FramePredict-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/FramePredict;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Landroid/view/FramePredict;
    .registers 1

    .line 52
    invoke-static {}, Landroid/view/FramePredict$FramePredictHolder;->-$$Nest$sfgetINSTANCE()Landroid/view/FramePredict;

    move-result-object v0

    return-object v0
.end method

.method private static native blacklist nMarkDoFrameEnd(FJJ)V
.end method

.method private static native blacklist nMarkDoFrameStart(FJJ)V
.end method

.method private static native blacklist nMarkRecordViewEnd(FJJ)V
.end method

.method private static native blacklist nMarkRecordViewStart(FJJ)V
.end method

.method private static native blacklist nNotifyFocusChanged(Z)V
.end method

.method private blacklist registerCloudObserver(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 136
    new-instance v0, Landroid/view/FramePredict$2;

    iget-object v1, p0, Landroid/view/FramePredict;->mH:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Landroid/view/FramePredict$2;-><init>(Landroid/view/FramePredict;Landroid/os/Handler;)V

    .line 144
    .local v0, "observer":Landroid/database/ContentObserver;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 145
    const-string v2, "framepredict_enable"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 144
    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 147
    sget-boolean v1, Landroid/view/FramePredict;->DEBUG:Z

    if-eqz v1, :cond_22

    .line 148
    const-string v1, "FramePredict"

    const-string/jumbo v2, "registerCloudObserver: framepredict_enable"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_22
    return-void
.end method

.method private blacklist updateCloudControlParas()V
    .registers 4

    .line 153
    iget-object v0, p0, Landroid/view/FramePredict;->mContext:Landroid/content/Context;

    .line 154
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 153
    const-string v1, "framepredict_enable"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_15

    .line 156
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/view/FramePredict;->ENABLE_FRAMEPREDICT:Z

    .line 158
    :cond_15
    sget-boolean v1, Landroid/view/FramePredict;->DEBUG:Z

    if-eqz v1, :cond_34

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCloudControlParas ENABLE_FRAMEPREDICT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/view/FramePredict;->ENABLE_FRAMEPREDICT:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FramePredict"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_34
    return-void
.end method


# virtual methods
.method public blacklist init(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    iget-boolean v0, p0, Landroid/view/FramePredict;->isInit:Z

    if-eqz v0, :cond_5

    .line 104
    return-void

    .line 106
    :cond_5
    iput-object p1, p0, Landroid/view/FramePredict;->mContext:Landroid/content/Context;

    .line 107
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CloudObserverTh"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/FramePredict;->mHandlerThread:Landroid/os/HandlerThread;

    .line 108
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 109
    new-instance v0, Landroid/view/FramePredict$1;

    iget-object v1, p0, Landroid/view/FramePredict;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/view/FramePredict$1;-><init>(Landroid/view/FramePredict;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/FramePredict;->mH:Landroid/os/Handler;

    .line 123
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 124
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/view/FramePredict;->mH:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 125
    iput-boolean v1, p0, Landroid/view/FramePredict;->isInit:Z

    .line 126
    const-string v1, "FramePredict"

    const-string v2, "init CloudObserver"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method public blacklist markDoFrameEnd(FJJ)V
    .registers 8
    .param p1, "vsync"    # F
    .param p2, "frameNum"    # J
    .param p4, "timestamp"    # J

    .line 82
    sget-boolean v0, Landroid/view/FramePredict;->ENABLE_FRAMEPREDICT:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Landroid/view/FramePredict;->isFocusApp:Z

    if-eqz v0, :cond_17

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-eq v0, v1, :cond_13

    goto :goto_17

    .line 85
    :cond_13
    invoke-static {p1, p2, p3, p4, p5}, Landroid/view/FramePredict;->nMarkDoFrameEnd(FJJ)V

    .line 86
    return-void

    .line 83
    :cond_17
    :goto_17
    return-void
.end method

.method public blacklist markDoFrameStart(FJJ)V
    .registers 8
    .param p1, "vsync"    # F
    .param p2, "frameNum"    # J
    .param p4, "timestamp"    # J

    .line 67
    sget-boolean v0, Landroid/view/FramePredict;->ENABLE_FRAMEPREDICT:Z

    if-eqz v0, :cond_3d

    iget-boolean v0, p0, Landroid/view/FramePredict;->isFocusApp:Z

    if-nez v0, :cond_9

    goto :goto_3d

    .line 70
    :cond_9
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-eq v0, v1, :cond_35

    .line 71
    sget-boolean v0, Landroid/view/FramePredict;->DEBUG:Z

    if-eqz v0, :cond_34

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "markDoFrameStart won \'t run in other thread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FramePredict"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_34
    return-void

    .line 76
    :cond_35
    iput p1, p0, Landroid/view/FramePredict;->mVsync:F

    .line 77
    iput-wide p2, p0, Landroid/view/FramePredict;->mFrameNum:J

    .line 78
    invoke-static {p1, p2, p3, p4, p5}, Landroid/view/FramePredict;->nMarkDoFrameStart(FJJ)V

    .line 79
    return-void

    .line 68
    :cond_3d
    :goto_3d
    return-void
.end method

.method public blacklist markRecordViewEnd(J)V
    .registers 6
    .param p1, "timestamp"    # J

    .line 96
    sget-boolean v0, Landroid/view/FramePredict;->ENABLE_FRAMEPREDICT:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Landroid/view/FramePredict;->isFocusApp:Z

    if-eqz v0, :cond_1b

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-eq v0, v1, :cond_13

    goto :goto_1b

    .line 99
    :cond_13
    iget v0, p0, Landroid/view/FramePredict;->mVsync:F

    iget-wide v1, p0, Landroid/view/FramePredict;->mFrameNum:J

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/FramePredict;->nMarkRecordViewEnd(FJJ)V

    .line 100
    return-void

    .line 97
    :cond_1b
    :goto_1b
    return-void
.end method

.method public blacklist markRecordViewStart(J)V
    .registers 6
    .param p1, "timestamp"    # J

    .line 89
    sget-boolean v0, Landroid/view/FramePredict;->ENABLE_FRAMEPREDICT:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Landroid/view/FramePredict;->isFocusApp:Z

    if-eqz v0, :cond_1b

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-eq v0, v1, :cond_13

    goto :goto_1b

    .line 92
    :cond_13
    iget v0, p0, Landroid/view/FramePredict;->mVsync:F

    iget-wide v1, p0, Landroid/view/FramePredict;->mFrameNum:J

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/FramePredict;->nMarkRecordViewStart(FJJ)V

    .line 93
    return-void

    .line 90
    :cond_1b
    :goto_1b
    return-void
.end method

.method public blacklist notifyFocusChanged(Z)V
    .registers 5
    .param p1, "hasWindowFocus"    # Z

    .line 57
    sget-boolean v0, Landroid/view/FramePredict;->DEBUG:Z

    if-eqz v0, :cond_2b

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyFocusChanged ProcessName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,isFocusApp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FramePredict"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyFocusChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 61
    iput-boolean p1, p0, Landroid/view/FramePredict;->isFocusApp:Z

    .line 62
    invoke-static {p1}, Landroid/view/FramePredict;->nNotifyFocusChanged(Z)V

    .line 63
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 64
    return-void
.end method
