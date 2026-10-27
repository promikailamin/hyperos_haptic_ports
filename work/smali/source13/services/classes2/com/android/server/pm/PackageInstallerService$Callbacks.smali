.class Lcom/android/server/pm/PackageInstallerService$Callbacks;
.super Landroid/os/Handler;
.source "PackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callbacks"
.end annotation


# static fields
.field private static final MSG_SESSION_ACTIVE_CHANGED:I = 0x3

.field private static final MSG_SESSION_BADGING_CHANGED:I = 0x2

.field private static final MSG_SESSION_CREATED:I = 0x1

.field private static final MSG_SESSION_FINISHED:I = 0x5

.field private static final MSG_SESSION_PROGRESS_CHANGED:I = 0x4


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/content/pm/IPackageInstallerCallback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerService;


# direct methods
.method static bridge synthetic -$$Nest$mnotifySessionActiveChanged(Lcom/android/server/pm/PackageInstallerService$Callbacks;IIZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->notifySessionActiveChanged(IIZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifySessionBadgingChanged(Lcom/android/server/pm/PackageInstallerService$Callbacks;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->notifySessionBadgingChanged(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifySessionCreated(Lcom/android/server/pm/PackageInstallerService$Callbacks;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->notifySessionCreated(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifySessionProgressChanged(Lcom/android/server/pm/PackageInstallerService$Callbacks;IIF)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->notifySessionProgressChanged(IIF)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageInstallerService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1776
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->this$0:Lcom/android/server/pm/PackageInstallerService;

    .line 1777
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1773
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 1778
    return-void
.end method

.method private invokeCallback(Landroid/content/pm/IPackageInstallerCallback;Landroid/os/Message;)V
    .registers 5
    .param p1, "callback"    # Landroid/content/pm/IPackageInstallerCallback;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1810
    iget v0, p2, Landroid/os/Message;->arg1:I

    .line 1811
    .local v0, "sessionId":I
    iget v1, p2, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_36

    goto :goto_34

    .line 1825
    :pswitch_8
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/pm/IPackageInstallerCallback;->onSessionFinished(IZ)V

    goto :goto_34

    .line 1822
    :pswitch_14
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/pm/IPackageInstallerCallback;->onSessionProgressChanged(IF)V

    .line 1823
    goto :goto_34

    .line 1819
    :pswitch_20
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/pm/IPackageInstallerCallback;->onSessionActiveChanged(IZ)V

    .line 1820
    goto :goto_34

    .line 1816
    :pswitch_2c
    invoke-interface {p1, v0}, Landroid/content/pm/IPackageInstallerCallback;->onSessionBadgingChanged(I)V

    .line 1817
    goto :goto_34

    .line 1813
    :pswitch_30
    invoke-interface {p1, v0}, Landroid/content/pm/IPackageInstallerCallback;->onSessionCreated(I)V

    .line 1814
    nop

    .line 1828
    :goto_34
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2c
        :pswitch_20
        :pswitch_14
        :pswitch_8
    .end packed-switch
.end method

.method private notifySessionActiveChanged(IIZ)V
    .registers 6
    .param p1, "sessionId"    # I
    .param p2, "userId"    # I
    .param p3, "active"    # Z

    .line 1839
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1840
    return-void
.end method

.method private notifySessionBadgingChanged(II)V
    .registers 4
    .param p1, "sessionId"    # I
    .param p2, "userId"    # I

    .line 1835
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1836
    return-void
.end method

.method private notifySessionCreated(II)V
    .registers 4
    .param p1, "sessionId"    # I
    .param p2, "userId"    # I

    .line 1831
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1832
    return-void
.end method

.method private notifySessionProgressChanged(IIF)V
    .registers 6
    .param p1, "sessionId"    # I
    .param p2, "userId"    # I
    .param p3, "progress"    # F

    .line 1843
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1844
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 1790
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1791
    .local v0, "sessionId":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1792
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1793
    .local v2, "n":I
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v3}, Lcom/android/server/pm/PackageInstallerService;->-$$Nest$fgetmPm(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    .line 1794
    .local v3, "snapshot":Lcom/android/server/pm/Computer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_15
    if-ge v4, v2, :cond_41

    .line 1795
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/content/pm/IPackageInstallerCallback;

    .line 1796
    .local v5, "callback":Landroid/content/pm/IPackageInstallerCallback;
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;

    .line 1797
    .local v6, "cookie":Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;
    iget-object v7, v6, Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;->userCheck:Ljava/util/function/IntPredicate;

    invoke-interface {v7, v1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v7

    if-eqz v7, :cond_3e

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->this$0:Lcom/android/server/pm/PackageInstallerService;

    iget v8, v6, Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;->callingUid:I

    .line 1798
    invoke-static {v7, v3, v8, v0}, Lcom/android/server/pm/PackageInstallerService;->-$$Nest$mshouldFilterSession(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/Computer;II)Z

    move-result v7

    if-nez v7, :cond_3e

    .line 1800
    :try_start_39
    invoke-direct {p0, v5, p1}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->invokeCallback(Landroid/content/pm/IPackageInstallerCallback;Landroid/os/Message;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3c} :catch_3d

    .line 1802
    goto :goto_3e

    .line 1801
    :catch_3d
    move-exception v7

    .line 1794
    .end local v5    # "callback":Landroid/content/pm/IPackageInstallerCallback;
    .end local v6    # "cookie":Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;
    :cond_3e
    :goto_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 1805
    .end local v4    # "i":I
    :cond_41
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1806
    return-void
.end method

.method public notifySessionFinished(IIZ)V
    .registers 6
    .param p1, "sessionId"    # I
    .param p2, "userId"    # I
    .param p3, "success"    # Z

    .line 1847
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1848
    return-void
.end method

.method public register(Landroid/content/pm/IPackageInstallerCallback;Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;)V
    .registers 4
    .param p1, "callback"    # Landroid/content/pm/IPackageInstallerCallback;
    .param p2, "cookie"    # Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;

    .line 1781
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 1782
    return-void
.end method

.method public unregister(Landroid/content/pm/IPackageInstallerCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/content/pm/IPackageInstallerCallback;

    .line 1785
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1786
    return-void
.end method
