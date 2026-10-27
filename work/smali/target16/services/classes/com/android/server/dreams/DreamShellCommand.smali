.class public Lcom/android/server/dreams/DreamShellCommand;
.super Landroid/os/ShellCommand;
.source "DreamShellCommand.java"


# instance fields
.field public final mService:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/server/dreams/DreamShellCommand;->mService:Lcom/android/server/dreams/DreamManagerService;

    return-void
.end method


# virtual methods
.method public final enforceCallerIsRoot()V
    .registers 2

    .line 74
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 75
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Must be root to call Dream shell commands"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 4

    .line 47
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0xaf33596

    if-eq v0, v1, :cond_22

    const v1, 0x57d5fa0a

    if-eq v0, v1, :cond_f

    goto :goto_33

    :cond_f
    const-string/jumbo v0, "start-dreaming"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 49
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamShellCommand;->enforceCallerIsRoot()V

    .line 50
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamShellCommand;->startDreaming()I

    move-result p0

    return p0

    :catch_20
    move-exception p1

    goto :goto_38

    .line 47
    :cond_22
    const-string/jumbo v0, "stop-dreaming"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 52
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamShellCommand;->enforceCallerIsRoot()V

    .line 53
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamShellCommand;->stopDreaming()I

    move-result p0

    return p0

    .line 55
    :cond_33
    :goto_33
    invoke-super {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0
    :try_end_37
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_37} :catch_20

    return p0

    .line 58
    :goto_38
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 p0, -0x1

    return p0
.end method

.method public onHelp()V
    .registers 2

    .line 81
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 82
    const-string v0, "Dream manager (dreams) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    const-string v0, "      Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    const-string v0, "  start-dreaming"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    const-string v0, "      Start the currently configured dream."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    const-string v0, "  stop-dreaming"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    const-string v0, "      Stops any active dream"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final startDreaming()I
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/android/server/dreams/DreamShellCommand;->mService:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->requestStartDreamFromShell()V

    const/4 p0, 0x0

    return p0
.end method

.method public final stopDreaming()I
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/android/server/dreams/DreamShellCommand;->mService:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->requestStopDreamFromShell()V

    const/4 p0, 0x0

    return p0
.end method
