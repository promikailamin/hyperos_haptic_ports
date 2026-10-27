.class public final Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "ContentCaptureManagerServiceShellCommand.java"


# instance fields
.field public final mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;


# direct methods
.method public static synthetic $r8$lambda$DgVJ5YVq3O0B0i3-Gr1Abe4OLWg(Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;ILcom/android/internal/os/IResultReceiver;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->lambda$requestDestroy$0(ILcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ObS0pK9EY93Edr9Av8pMpZBUC0g(Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;ILcom/android/internal/os/IResultReceiver;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->lambda$requestList$1(ILcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    return-void
.end method


# virtual methods
.method public final getBindInstantService(Ljava/io/PrintWriter;)I
    .registers 2

    .line 125
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getAllowInstantService()Z

    move-result p0

    if-eqz p0, :cond_f

    .line 126
    const-string/jumbo p0, "true"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14

    .line 128
    :cond_f
    const-string p0, "false"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_14
    const/4 p0, 0x0

    return p0
.end method

.method public final getDefaultServiceEnabled(Ljava/io/PrintWriter;)I
    .registers 3

    .line 173
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 174
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->isDefaultServiceEnabled(I)Z

    move-result p0

    .line 175
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getNextIntArgRequired()I
    .registers 1

    .line 254
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getUserIdFromArgsOrAllUsers()I
    .registers 3

    .line 247
    const-string v0, "--user"

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 248
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_15
    const/4 p0, -0x1

    return p0
.end method

.method public final isNextArgSessions(Ljava/io/PrintWriter;)Z
    .registers 3

    .line 217
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    .line 218
    const-string/jumbo v0, "sessions"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    .line 219
    const-string p0, "Error: invalid list type"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_14
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$requestDestroy$0(ILcom/android/internal/os/IResultReceiver;)V
    .registers 3

    .line 192
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->destroySessions(ILcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method public final synthetic lambda$requestList$1(ILcom/android/internal/os/IResultReceiver;)V
    .registers 3

    .line 213
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->listSessions(ILcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 5

    if-nez p1, :cond_7

    .line 46
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 48
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_60

    goto :goto_44

    :sswitch_17
    const-string v1, "destroy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_44

    :cond_20
    const/4 v2, 0x3

    goto :goto_44

    :sswitch_22
    const-string/jumbo v1, "list"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    goto :goto_44

    :cond_2c
    const/4 v2, 0x2

    goto :goto_44

    :sswitch_2e
    const-string/jumbo v1, "set"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    goto :goto_44

    :cond_38
    const/4 v2, 0x1

    goto :goto_44

    :sswitch_3a
    const-string v1, "get"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    goto :goto_44

    :cond_43
    const/4 v2, 0x0

    :goto_44
    packed-switch v2, :pswitch_data_72

    .line 59
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 53
    :pswitch_4c
    invoke-virtual {p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->requestDestroy(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 51
    :pswitch_51
    invoke-virtual {p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->requestList(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 57
    :pswitch_56
    invoke-virtual {p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->requestSet(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 55
    :pswitch_5b
    invoke-virtual {p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->requestGet(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :sswitch_data_60
    .sparse-switch
        0x18f56 -> :sswitch_3a
        0x1bc62 -> :sswitch_2e
        0x32b09e -> :sswitch_22
        0x5cd39ffa -> :sswitch_17
    .end sparse-switch

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_56
        :pswitch_51
        :pswitch_4c
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 65
    const-string v0, ""

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 66
    :try_start_6
    const-string v1, "ContentCapture Service (content_capture) commands:"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    const-string v1, "  help"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    const-string v1, "    Prints this help text."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    const-string v1, "  get bind-instant-service-allowed"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    const-string v1, "    Gets whether binding to services provided by instant apps is allowed"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    const-string v1, "  set bind-instant-service-allowed [true | false]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    const-string v1, "    Sets whether binding to services provided by instant apps is allowed"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    const-string v1, "  set temporary-service USER_ID [COMPONENT_NAME DURATION]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    const-string v1, "    Temporarily (for DURATION ms) changes the service implemtation."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    const-string v1, "    To reset, call with just the USER_ID argument."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    const-string v1, "  set default-service-enabled USER_ID [true|false]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    const-string v1, "    Enable / disable the default service for the user."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    const-string v1, "  get default-service-enabled USER_ID"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    const-string v1, "    Checks whether the default service is enabled for the user."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    const-string v1, "  list sessions [--user USER_ID]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    const-string v1, "    Lists all pending sessions."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    const-string v1, "  destroy sessions [--user USER_ID]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string v1, "    Destroys all pending sessions."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_78
    .catchall {:try_start_6 .. :try_end_78} :catchall_7c

    .line 92
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    return-void

    :catchall_7c
    move-exception v0

    if-eqz p0, :cond_87

    .line 65
    :try_start_7f
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_83

    goto :goto_87

    :catchall_83
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_87
    :goto_87
    throw v0
.end method

.method public final requestDestroy(Ljava/io/PrintWriter;)I
    .registers 6

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->isNextArgSessions(Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 184
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->getUserIdFromArgsOrAllUsers()I

    move-result v0

    .line 185
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 186
    new-instance v2, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$1;

    invoke-direct {v2, p0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$1;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;Ljava/util/concurrent/CountDownLatch;)V

    .line 192
    new-instance v3, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;ILcom/android/internal/os/IResultReceiver;)V

    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->requestSessionCommon(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)I

    move-result p0

    return p0
.end method

.method public final requestGet(Ljava/io/PrintWriter;)I
    .registers 4

    .line 96
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    const-string v1, "default-service-enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string v1, "bind-instant-service-allowed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid set: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 99
    :cond_2d
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->getBindInstantService(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 101
    :cond_32
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->getDefaultServiceEnabled(Ljava/io/PrintWriter;)I

    move-result p0

    return p0
.end method

.method public final requestList(Ljava/io/PrintWriter;)I
    .registers 6

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->isNextArgSessions(Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 200
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->getUserIdFromArgsOrAllUsers()I

    move-result v0

    .line 201
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 202
    new-instance v2, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$2;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)V

    .line 213
    new-instance v3, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;ILcom/android/internal/os/IResultReceiver;)V

    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->requestSessionCommon(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)I

    move-result p0

    return p0
.end method

.method public final requestSessionCommon(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)I
    .registers 4

    .line 227
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->waitForLatch(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)I

    move-result p0

    return p0
.end method

.method public final requestSet(Ljava/io/PrintWriter;)I
    .registers 5

    .line 109
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_5a

    :goto_f
    move v1, v2

    goto :goto_32

    :sswitch_11
    const-string/jumbo v1, "temporary-service"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_f

    :cond_1b
    const/4 v1, 0x2

    goto :goto_32

    :sswitch_1d
    const-string v1, "bind-instant-service-allowed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_f

    :cond_26
    const/4 v1, 0x1

    goto :goto_32

    :sswitch_28
    const-string v1, "default-service-enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    goto :goto_f

    :cond_31
    const/4 v1, 0x0

    :goto_32
    packed-switch v1, :pswitch_data_68

    .line 119
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid set: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 115
    :pswitch_4a
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->setTemporaryService(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 113
    :pswitch_4f
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->setBindInstantService(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 117
    :pswitch_54
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->setDefaultServiceEnabled(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    nop

    :sswitch_data_5a
    .sparse-switch
        0x1f91e49d -> :sswitch_28
        0x30420514 -> :sswitch_1d
        0x77724739 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_54
        :pswitch_4f
        :pswitch_4a
    .end packed-switch
.end method

.method public final setBindInstantService(Ljava/io/PrintWriter;)I
    .registers 6

    .line 134
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_39

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 143
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid mode: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 140
    :cond_33
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {p0, v3}, Lcom/android/server/infra/AbstractMasterSystemService;->setAllowInstantService(Z)V

    return v3

    .line 137
    :cond_39
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->setAllowInstantService(Z)V

    return v3
.end method

.method public final setDefaultServiceEnabled(Ljava/io/PrintWriter;)I
    .registers 4

    .line 163
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 164
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 165
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->setDefaultServiceEnabled(IZ)Z

    move-result p0

    if-nez p0, :cond_28

    .line 167
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "already "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public final setTemporaryService(Ljava/io/PrintWriter;)I
    .registers 6

    .line 149
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 150
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 152
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->resetTemporaryService(I)V

    return v2

    .line 155
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->getNextIntArgRequired()I

    move-result v3

    .line 156
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/infra/AbstractMasterSystemService;->setTemporaryService(ILjava/lang/String;I)V

    .line 157
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ContentCaptureService temporarily set to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method

.method public final waitForLatch(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)I
    .registers 6

    const/4 p0, -0x1

    .line 233
    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {p2, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p2

    if-nez p2, :cond_11

    .line 235
    const-string p2, "Timed out after 5 seconds"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_10} :catch_13

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0

    .line 239
    :catch_13
    const-string p2, "System call interrupted"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return p0
.end method
