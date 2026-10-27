.class Lcom/android/server/resources/ResourcesManagerService$1;
.super Landroid/content/res/IResourcesManager$Stub;
.source "ResourcesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/resources/ResourcesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/resources/ResourcesManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/resources/ResourcesManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/resources/ResourcesManagerService;

    .line 61
    iput-object p1, p0, Lcom/android/server/resources/ResourcesManagerService$1;->this$0:Lcom/android/server/resources/ResourcesManagerService;

    invoke-direct {p0}, Landroid/content/res/IResourcesManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/android/server/resources/ResourcesManagerService$1;->this$0:Lcom/android/server/resources/ResourcesManagerService;

    invoke-static {v0}, Lcom/android/server/resources/ResourcesManagerService;->-$$Nest$fgetmActivityManagerService(Lcom/android/server/resources/ResourcesManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/am/ActivityManagerService;->dumpAllResources(Landroid/os/ParcelFileDescriptor;Ljava/io/PrintWriter;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 81
    goto :goto_2c

    .line 78
    :catch_e
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while trying to dump all resources: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, p2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2c
    return-void
.end method

.method public dumpResources(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)Z
    .registers 7
    .param p1, "process"    # Ljava/lang/String;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 66
    .local v0, "callingUid":I
    if-eqz v0, :cond_17

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_b

    goto :goto_17

    .line 67
    :cond_b
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 68
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "dump should only be called by shell"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_17
    :goto_17
    iget-object v1, p0, Lcom/android/server/resources/ResourcesManagerService$1;->this$0:Lcom/android/server/resources/ResourcesManagerService;

    invoke-static {v1}, Lcom/android/server/resources/ResourcesManagerService;->-$$Nest$fgetmActivityManagerService(Lcom/android/server/resources/ResourcesManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->dumpResources(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)Z

    move-result v1

    return v1
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .registers 11
    .param p1, "in"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "out"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "err"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/android/server/resources/ResourcesManagerShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/resources/ResourcesManagerShellCommand;-><init>(Landroid/content/res/IResourcesManager;)V

    .line 91
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 92
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 93
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 89
    move-object v1, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/resources/ResourcesManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
