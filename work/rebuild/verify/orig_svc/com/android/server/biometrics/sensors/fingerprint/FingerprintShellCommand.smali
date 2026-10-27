.class public Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;
.super Landroid/os/ShellCommand;
.source "FingerprintShellCommand.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;->mService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    return-void
.end method


# virtual methods
.method public final doHelp()I
    .registers 1

    .line 76
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;->onHelp()V

    const/4 p0, 0x0

    return p0
.end method

.method public final doNotify()I
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;->mService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->sendFingerprintReEnrollNotification()V

    const/4 p0, 0x0

    return p0
.end method

.method public final doSimulateVhalFingerDown()I
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;->mService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->simulateVhalFingerDown()V

    const/4 p0, 0x0

    return p0
.end method

.method public final doSync()I
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;->mService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->syncEnrollmentsNow()V

    const/4 p0, 0x0

    return p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 5

    if-nez p1, :cond_7

    .line 38
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;->onHelp()V

    const/4 p0, 0x1

    return p0

    .line 43
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_7a

    goto :goto_47

    :sswitch_f
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 51
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;->doNotify()I

    move-result p0

    return p0

    :catch_1d
    move-exception p1

    goto :goto_60

    .line 43
    :sswitch_1f
    const-string/jumbo v0, "sync"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 47
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;->doSync()I

    move-result p0

    return p0

    .line 43
    :sswitch_2d
    const-string v0, "help"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 45
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;->doHelp()I

    move-result p0

    return p0

    .line 43
    :sswitch_3a
    const-string v0, "fingerdown"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 49
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;->doSimulateVhalFingerDown()I

    move-result p0

    return p0

    .line 53
    :cond_47
    :goto_47
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
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_5f} :catch_1d

    goto :goto_78

    .line 56
    :goto_60
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

    :goto_78
    const/4 p0, -0x1

    return p0

    :sswitch_data_7a
    .sparse-switch
        -0x3c793475 -> :sswitch_3a
        0x30cf41 -> :sswitch_2d
        0x361a9b -> :sswitch_1f
        0x237a88eb -> :sswitch_f
    .end sparse-switch
.end method

.method public onHelp()V
    .registers 2

    .line 63
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 64
    const-string v0, "Fingerprint Service commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    const-string v0, "      Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    const-string v0, "  sync"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    const-string v0, "      Sync enrollments now (virtualized sensors only)."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    const-string v0, "  fingerdown"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    const-string v0, "      Simulate finger down event (virtualized sensors only)."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    const-string v0, "  notification"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    const-string v0, "     Sends a Fingerprint re-enrollment notification"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
