.class public Lcom/android/server/biometrics/sensors/face/FaceShellCommand;
.super Landroid/os/ShellCommand;
.source "FaceShellCommand.java"


# instance fields
.field public final mService:Lcom/android/server/biometrics/sensors/face/FaceService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/FaceService;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceShellCommand;->mService:Lcom/android/server/biometrics/sensors/face/FaceService;

    return-void
.end method


# virtual methods
.method public final doHelp()I
    .registers 1

    .line 69
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/FaceShellCommand;->onHelp()V

    const/4 p0, 0x0

    return p0
.end method

.method public final doNotify()I
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceShellCommand;->mService:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->sendFaceReEnrollNotification()V

    const/4 p0, 0x0

    return p0
.end method

.method public final doSync()I
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceShellCommand;->mService:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->syncEnrollmentsNow()V

    const/4 p0, 0x0

    return p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 5

    if-nez p1, :cond_7

    .line 35
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/FaceShellCommand;->onHelp()V

    const/4 p0, 0x1

    return p0

    .line 40
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x30cf41

    if-eq v0, v1, :cond_39

    const v1, 0x361a9b

    if-eq v0, v1, :cond_2b

    const v1, 0x237a88eb

    if-eq v0, v1, :cond_1b

    goto :goto_46

    :cond_1b
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 46
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/FaceShellCommand;->doNotify()I

    move-result p0

    return p0

    :catch_29
    move-exception p1

    goto :goto_5f

    .line 40
    :cond_2b
    const-string/jumbo v0, "sync"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 44
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/FaceShellCommand;->doSync()I

    move-result p0

    return p0

    .line 40
    :cond_39
    const-string v0, "help"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 42
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/FaceShellCommand;->doHelp()I

    move-result p0

    return p0

    .line 48
    :cond_46
    :goto_46
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_5e} :catch_29

    goto :goto_77

    .line 51
    :goto_5f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_77
    const/4 p0, -0x1

    return p0
.end method

.method public onHelp()V
    .registers 2

    .line 58
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 59
    const-string v0, "Face Service commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    const-string v0, "      Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    const-string v0, "  sync"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    const-string v0, "      Sync enrollments now (virtualized sensors only)."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    const-string v0, "  notification"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    const-string v0, "     Sends a Face re-enrollment notification"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
