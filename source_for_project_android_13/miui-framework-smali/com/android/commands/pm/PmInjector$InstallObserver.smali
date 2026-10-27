.class public Lcom/android/commands/pm/PmInjector$InstallObserver;
.super Landroid/os/IMessenger$Stub;
.source "PmInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/pm/PmInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallObserver"
.end annotation


# instance fields
.field blacklist finished:Z

.field blacklist msg:Ljava/lang/String;

.field blacklist result:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 105
    invoke-direct {p0}, Landroid/os/IMessenger$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist send(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    monitor-enter p0

    .line 113
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/commands/pm/PmInjector$InstallObserver;->finished:Z

    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Lcom/android/commands/pm/PmInjector$InstallObserver;->result:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 116
    .local v0, "data":Landroid/os/Bundle;
    if-eqz v0, :cond_16

    .line 117
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/pm/PmInjector$InstallObserver;->msg:Ljava/lang/String;

    .line 119
    :cond_16
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 120
    .end local v0    # "data":Landroid/os/Bundle;
    monitor-exit p0

    .line 121
    return-void

    .line 120
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_1b

    throw v0
.end method
