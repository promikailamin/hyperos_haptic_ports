.class public Landroid/os/perfdebug/MessageMonitor;
.super Ljava/lang/Object;
.source "MessageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;
    }
.end annotation


# instance fields
.field blacklist TAG:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "MessageMonitor"

    iput-object v0, p0, Landroid/os/perfdebug/MessageMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static blacklist newMessageMonitor()Landroid/os/perfdebug/MessageMonitor;
    .registers 1

    .line 21
    const-class v0, Landroid/os/perfdebug/MessageMonitor;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/perfdebug/MessageMonitor;

    return-object v0
.end method

.method public static blacklist newMessageMonitorInfo()Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;
    .registers 1

    .line 26
    const-class v0, Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;

    return-object v0
.end method


# virtual methods
.method public blacklist checkInputEvent(Landroid/view/InputEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 52
    return-void
.end method

.method public blacklist dumpAll(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "prefix"    # Ljava/lang/String;

    .line 56
    const-string v0, ""

    return-object v0
.end method

.method public blacklist dumpAllLoopers(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 60
    return-void
.end method

.method public blacklist enableMonitorEvent(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 101
    return-void
.end method

.method public blacklist enableMonitorMessage(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 42
    return-void
.end method

.method public blacklist getHistoryLongMessagesInfoInPeriod(JI)Ljava/util/List;
    .registers 5
    .param p1, "anrtime"    # J
    .param p3, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getHistoryMsgInfoStringInPeriod(JI)Ljava/util/List;
    .registers 5
    .param p1, "anrtime"    # J
    .param p3, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLongestMessageInPeriod(JI)Ljava/lang/String;
    .registers 5
    .param p1, "anrtime"    # J
    .param p3, "duration"    # I

    .line 72
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getRunningEvent()Landroid/view/InputEvent;
    .registers 2

    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRunningEventDuration(Landroid/view/InputEvent;)J
    .registers 4
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 91
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getRunningMessage()Landroid/os/Message;
    .registers 2

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRunningMessageDuration()J
    .registers 3

    .line 63
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getRunningMessageInfo()Ljava/lang/String;
    .registers 2

    .line 68
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getThreadTid()I
    .registers 2

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist init()V
    .registers 3

    .line 30
    iget-object v0, p0, Landroid/os/perfdebug/MessageMonitor;->TAG:Ljava/lang/String;

    const-string v1, "Init MessageMonitor"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method

.method public blacklist isMonitorLooper()Z
    .registers 2

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist markDispatch(Landroid/os/Message;Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "msginfo"    # Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;

    .line 48
    return-void
.end method

.method public blacklist markFinish(Landroid/os/Message;Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "msginfo"    # Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;

    .line 50
    return-void
.end method

.method public blacklist markInputEventDispatch(Landroid/view/InputEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 95
    return-void
.end method

.method public blacklist markInputEventDispatchFinish(Landroid/view/InputEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 98
    return-void
.end method

.method public blacklist setThreadNameAndTid(Ljava/lang/String;I)V
    .registers 3
    .param p1, "threadName"    # Ljava/lang/String;
    .param p2, "tid"    # I

    .line 36
    return-void
.end method
