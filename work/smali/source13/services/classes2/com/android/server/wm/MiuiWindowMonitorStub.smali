.class public Lcom/android/server/wm/MiuiWindowMonitorStub;
.super Ljava/lang/Object;
.source "MiuiWindowMonitorStub.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MiuiWindowMonitorStub"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/wm/MiuiWindowMonitorStub;
    .registers 1

    .line 20
    const-class v0, Lcom/android/server/wm/MiuiWindowMonitorStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MiuiWindowMonitorStub;

    return-object v0
.end method


# virtual methods
.method public addWindowInfoLocked(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "windowName"    # Ljava/lang/String;
    .param p5, "type"    # I

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)I
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 27
    return-void
.end method

.method public onProcessDiedLocked(ILcom/android/server/am/ProcessRecord;)V
    .registers 3
    .param p1, "pid"    # I
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 47
    return-void
.end method

.method public removeWindowInfoLocked(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 41
    return-void
.end method
