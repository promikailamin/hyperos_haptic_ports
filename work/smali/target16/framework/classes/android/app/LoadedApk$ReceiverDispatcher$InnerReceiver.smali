.class final Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;
.super Landroid/content/IIntentReceiver$Stub;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk$ReceiverDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnerReceiver"
.end annotation


# instance fields
.field final blacklist mApplicationThread:Landroid/app/IApplicationThread;

.field final greylist-max-o mDispatcher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/LoadedApk$ReceiverDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mStrongRef:Landroid/app/LoadedApk$ReceiverDispatcher;


# direct methods
.method constructor blacklist <init>(Landroid/app/IApplicationThread;Landroid/app/LoadedApk$ReceiverDispatcher;Z)V
    .registers 4

    .line 1797
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 1798
    iput-object p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mApplicationThread:Landroid/app/IApplicationThread;

    .line 1799
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mDispatcher:Ljava/lang/ref/WeakReference;

    .line 1800
    if-eqz p3, :cond_f

    goto :goto_10

    :cond_f
    const/4 p2, 0x0

    :goto_10
    iput-object p2, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mStrongRef:Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 1801
    return-void
.end method


# virtual methods
.method public greylist-max-o performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 20

    .line 1806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "performReceive() called targeting raw IIntentReceiver for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoadedApk"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    nop

    .line 1808
    const/4 v0, 0x1

    move/from16 v6, p5

    invoke-static {v0, v6}, Landroid/content/BroadcastReceiver$PendingResult;->guessAssumeDelivered(IZ)Z

    move-result v8

    .line 1807
    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v11}, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIILjava/lang/String;)V

    .line 1812
    return-void
.end method

.method public blacklist performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIILjava/lang/String;)V
    .registers 13

    .line 1818
    if-nez p1, :cond_b

    .line 1819
    const-string v0, "LoadedApk"

    const-string v1, "Null intent received"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    const/4 v0, 0x0

    goto :goto_13

    .line 1822
    :cond_b
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 1829
    :goto_13
    if-eqz v0, :cond_1a

    .line 1830
    move-object p0, v0

    invoke-virtual/range {p0 .. p10}, Landroid/app/LoadedApk$ReceiverDispatcher;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIILjava/lang/String;)V

    goto :goto_41

    .line 1833
    :cond_1a
    if-nez p7, :cond_41

    .line 1840
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p5

    .line 1842
    if-eqz p4, :cond_26

    .line 1843
    const/4 p6, 0x0

    :try_start_23
    invoke-virtual {p4, p6}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 1845
    :cond_26
    iget-object p6, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mApplicationThread:Landroid/app/IApplicationThread;

    invoke-interface {p6}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object p6

    .line 1846
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    .line 1845
    move-object p7, p5

    const/4 p5, 0x0

    move-object p0, p6

    move p6, p1

    move-object p1, p0

    move-object p0, p7

    invoke-interface/range {p0 .. p6}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_39} :catch_3a

    .line 1849
    goto :goto_41

    .line 1847
    :catch_3a
    move-exception v0

    move-object p1, v0

    .line 1848
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1851
    :cond_41
    :goto_41
    return-void
.end method
