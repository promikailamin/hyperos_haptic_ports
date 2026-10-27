.class public Lcom/android/internal/os/ZygoteInitImpl;
.super Lcom/android/internal/os/ZygoteInitStub;
.source "ZygoteInitImpl.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ZygoteInitImpl"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/android/internal/os/ZygoteInitStub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist checkUsapAllowed(Z)Z
    .registers 3
    .param p1, "isArm64"    # Z

    .line 33
    if-eqz p1, :cond_4

    .line 34
    const/4 v0, 0x1

    return v0

    .line 36
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist loadSoBridge()V
    .registers 1

    .line 30
    return-void
.end method

.method public blacklist setLastZygotePid()V
    .registers 4

    .line 15
    const-string v0, "persist.sys.zygote.start_pid"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    .local v1, "zygote_pid":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myPpid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 17
    const-string v2, "persist.sys.zygote.last_pid"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Landroid/os/Process;->myPpid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_26
    return-void
.end method
