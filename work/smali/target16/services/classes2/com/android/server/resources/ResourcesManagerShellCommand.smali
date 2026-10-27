.class public Lcom/android/server/resources/ResourcesManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "ResourcesManagerShellCommand.java"


# instance fields
.field public final mInterface:Landroid/content/res/IResourcesManager;


# direct methods
.method public static synthetic $r8$lambda$HgcnhoJS-PDsmq4uPgNTt1weDjM(Landroid/os/ConditionVariable;Landroid/os/Bundle;)V
    .registers 2

    .line 68
    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/IResourcesManager;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/resources/ResourcesManagerShellCommand;->mInterface:Landroid/content/res/IResourcesManager;

    return-void
.end method


# virtual methods
.method public final dumpResources()I
    .registers 8

    .line 64
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 65
    :try_start_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_d} :catch_43

    .line 66
    :try_start_d
    new-instance v3, Landroid/os/ConditionVariable;

    invoke-direct {v3}, Landroid/os/ConditionVariable;-><init>()V

    .line 68
    new-instance v4, Landroid/os/RemoteCallback;

    new-instance v5, Lcom/android/server/resources/ResourcesManagerShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3}, Lcom/android/server/resources/ResourcesManagerShellCommand$$ExternalSyntheticLambda0;-><init>(Landroid/os/ConditionVariable;)V

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    .line 70
    iget-object v5, p0, Lcom/android/server/resources/ResourcesManagerShellCommand;->mInterface:Landroid/content/res/IResourcesManager;

    invoke-interface {v5, v0, v2, v4}, Landroid/content/res/IResourcesManager;->dumpResources(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)Z

    move-result v4

    if-nez v4, :cond_48

    .line 71
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RESOURCES DUMP FAILED on process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_d .. :try_end_3d} :catchall_46

    if-eqz v2, :cond_45

    .line 76
    :try_start_3f
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    return v1

    :catch_43
    move-exception v0

    goto :goto_5f

    :cond_45
    return v1

    :catchall_46
    move-exception v0

    goto :goto_54

    :cond_48
    const-wide/16 v4, 0x1388

    .line 74
    :try_start_4a
    invoke-virtual {v3, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_46

    const/4 v0, 0x0

    if-eqz v2, :cond_53

    .line 76
    :try_start_50
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_43

    :cond_53
    return v0

    :goto_54
    if-eqz v2, :cond_5e

    .line 65
    :try_start_56
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5a

    goto :goto_5e

    :catchall_5a
    move-exception v2

    :try_start_5b
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5e
    :goto_5e
    throw v0
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5f} :catch_43

    .line 77
    :goto_5f
    const-string v2, "ResourcesManagerShellCommand"

    const-string v3, "Exception while dumping resources"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while dumping resources: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 5

    if-nez p1, :cond_7

    .line 45
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 47
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 49
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, 0x2f39f4

    if-eq v1, v2, :cond_15

    goto :goto_26

    :cond_15
    const-string v1, "dump"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 51
    invoke-virtual {p0}, Lcom/android/server/resources/ResourcesManagerShellCommand;->dumpResources()I

    move-result p0

    return p0

    :catch_22
    move-exception p0

    goto :goto_2b

    :catch_24
    move-exception p0

    goto :goto_40

    .line 53
    :cond_26
    :goto_26
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_2a} :catch_24
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_2a} :catch_22

    return p0

    .line 58
    :goto_2b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remote exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_58

    .line 56
    :goto_40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_58
    const/4 p0, -0x1

    return p0
.end method

.method public onHelp()V
    .registers 2

    .line 85
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 86
    const-string v0, "Resources manager commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    const-string v0, "  dump <PROCESS>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string v0, "    Dump the Resources objects in use as well as the history of Resources"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
