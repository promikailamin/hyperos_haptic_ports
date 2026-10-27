.class public Landroid/app/AppScoutStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "AppScoutStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppScoutStateMachine$HangInputState;,
        Landroid/app/AppScoutStateMachine$HangState;,
        Landroid/app/AppScoutStateMachine$SlowState;,
        Landroid/app/AppScoutStateMachine$WarningState;,
        Landroid/app/AppScoutStateMachine$NormalState;,
        Landroid/app/AppScoutStateMachine$DefaultState;,
        Landroid/app/AppScoutStateMachine$AppScoutState;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_HANG_STATE_PERIOD:J = 0x1388L

.field private static final blacklist DEFAULT_UNNORMAL_PERIOD:J = 0x1f4L

.field private static final blacklist DEFAULT_WARNING_CHECK_PERIOD:J = 0x9c4L

.field public static final blacklist ENABLED_SCOUT_DEBUG:Z

.field public static blacklist ENABLE_MI_TRACE:Ljava/lang/Boolean; = null

.field public static final blacklist MSG_TRANSACT_TO_HANG:I = 0x4

.field public static final blacklist MSG_TRANSACT_TO_HANG_INPUT:I = 0x5

.field public static final blacklist MSG_TRANSACT_TO_NORMAL:I = 0x1

.field public static final blacklist MSG_TRANSACT_TO_SLOW:I = 0x3

.field public static final blacklist MSG_TRANSACT_TO_WARNING:I = 0x2

.field private static final blacklist SCOUT_TAG:Ljava/lang/String; = "MIUIScout App"

.field public static final blacklist SCOUT_WALKSTACK:Z

.field public static final blacklist SEPARATOR_SYMBOL:Ljava/lang/String; = "-"

.field private static final blacklist TAG:Ljava/lang/String; = "AppScoutStateMachine"

.field private static final blacklist THREASHOLD_HANG_STATE:J = 0x1388L

.field public static blacklist loadWalkStackLibrary:Z

.field private static blacklist sAppTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist isSystemServer:Z

.field private blacklist mAdoptTimeout:J

.field private blacklist mAppThread:Landroid/app/ActivityThread;

.field private blacklist mCurrentEvent:Landroid/view/InputEvent;

.field private blacklist mCurrentMsg:Landroid/os/Message;

.field blacklist mDefaultState:Landroid/app/AppScoutStateMachine$DefaultState;

.field private blacklist mEventDuration:J

.field blacklist mHangInputState:Landroid/app/AppScoutStateMachine$HangInputState;

.field blacklist mHangState:Landroid/app/AppScoutStateMachine$HangState;

.field private blacklist mInputLatency:I

.field private blacklist mLastEvent:Landroid/view/InputEvent;

.field private blacklist mLastMsg:Landroid/os/Message;

.field private blacklist mMessageMonitor:Landroid/os/perfdebug/MessageMonitor;

.field private blacklist mMonitorThread:Ljava/lang/Thread;

.field private blacklist mMsgDuration:J

.field blacklist mNormalState:Landroid/app/AppScoutStateMachine$NormalState;

.field private blacklist mScoutEvent:Lmiui/mqsas/sdk/event/AppScoutEvent;

.field public volatile blacklist mScoutState:Landroid/app/AppScoutStateMachine$AppScoutState;

.field blacklist mSlowState:Landroid/app/AppScoutStateMachine$SlowState;

.field blacklist mWarningState:Landroid/app/AppScoutStateMachine$WarningState;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurrentEvent(Landroid/app/AppScoutStateMachine;)Landroid/view/InputEvent;
    .registers 1

    iget-object p0, p0, Landroid/app/AppScoutStateMachine;->mCurrentEvent:Landroid/view/InputEvent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentMsg(Landroid/app/AppScoutStateMachine;)Landroid/os/Message;
    .registers 1

    iget-object p0, p0, Landroid/app/AppScoutStateMachine;->mCurrentMsg:Landroid/os/Message;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMessageMonitor(Landroid/app/AppScoutStateMachine;)Landroid/os/perfdebug/MessageMonitor;
    .registers 1

    iget-object p0, p0, Landroid/app/AppScoutStateMachine;->mMessageMonitor:Landroid/os/perfdebug/MessageMonitor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMonitorThread(Landroid/app/AppScoutStateMachine;)Ljava/lang/Thread;
    .registers 1

    iget-object p0, p0, Landroid/app/AppScoutStateMachine;->mMonitorThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentEvent(Landroid/app/AppScoutStateMachine;Landroid/view/InputEvent;)V
    .registers 2

    iput-object p1, p0, Landroid/app/AppScoutStateMachine;->mCurrentEvent:Landroid/view/InputEvent;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentMsg(Landroid/app/AppScoutStateMachine;Landroid/os/Message;)V
    .registers 2

    iput-object p1, p0, Landroid/app/AppScoutStateMachine;->mCurrentMsg:Landroid/os/Message;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInputLatency(Landroid/app/AppScoutStateMachine;I)V
    .registers 2

    iput p1, p0, Landroid/app/AppScoutStateMachine;->mInputLatency:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastEvent(Landroid/app/AppScoutStateMachine;Landroid/view/InputEvent;)V
    .registers 2

    iput-object p1, p0, Landroid/app/AppScoutStateMachine;->mLastEvent:Landroid/view/InputEvent;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastMsg(Landroid/app/AppScoutStateMachine;Landroid/os/Message;)V
    .registers 2

    iput-object p1, p0, Landroid/app/AppScoutStateMachine;->mLastMsg:Landroid/os/Message;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckDestStateInPeriod(Landroid/app/AppScoutStateMachine;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/AppScoutStateMachine;->checkDestStateInPeriod()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreportAppScoutEventToMqs(Landroid/app/AppScoutStateMachine;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/AppScoutStateMachine;->reportAppScoutEventToMqs(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreportAppScoutEventToMqs(Landroid/app/AppScoutStateMachine;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/AppScoutStateMachine;->reportAppScoutEventToMqs(IZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnWalkStackAll(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Landroid/app/AppScoutStateMachine;->nWalkStackAll(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 41
    nop

    .line 42
    const-string v0, "persist.sys.miui_scout_debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/app/AppScoutStateMachine;->ENABLED_SCOUT_DEBUG:Z

    .line 43
    nop

    .line 44
    const-string v0, "persist.sys.scout_walkstack"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/app/AppScoutStateMachine;->SCOUT_WALKSTACK:Z

    .line 52
    sput-boolean v1, Landroid/app/AppScoutStateMachine;->loadWalkStackLibrary:Z

    .line 73
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/app/AppScoutStateMachine;->sAppTypeMap:Ljava/util/HashMap;

    .line 75
    const/16 v3, 0x19a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "APP_SCOUT_NORMALLY"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v2, Landroid/app/AppScoutStateMachine;->sAppTypeMap:Ljava/util/HashMap;

    const/16 v3, 0x19b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "APP_SCOUT_WARNING"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v2, Landroid/app/AppScoutStateMachine;->sAppTypeMap:Ljava/util/HashMap;

    const/16 v3, 0x19c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "APP_SCOUT_SLOW"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v2, Landroid/app/AppScoutStateMachine;->sAppTypeMap:Ljava/util/HashMap;

    const/16 v3, 0x19d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "APP_SCOUT_HANG"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v2, Landroid/app/AppScoutStateMachine;->sAppTypeMap:Ljava/util/HashMap;

    const/16 v3, 0x19e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "APP_SCOUT_HANG_INPUT"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v2, Landroid/app/AppScoutStateMachine;->sAppTypeMap:Ljava/util/HashMap;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "APP_ANR"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const/4 v2, 0x1

    if-eqz v0, :cond_72

    invoke-static {}, Lmiui/mqsas/scout/ScoutUtils;->isLibraryTest()Z

    move-result v0

    if-eqz v0, :cond_72

    move v1, v2

    :cond_72
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/app/AppScoutStateMachine;->ENABLE_MI_TRACE:Ljava/lang/Boolean;

    .line 102
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 104
    :try_start_7e
    const-string v0, "walkstack"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 105
    sput-boolean v2, Landroid/app/AppScoutStateMachine;->loadWalkStackLibrary:Z
    :try_end_85
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_7e .. :try_end_85} :catch_86

    .line 108
    goto :goto_8e

    .line 106
    :catch_86
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "AppScoutStateMachine"

    const-string v2, "can\'t loadLibrary libwalkstack"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_8e
    :goto_8e
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 128
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/app/AppScoutStateMachine;-><init>(Ljava/lang/String;Landroid/os/HandlerThread;Ljava/lang/Boolean;)V

    .line 129
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Landroid/os/HandlerThread;Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mThread"    # Landroid/os/HandlerThread;
    .param p3, "isSystemServer"    # Ljava/lang/Boolean;

    .line 132
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 53
    const-wide/16 v0, 0x9c4

    iput-wide v0, p0, Landroid/app/AppScoutStateMachine;->mAdoptTimeout:J

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/AppScoutStateMachine;->mMsgDuration:J

    .line 55
    iput-wide v0, p0, Landroid/app/AppScoutStateMachine;->mEventDuration:J

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/AppScoutStateMachine;->mInputLatency:I

    .line 57
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getMessageMonitor()Landroid/os/perfdebug/MessageMonitor;

    move-result-object v1

    iput-object v1, p0, Landroid/app/AppScoutStateMachine;->mMessageMonitor:Landroid/os/perfdebug/MessageMonitor;

    .line 58
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/app/AppScoutStateMachine;->mMonitorThread:Ljava/lang/Thread;

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/AppScoutStateMachine;->mCurrentMsg:Landroid/os/Message;

    .line 60
    iput-object v1, p0, Landroid/app/AppScoutStateMachine;->mLastMsg:Landroid/os/Message;

    .line 61
    iput-object v1, p0, Landroid/app/AppScoutStateMachine;->mCurrentEvent:Landroid/view/InputEvent;

    .line 62
    iput-object v1, p0, Landroid/app/AppScoutStateMachine;->mLastEvent:Landroid/view/InputEvent;

    .line 63
    new-instance v1, Lmiui/mqsas/sdk/event/AppScoutEvent;

    invoke-direct {v1}, Lmiui/mqsas/sdk/event/AppScoutEvent;-><init>()V

    iput-object v1, p0, Landroid/app/AppScoutStateMachine;->mScoutEvent:Lmiui/mqsas/sdk/event/AppScoutEvent;

    .line 64
    iput-boolean v0, p0, Landroid/app/AppScoutStateMachine;->isSystemServer:Z

    .line 65
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppScoutStateMachine;->mAppThread:Landroid/app/ActivityThread;

    .line 84
    sget-object v0, Landroid/app/AppScoutStateMachine$AppScoutState;->APP_SCOUT_NORMALLY:Landroid/app/AppScoutStateMachine$AppScoutState;

    iput-object v0, p0, Landroid/app/AppScoutStateMachine;->mScoutState:Landroid/app/AppScoutStateMachine$AppScoutState;

    .line 92
    new-instance v0, Landroid/app/AppScoutStateMachine$DefaultState;

    invoke-direct {v0, p0}, Landroid/app/AppScoutStateMachine$DefaultState;-><init>(Landroid/app/AppScoutStateMachine;)V

    iput-object v0, p0, Landroid/app/AppScoutStateMachine;->mDefaultState:Landroid/app/AppScoutStateMachine$DefaultState;

    .line 93
    new-instance v0, Landroid/app/AppScoutStateMachine$NormalState;

    invoke-direct {v0, p0}, Landroid/app/AppScoutStateMachine$NormalState;-><init>(Landroid/app/AppScoutStateMachine;)V

    iput-object v0, p0, Landroid/app/AppScoutStateMachine;->mNormalState:Landroid/app/AppScoutStateMachine$NormalState;

    .line 94
    new-instance v0, Landroid/app/AppScoutStateMachine$WarningState;

    invoke-direct {v0, p0}, Landroid/app/AppScoutStateMachine$WarningState;-><init>(Landroid/app/AppScoutStateMachine;)V

    iput-object v0, p0, Landroid/app/AppScoutStateMachine;->mWarningState:Landroid/app/AppScoutStateMachine$WarningState;

    .line 95
    new-instance v0, Landroid/app/AppScoutStateMachine$SlowState;

    invoke-direct {v0, p0}, Landroid/app/AppScoutStateMachine$SlowState;-><init>(Landroid/app/AppScoutStateMachine;)V

    iput-object v0, p0, Landroid/app/AppScoutStateMachine;->mSlowState:Landroid/app/AppScoutStateMachine$SlowState;

    .line 96
    new-instance v0, Landroid/app/AppScoutStateMachine$HangState;

    invoke-direct {v0, p0}, Landroid/app/AppScoutStateMachine$HangState;-><init>(Landroid/app/AppScoutStateMachine;)V

    iput-object v0, p0, Landroid/app/AppScoutStateMachine;->mHangState:Landroid/app/AppScoutStateMachine$HangState;

    .line 97
    new-instance v0, Landroid/app/AppScoutStateMachine$HangInputState;

    invoke-direct {v0, p0}, Landroid/app/AppScoutStateMachine$HangInputState;-><init>(Landroid/app/AppScoutStateMachine;)V

    iput-object v0, p0, Landroid/app/AppScoutStateMachine;->mHangInputState:Landroid/app/AppScoutStateMachine$HangInputState;

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "created"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppScoutStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Landroid/app/AppScoutStateMachine;->mDefaultState:Landroid/app/AppScoutStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Landroid/app/AppScoutStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 135
    iget-object v0, p0, Landroid/app/AppScoutStateMachine;->mNormalState:Landroid/app/AppScoutStateMachine$NormalState;

    invoke-virtual {p0, v0}, Landroid/app/AppScoutStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 136
    iget-object v0, p0, Landroid/app/AppScoutStateMachine;->mWarningState:Landroid/app/AppScoutStateMachine$WarningState;

    invoke-virtual {p0, v0}, Landroid/app/AppScoutStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 137
    iget-object v0, p0, Landroid/app/AppScoutStateMachine;->mSlowState:Landroid/app/AppScoutStateMachine$SlowState;

    invoke-virtual {p0, v0}, Landroid/app/AppScoutStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 138
    iget-object v0, p0, Landroid/app/AppScoutStateMachine;->mHangState:Landroid/app/AppScoutStateMachine$HangState;

    invoke-virtual {p0, v0}, Landroid/app/AppScoutStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 139
    iget-object v0, p0, Landroid/app/AppScoutStateMachine;->mHangInputState:Landroid/app/AppScoutStateMachine$HangInputState;

    invoke-virtual {p0, v0}, Landroid/app/AppScoutStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 140
    iget-object v0, p0, Landroid/app/AppScoutStateMachine;->mDefaultState:Landroid/app/AppScoutStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Landroid/app/AppScoutStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 141
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/AppScoutStateMachine;->isSystemServer:Z

    .line 142
    if-eqz p2, :cond_b9

    .line 143
    iput-object p2, p0, Landroid/app/AppScoutStateMachine;->mMonitorThread:Ljava/lang/Thread;

    .line 144
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getMessageMonitor()Landroid/os/perfdebug/MessageMonitor;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppScoutStateMachine;->mMessageMonitor:Landroid/os/perfdebug/MessageMonitor;

    .line 146
    :cond_b9
    return-void
.end method

.method public static blacklist CreateAppScoutStateMachine()Landroid/app/AppScoutStateMachine;
    .registers 3

    .line 113
    new-instance v0, Landroid/app/AppScoutStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-ScoutStateMachine"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AppScoutStateMachine;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "sm":Landroid/app/AppScoutStateMachine;
    invoke-virtual {v0}, Landroid/app/AppScoutStateMachine;->start()V

    .line 115
    return-object v0
.end method

.method public static blacklist CreateAppScoutStateMachine(Landroid/os/HandlerThread;Ljava/lang/String;Ljava/lang/Boolean;)Landroid/app/AppScoutStateMachine;
    .registers 6
    .param p0, "mThread"    # Landroid/os/HandlerThread;
    .param p1, "mName"    # Ljava/lang/String;
    .param p2, "isSystemServer"    # Ljava/lang/Boolean;

    .line 120
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 121
    :cond_4
    new-instance v0, Landroid/app/AppScoutStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-ScoutStateMachine"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p2}, Landroid/app/AppScoutStateMachine;-><init>(Ljava/lang/String;Landroid/os/HandlerThread;Ljava/lang/Boolean;)V

    .line 123
    .local v0, "sm":Landroid/app/AppScoutStateMachine;
    invoke-virtual {v0}, Landroid/app/AppScoutStateMachine;->start()V

    .line 124
    return-object v0
.end method

.method private blacklist checkDestStateInPeriod()V
    .registers 18

    .line 149
    move-object/from16 v0, p0

    sget-object v1, Landroid/app/AppScoutStateMachine$AppScoutState;->APP_SCOUT_NORMALLY:Landroid/app/AppScoutStateMachine$AppScoutState;

    .line 150
    .local v1, "destScoutState":Landroid/app/AppScoutStateMachine$AppScoutState;
    iget-object v2, v0, Landroid/app/AppScoutStateMachine;->mDefaultState:Landroid/app/AppScoutStateMachine$DefaultState;

    .line 151
    .local v2, "destState":Lcom/android/internal/util/State;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AppScoutStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 152
    .local v4, "nextMessage":Landroid/os/Message;
    iget-object v5, v0, Landroid/app/AppScoutStateMachine;->mCurrentMsg:Landroid/os/Message;

    iput-object v5, v0, Landroid/app/AppScoutStateMachine;->mLastMsg:Landroid/os/Message;

    .line 153
    iget-object v5, v0, Landroid/app/AppScoutStateMachine;->mCurrentEvent:Landroid/view/InputEvent;

    iput-object v5, v0, Landroid/app/AppScoutStateMachine;->mLastEvent:Landroid/view/InputEvent;

    .line 154
    iget-object v5, v0, Landroid/app/AppScoutStateMachine;->mMessageMonitor:Landroid/os/perfdebug/MessageMonitor;

    invoke-virtual {v5}, Landroid/os/perfdebug/MessageMonitor;->getRunningMessage()Landroid/os/Message;

    move-result-object v5

    iput-object v5, v0, Landroid/app/AppScoutStateMachine;->mCurrentMsg:Landroid/os/Message;

    .line 155
    iget-object v5, v0, Landroid/app/AppScoutStateMachine;->mMessageMonitor:Landroid/os/perfdebug/MessageMonitor;

    invoke-virtual {v5}, Landroid/os/perfdebug/MessageMonitor;->getRunningMessageDuration()J

    move-result-wide v5

    iput-wide v5, v0, Landroid/app/AppScoutStateMachine;->mMsgDuration:J

    .line 156
    iget-object v5, v0, Landroid/app/AppScoutStateMachine;->mMessageMonitor:Landroid/os/perfdebug/MessageMonitor;

    invoke-virtual {v5}, Landroid/os/perfdebug/MessageMonitor;->getRunningEvent()Landroid/view/InputEvent;

    move-result-object v5

    iput-object v5, v0, Landroid/app/AppScoutStateMachine;->mCurrentEvent:Landroid/view/InputEvent;

    .line 157
    if-eqz v5, :cond_36

    .line 158
    iget-object v6, v0, Landroid/app/AppScoutStateMachine;->mMessageMonitor:Landroid/os/perfdebug/MessageMonitor;

    invoke-virtual {v6, v5}, Landroid/os/perfdebug/MessageMonitor;->getRunningEventDuration(Landroid/view/InputEvent;)J

    move-result-wide v5

    iput-wide v5, v0, Landroid/app/AppScoutStateMachine;->mEventDuration:J

    goto :goto_3a

    .line 160
    :cond_36
    const-wide/16 v5, 0x0

    iput-wide v5, v0, Landroid/app/AppScoutStateMachine;->mEventDuration:J

    .line 162
    :goto_3a
    const-wide/16 v5, 0x9c4

    iput-wide v5, v0, Landroid/app/AppScoutStateMachine;->mAdoptTimeout:J

    .line 164
    iget-object v7, v0, Landroid/app/AppScoutStateMachine;->mCurrentMsg:Landroid/os/Message;

    const-string v8, " ms"

    const-string v9, " ms keyEvent "

    const-string v10, "MIUIScout App"

    if-eqz v7, :cond_52

    iget-object v11, v0, Landroid/app/AppScoutStateMachine;->mLastMsg:Landroid/os/Message;

    if-ne v11, v7, :cond_52

    iget-wide v11, v0, Landroid/app/AppScoutStateMachine;->mMsgDuration:J

    cmp-long v11, v11, v5

    if-gtz v11, :cond_60

    :cond_52
    iget-object v11, v0, Landroid/app/AppScoutStateMachine;->mCurrentEvent:Landroid/view/InputEvent;

    if-eqz v11, :cond_c0

    iget-object v12, v0, Landroid/app/AppScoutStateMachine;->mLastEvent:Landroid/view/InputEvent;

    if-ne v12, v11, :cond_c0

    iget-wide v12, v0, Landroid/app/AppScoutStateMachine;->mEventDuration:J

    cmp-long v12, v12, v5

    if-lez v12, :cond_c0

    .line 166
    :cond_60
    sget-object v3, Landroid/app/AppScoutStateMachine$2;->$SwitchMap$android$app$AppScoutStateMachine$AppScoutState:[I

    iget-object v5, v0, Landroid/app/AppScoutStateMachine;->mScoutState:Landroid/app/AppScoutStateMachine$AppScoutState;

    invoke-virtual {v5}, Landroid/app/AppScoutStateMachine$AppScoutState;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_168

    .line 185
    move-object/from16 v16, v4

    goto/16 :goto_159

    .line 172
    :pswitch_71
    sget-boolean v3, Landroid/app/AppScoutStateMachine;->ENABLED_SCOUT_DEBUG:Z

    if-eqz v3, :cond_9b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "this message already handled for msg "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v5, v0, Landroid/app/AppScoutStateMachine;->mMsgDuration:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v5, v0, Landroid/app/AppScoutStateMachine;->mEventDuration:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_9b
    iget-wide v5, v0, Landroid/app/AppScoutStateMachine;->mMsgDuration:J

    const-wide/16 v7, 0x1388

    cmp-long v3, v5, v7

    if-gtz v3, :cond_b5

    iget-wide v5, v0, Landroid/app/AppScoutStateMachine;->mEventDuration:J

    cmp-long v3, v5, v7

    if-lez v3, :cond_aa

    goto :goto_b5

    .line 179
    :cond_aa
    iget-object v2, v0, Landroid/app/AppScoutStateMachine;->mWarningState:Landroid/app/AppScoutStateMachine$WarningState;

    .line 180
    sget-object v1, Landroid/app/AppScoutStateMachine$AppScoutState;->APP_SCOUT_WARNING:Landroid/app/AppScoutStateMachine$AppScoutState;

    .line 181
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/app/AppScoutStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 183
    goto/16 :goto_15b

    .line 175
    :cond_b5
    :goto_b5
    iget-object v2, v0, Landroid/app/AppScoutStateMachine;->mHangState:Landroid/app/AppScoutStateMachine$HangState;

    .line 176
    sget-object v1, Landroid/app/AppScoutStateMachine$AppScoutState;->APP_SCOUT_HANG:Landroid/app/AppScoutStateMachine$AppScoutState;

    .line 177
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/app/AppScoutStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    goto/16 :goto_15b

    .line 187
    :cond_c0
    const/4 v12, 0x3

    const-wide/16 v13, 0x1f4

    if-eqz v7, :cond_d2

    iget-object v15, v0, Landroid/app/AppScoutStateMachine;->mLastMsg:Landroid/os/Message;

    if-eq v15, v7, :cond_d2

    move-object/from16 v16, v4

    .end local v4    # "nextMessage":Landroid/os/Message;
    .local v16, "nextMessage":Landroid/os/Message;
    iget-wide v3, v0, Landroid/app/AppScoutStateMachine;->mMsgDuration:J

    cmp-long v3, v3, v13

    if-gtz v3, :cond_e0

    goto :goto_d4

    .end local v16    # "nextMessage":Landroid/os/Message;
    .restart local v4    # "nextMessage":Landroid/os/Message;
    :cond_d2
    move-object/from16 v16, v4

    .end local v4    # "nextMessage":Landroid/os/Message;
    .restart local v16    # "nextMessage":Landroid/os/Message;
    :goto_d4
    if-eqz v11, :cond_138

    iget-object v3, v0, Landroid/app/AppScoutStateMachine;->mLastEvent:Landroid/view/InputEvent;

    if-eq v3, v11, :cond_138

    iget-wide v3, v0, Landroid/app/AppScoutStateMachine;->mEventDuration:J

    cmp-long v3, v3, v13

    if-lez v3, :cond_138

    .line 189
    :cond_e0
    if-eqz v7, :cond_e8

    .line 190
    iget-wide v3, v0, Landroid/app/AppScoutStateMachine;->mMsgDuration:J

    sub-long/2addr v5, v3

    iput-wide v5, v0, Landroid/app/AppScoutStateMachine;->mAdoptTimeout:J

    goto :goto_ed

    .line 192
    :cond_e8
    iget-wide v3, v0, Landroid/app/AppScoutStateMachine;->mEventDuration:J

    sub-long/2addr v5, v3

    iput-wide v5, v0, Landroid/app/AppScoutStateMachine;->mAdoptTimeout:J

    .line 194
    :goto_ed
    sget-boolean v3, Landroid/app/AppScoutStateMachine;->ENABLED_SCOUT_DEBUG:Z

    if-eqz v3, :cond_117

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new message already handled for msg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Landroid/app/AppScoutStateMachine;->mMsgDuration:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Landroid/app/AppScoutStateMachine;->mEventDuration:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_117
    sget-object v3, Landroid/app/AppScoutStateMachine$2;->$SwitchMap$android$app$AppScoutStateMachine$AppScoutState:[I

    iget-object v4, v0, Landroid/app/AppScoutStateMachine;->mScoutState:Landroid/app/AppScoutStateMachine$AppScoutState;

    invoke-virtual {v4}, Landroid/app/AppScoutStateMachine$AppScoutState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_176

    .line 211
    goto :goto_159

    .line 206
    :pswitch_125
    iget-object v2, v0, Landroid/app/AppScoutStateMachine;->mSlowState:Landroid/app/AppScoutStateMachine$SlowState;

    .line 207
    sget-object v1, Landroid/app/AppScoutStateMachine$AppScoutState;->APP_SCOUT_SLOW:Landroid/app/AppScoutStateMachine$AppScoutState;

    .line 208
    invoke-virtual {v0, v12}, Landroid/app/AppScoutStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 209
    .end local v16    # "nextMessage":Landroid/os/Message;
    .restart local v4    # "nextMessage":Landroid/os/Message;
    goto :goto_15b

    .line 201
    .end local v4    # "nextMessage":Landroid/os/Message;
    .restart local v16    # "nextMessage":Landroid/os/Message;
    :pswitch_12e
    iget-object v2, v0, Landroid/app/AppScoutStateMachine;->mNormalState:Landroid/app/AppScoutStateMachine$NormalState;

    .line 202
    sget-object v1, Landroid/app/AppScoutStateMachine$AppScoutState;->APP_SCOUT_NORMALLY:Landroid/app/AppScoutStateMachine$AppScoutState;

    .line 203
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AppScoutStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 204
    .end local v16    # "nextMessage":Landroid/os/Message;
    .restart local v4    # "nextMessage":Landroid/os/Message;
    goto :goto_15b

    .line 214
    .end local v4    # "nextMessage":Landroid/os/Message;
    .restart local v16    # "nextMessage":Landroid/os/Message;
    :cond_138
    sget-object v3, Landroid/app/AppScoutStateMachine$2;->$SwitchMap$android$app$AppScoutStateMachine$AppScoutState:[I

    iget-object v4, v0, Landroid/app/AppScoutStateMachine;->mScoutState:Landroid/app/AppScoutStateMachine$AppScoutState;

    invoke-virtual {v4}, Landroid/app/AppScoutStateMachine$AppScoutState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_184

    goto :goto_159

    .line 224
    :pswitch_146
    iget-object v2, v0, Landroid/app/AppScoutStateMachine;->mSlowState:Landroid/app/AppScoutStateMachine$SlowState;

    .line 225
    sget-object v1, Landroid/app/AppScoutStateMachine$AppScoutState;->APP_SCOUT_SLOW:Landroid/app/AppScoutStateMachine$AppScoutState;

    .line 226
    invoke-virtual {v0, v12}, Landroid/app/AppScoutStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 227
    .end local v16    # "nextMessage":Landroid/os/Message;
    .restart local v4    # "nextMessage":Landroid/os/Message;
    goto :goto_15b

    .line 219
    .end local v4    # "nextMessage":Landroid/os/Message;
    .restart local v16    # "nextMessage":Landroid/os/Message;
    :pswitch_14f
    iget-object v2, v0, Landroid/app/AppScoutStateMachine;->mNormalState:Landroid/app/AppScoutStateMachine$NormalState;

    .line 220
    sget-object v1, Landroid/app/AppScoutStateMachine$AppScoutState;->APP_SCOUT_NORMALLY:Landroid/app/AppScoutStateMachine$AppScoutState;

    .line 221
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AppScoutStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 222
    .end local v16    # "nextMessage":Landroid/os/Message;
    .restart local v4    # "nextMessage":Landroid/os/Message;
    goto :goto_15b

    .line 233
    .end local v4    # "nextMessage":Landroid/os/Message;
    .restart local v16    # "nextMessage":Landroid/os/Message;
    :goto_159
    move-object/from16 v4, v16

    .end local v16    # "nextMessage":Landroid/os/Message;
    .restart local v4    # "nextMessage":Landroid/os/Message;
    :goto_15b
    iget-object v3, v0, Landroid/app/AppScoutStateMachine;->mScoutState:Landroid/app/AppScoutStateMachine$AppScoutState;

    if-eq v3, v1, :cond_162

    .line 234
    invoke-virtual {v0, v2}, Landroid/app/AppScoutStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 236
    :cond_162
    iget-wide v5, v0, Landroid/app/AppScoutStateMachine;->mAdoptTimeout:J

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/AppScoutStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 237
    return-void

    :pswitch_data_168
    .packed-switch 0x1
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
    .end packed-switch

    :pswitch_data_176
    .packed-switch 0x1
        :pswitch_12e
        :pswitch_12e
        :pswitch_125
        :pswitch_12e
        :pswitch_12e
    .end packed-switch

    :pswitch_data_184
    .packed-switch 0x1
        :pswitch_14f
        :pswitch_14f
        :pswitch_146
        :pswitch_14f
        :pswitch_14f
    .end packed-switch
.end method

.method private blacklist dumpThreadTrace(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "mEventName"    # Ljava/lang/String;
    .param p2, "mDirName"    # Ljava/lang/String;

    .line 296
    sget-boolean v0, Lmiui/mqsas/scout/ScoutUtils;->REBOOT_COREDUMP:Z

    if-eqz v0, :cond_5

    return-void

    .line 298
    :cond_5
    iget-object v0, p0, Landroid/app/AppScoutStateMachine;->mMonitorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_18

    .line 299
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/app/AppScoutStateMachine$1;

    invoke-direct {v1, p0, p2, p1}, Landroid/app/AppScoutStateMachine$1;-><init>(Landroid/app/AppScoutStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dumpScoutTrace"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 322
    :cond_18
    return-void
.end method

.method private blacklist getDirName(Ljava/lang/String;ILjava/lang/String;J)Ljava/lang/String;
    .registers 9
    .param p1, "pkn"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "eventName"    # Ljava/lang/String;
    .param p4, "currentTime"    # J

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p4, p5}, Landroid/app/AppScoutStateMachine;->getFormatDateTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "dirName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump trace dirName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppScoutStateMachine"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-object v0
.end method

.method private blacklist getFormatDateTime(J)Ljava/lang/String;
    .registers 7
    .param p1, "timeMillis"    # J

    .line 240
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 241
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 242
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static native blacklist nWalkStackAll(Ljava/lang/String;)V
.end method

.method private blacklist reportAppScoutEventToMqs(I)V
    .registers 3
    .param p1, "mEventType"    # I

    .line 255
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/AppScoutStateMachine;->reportAppScoutEventToMqs(IZ)V

    .line 256
    return-void
.end method

.method private blacklist reportAppScoutEventToMqs(IZ)V
    .registers 18
    .param p1, "mEventType"    # I
    .param p2, "mNeedDumpTrace"    # Z

    .line 259
    move-object v6, p0

    sget-object v0, Landroid/app/AppScoutStateMachine;->sAppTypeMap:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 260
    .local v7, "mEventName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 261
    .local v8, "mTimeStamp":J
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    .line 262
    .local v10, "mPid":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v11

    .line 263
    .local v11, "mUid":I
    invoke-static {}, Lmiui/mqsas/sdk/ApplicationInfoStorage;->getInstance()Lmiui/mqsas/sdk/ApplicationInfoStorage;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/mqsas/sdk/ApplicationInfoStorage;->getIsSystem()Z

    move-result v12

    .line 264
    .local v12, "isSystem":Z
    const-string v0, ""

    .line 265
    .local v0, "mProcessName":Ljava/lang/String;
    const-string v1, ""

    .line 266
    .local v1, "mPackageName":Ljava/lang/String;
    iget-boolean v2, v6, Landroid/app/AppScoutStateMachine;->isSystemServer:Z

    if-eqz v2, :cond_31

    .line 267
    const-string v0, "system_server"

    .line 268
    const-string v1, "system_server"

    move-object v13, v0

    move-object v14, v1

    goto :goto_42

    .line 269
    :cond_31
    iget-object v2, v6, Landroid/app/AppScoutStateMachine;->mAppThread:Landroid/app/ActivityThread;

    if-eqz v2, :cond_40

    .line 270
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v13, v0

    move-object v14, v1

    goto :goto_42

    .line 269
    :cond_40
    move-object v13, v0

    move-object v14, v1

    .line 273
    .end local v0    # "mProcessName":Ljava/lang/String;
    .end local v1    # "mPackageName":Ljava/lang/String;
    .local v13, "mProcessName":Ljava/lang/String;
    .local v14, "mPackageName":Ljava/lang/String;
    :goto_42
    if-eqz p2, :cond_50

    .line 274
    move-object v0, p0

    move-object v1, v14

    move v2, v10

    move-object v3, v7

    move-wide v4, v8

    invoke-direct/range {v0 .. v5}, Landroid/app/AppScoutStateMachine;->getDirName(Ljava/lang/String;ILjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Landroid/app/AppScoutStateMachine;->dumpThreadTrace(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_50
    invoke-static {}, Landroid/app/ActivityThreadStub;->get()Landroid/app/ActivityThreadStub;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThreadImpl;

    .line 278
    .local v0, "mActivityThreadImpl":Landroid/app/ActivityThreadImpl;
    iget-boolean v1, v0, Landroid/app/ActivityThreadImpl;->registerMqsResult:Z

    if-nez v1, :cond_68

    .line 279
    sget-boolean v1, Landroid/app/AppScoutStateMachine;->ENABLED_SCOUT_DEBUG:Z

    if-eqz v1, :cond_65

    const-string v1, "AppScoutStateMachine"

    const-string v2, "reportAppScoutEventToMqs registerApplicationScoutThread again"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_65
    invoke-virtual {v0, v10}, Landroid/app/ActivityThreadImpl;->registerApplicationScoutThread(I)V

    .line 282
    :cond_68
    iget-object v1, v6, Landroid/app/AppScoutStateMachine;->mScoutEvent:Lmiui/mqsas/sdk/event/AppScoutEvent;

    invoke-virtual {v1}, Lmiui/mqsas/sdk/event/AppScoutEvent;->clear()V

    .line 283
    iget-object v1, v6, Landroid/app/AppScoutStateMachine;->mScoutEvent:Lmiui/mqsas/sdk/event/AppScoutEvent;

    invoke-virtual {v1, v10}, Lmiui/mqsas/sdk/event/AppScoutEvent;->setPid(I)V

    .line 284
    iget-object v1, v6, Landroid/app/AppScoutStateMachine;->mScoutEvent:Lmiui/mqsas/sdk/event/AppScoutEvent;

    invoke-virtual {v1, v11}, Lmiui/mqsas/sdk/event/AppScoutEvent;->setUid(I)V

    .line 285
    iget-object v1, v6, Landroid/app/AppScoutStateMachine;->mScoutEvent:Lmiui/mqsas/sdk/event/AppScoutEvent;

    invoke-virtual {v1, v13}, Lmiui/mqsas/sdk/event/AppScoutEvent;->setProcessName(Ljava/lang/String;)V

    .line 286
    iget-object v1, v6, Landroid/app/AppScoutStateMachine;->mScoutEvent:Lmiui/mqsas/sdk/event/AppScoutEvent;

    invoke-virtual {v1, v14}, Lmiui/mqsas/sdk/event/AppScoutEvent;->setPackageName(Ljava/lang/String;)V

    .line 287
    iget-object v1, v6, Landroid/app/AppScoutStateMachine;->mScoutEvent:Lmiui/mqsas/sdk/event/AppScoutEvent;

    iget-object v2, v6, Landroid/app/AppScoutStateMachine;->mMessageMonitor:Landroid/os/perfdebug/MessageMonitor;

    invoke-virtual {v2}, Landroid/os/perfdebug/MessageMonitor;->getRunningMessageInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/mqsas/sdk/event/AppScoutEvent;->setCurrentMsg(Ljava/lang/String;)V

    .line 288
    iget-object v1, v6, Landroid/app/AppScoutStateMachine;->mScoutEvent:Lmiui/mqsas/sdk/event/AppScoutEvent;

    invoke-virtual {v1, v8, v9}, Lmiui/mqsas/sdk/event/AppScoutEvent;->setTimeStamp(J)V

    .line 289
    iget-object v1, v6, Landroid/app/AppScoutStateMachine;->mScoutEvent:Lmiui/mqsas/sdk/event/AppScoutEvent;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Lmiui/mqsas/sdk/event/AppScoutEvent;->setType(I)V

    .line 290
    iget-object v1, v6, Landroid/app/AppScoutStateMachine;->mScoutEvent:Lmiui/mqsas/sdk/event/AppScoutEvent;

    iget v3, v6, Landroid/app/AppScoutStateMachine;->mInputLatency:I

    invoke-virtual {v1, v3}, Lmiui/mqsas/sdk/event/AppScoutEvent;->setInputLatency(I)V

    .line 291
    iget-object v1, v6, Landroid/app/AppScoutStateMachine;->mScoutEvent:Lmiui/mqsas/sdk/event/AppScoutEvent;

    invoke-virtual {v1, v12}, Lmiui/mqsas/sdk/event/AppScoutEvent;->setIsSystemApp(Z)V

    .line 292
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v1

    iget-object v3, v6, Landroid/app/AppScoutStateMachine;->mScoutEvent:Lmiui/mqsas/sdk/event/AppScoutEvent;

    invoke-virtual {v1, v3}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportAppScoutEvent(Lmiui/mqsas/sdk/event/AppScoutEvent;)V

    .line 293
    return-void
.end method
