.class public Landroid/os/perfdebug/OtherMethodMonitor;
.super Ljava/lang/Object;
.source "OtherMethodMonitor.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/os/perfdebug/OtherMethodMonitor;
    .registers 1

    .line 12
    const-class v0, Landroid/os/perfdebug/OtherMethodMonitor;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/perfdebug/OtherMethodMonitor;

    return-object v0
.end method


# virtual methods
.method public blacklist markMonitor(Ljava/lang/String;JJ)V
    .registers 6
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "timeoutTime"    # J
    .param p4, "monitorBeginTime"    # J

    .line 16
    return-void
.end method

.method public blacklist markMonitor(Ljava/lang/String;JJI)V
    .registers 7
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "timeoutTime"    # J
    .param p4, "monitorBeginTime"    # J
    .param p6, "curProcState"    # I

    .line 19
    return-void
.end method
