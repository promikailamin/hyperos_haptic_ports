.class public Lcom/android/server/resources/ResourcesManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "ResourcesManagerShellCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourcesManagerShellCommand"


# instance fields
.field private final mInterface:Landroid/content/res/IResourcesManager;


# direct methods
.method public constructor <init>(Landroid/content/res/IResourcesManager;)V
    .registers 2
    .param p1, "anInterface"    # Landroid/content/res/IResourcesManager;

    .line 38
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/resources/ResourcesManagerShellCommand;->mInterface:Landroid/content/res/IResourcesManager;

    .line 40
    return-void
.end method

.method private dumpResources()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Lcom/android/server/resources/ResourcesManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "processId":Ljava/lang/String;
    const/4 v1, -0x1

    :try_start_5
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    .line 68
    .local v2, "lock":Landroid/os/ConditionVariable;
    new-instance v3, Landroid/os/RemoteCallback;

    new-instance v4, Lcom/android/server/resources/ResourcesManagerShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/android/server/resources/ResourcesManagerShellCommand$$ExternalSyntheticLambda0;-><init>(Landroid/os/ConditionVariable;)V

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    .line 70
    .local v3, "finishCallback":Landroid/os/RemoteCallback;
    iget-object v4, p0, Lcom/android/server/resources/ResourcesManagerShellCommand;->mInterface:Landroid/content/res/IResourcesManager;

    .line 71
    invoke-virtual {p0}, Lcom/android/server/resources/ResourcesManagerShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 70
    invoke-interface {v4, v0, v5, v3}, Landroid/content/res/IResourcesManager;->dumpResources(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)Z

    move-result v4

    if-nez v4, :cond_40

    .line 72
    invoke-virtual {p0}, Lcom/android/server/resources/ResourcesManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RESOURCES DUMP FAILED on process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    return v1

    .line 75
    :cond_40
    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_45} :catch_47

    .line 76
    const/4 v1, 0x0

    return v1

    .line 77
    .end local v2    # "lock":Landroid/os/ConditionVariable;
    .end local v3    # "finishCallback":Landroid/os/RemoteCallback;
    :catch_47
    move-exception v2

    .line 78
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "ResourcesManagerShellCommand"

    const-string v4, "Exception while dumping resources"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    invoke-virtual {p0}, Lcom/android/server/resources/ResourcesManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while dumping resources: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    .end local v2    # "e":Ljava/io/IOException;
    return v1
.end method

.method static synthetic lambda$dumpResources$0(Landroid/os/ConditionVariable;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "lock"    # Landroid/os/ConditionVariable;
    .param p1, "result"    # Landroid/os/Bundle;

    .line 68
    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;

    .line 44
    if-nez p1, :cond_7

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/server/resources/ResourcesManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 47
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/resources/ResourcesManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 49
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_62

    :cond_13
    goto :goto_1e

    :pswitch_14
    const-string v2, "dump"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    goto :goto_1f

    :goto_1e
    move v2, v1

    :goto_1f
    packed-switch v2, :pswitch_data_68

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/server/resources/ResourcesManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    goto :goto_2c

    .line 51
    :pswitch_27
    invoke-direct {p0}, Lcom/android/server/resources/ResourcesManagerShellCommand;->dumpResources()I

    move-result v1
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_2b} :catch_45
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2b} :catch_2d

    return v1

    .line 53
    :goto_2c
    return v1

    .line 57
    :catch_2d
    move-exception v2

    .line 58
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_61

    .line 55
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_45
    move-exception v2

    .line 56
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    nop

    .line 60
    :goto_61
    return v1

    :pswitch_data_62
    .packed-switch 0x2f39f4
        :pswitch_14
    .end packed-switch

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_27
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 86
    invoke-virtual {p0}, Lcom/android/server/resources/ResourcesManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 87
    .local v0, "out":Ljava/io/PrintWriter;
    const-string v1, "Resources manager commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string v1, "  dump <PROCESS>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    const-string v1, "    Dump the Resources objects in use as well as the history of Resources"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    return-void
.end method
