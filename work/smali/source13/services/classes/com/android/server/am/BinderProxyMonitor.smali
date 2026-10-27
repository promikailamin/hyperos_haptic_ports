.class public Lcom/android/server/am/BinderProxyMonitor;
.super Ljava/lang/Object;
.source "BinderProxyMonitor.java"


# static fields
.field private static final INSTANCE:Lcom/android/server/am/BinderProxyMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    sget-boolean v0, Landroid/os/BinderStub;->ENABLED:Z

    if-eqz v0, :cond_d

    const-class v0, Lcom/android/server/am/BinderProxyMonitor;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BinderProxyMonitor;

    goto :goto_12

    :cond_d
    new-instance v0, Lcom/android/server/am/BinderProxyMonitor;

    invoke-direct {v0}, Lcom/android/server/am/BinderProxyMonitor;-><init>()V

    :goto_12
    sput-object v0, Lcom/android/server/am/BinderProxyMonitor;->INSTANCE:Lcom/android/server/am/BinderProxyMonitor;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get()Lcom/android/server/am/BinderProxyMonitor;
    .registers 1

    .line 14
    sget-object v0, Lcom/android/server/am/BinderProxyMonitor;->INSTANCE:Lcom/android/server/am/BinderProxyMonitor;

    return-object v0
.end method


# virtual methods
.method handleDumpBinderProxies(Lcom/android/server/am/ActivityManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)Z
    .registers 7
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "opti"    # I

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method trackBinderAllocations(Lcom/android/server/am/ActivityManagerService;I)V
    .registers 3
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "targetUid"    # I

    .line 18
    return-void
.end method

.method trackProcBinderAllocations(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V
    .registers 3
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "targetProc"    # Lcom/android/server/am/ProcessRecord;

    .line 21
    return-void
.end method
