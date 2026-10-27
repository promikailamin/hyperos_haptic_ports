.class public Landroid/os/perfdebug/ChoreographerMonitor;
.super Ljava/lang/Object;
.source "ChoreographerMonitor.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist newChoreographerMonitor()Landroid/os/perfdebug/ChoreographerMonitor;
    .registers 1

    .line 12
    const-class v0, Landroid/os/perfdebug/ChoreographerMonitor;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/perfdebug/ChoreographerMonitor;

    return-object v0
.end method


# virtual methods
.method public blacklist monitorCallbackExecuteBegin(ILjava/lang/Object;J)V
    .registers 5
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Object;
    .param p3, "dueTime"    # J

    .line 22
    return-void
.end method

.method public blacklist monitorCallbackExecuteEnd()V
    .registers 1

    .line 25
    return-void
.end method

.method public blacklist monitorDoFrameBegin()V
    .registers 1

    .line 16
    return-void
.end method

.method public blacklist monitorDoFrameEnd()V
    .registers 1

    .line 19
    return-void
.end method
