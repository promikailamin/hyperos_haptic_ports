.class public Landroid/os/perfdebug/ServiceMonitor;
.super Ljava/lang/Object;
.source "ServiceMonitor.java"


# static fields
.field public static final blacklist SERVICE_START_TYPE_BIND:I = 0x2

.field public static final blacklist SERVICE_START_TYPE_CREATE:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist newServiceMonitor()Landroid/os/perfdebug/ServiceMonitor;
    .registers 1

    .line 13
    const-class v0, Landroid/os/perfdebug/ServiceMonitor;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/perfdebug/ServiceMonitor;

    return-object v0
.end method


# virtual methods
.method public blacklist monitorCreateBegin(I)V
    .registers 2
    .param p1, "serviceStartType"    # I

    .line 20
    return-void
.end method

.method public blacklist monitorCreateEnd(Landroid/content/pm/ServiceInfo;ZLjava/lang/String;Ljava/lang/String;II)V
    .registers 7
    .param p1, "info"    # Landroid/content/pm/ServiceInfo;
    .param p2, "isForeground"    # Z
    .param p3, "callerPackage"    # Ljava/lang/String;
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "pid"    # I

    .line 25
    return-void
.end method
