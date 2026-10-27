.class Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;
.super Ljava/lang/Object;
.source "TransportConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/transport/TransportConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransportConnectionMonitor"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTransportClientRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/backup/transport/TransportConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/server/backup/transport/TransportConnection;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transportConnection"    # Lcom/android/server/backup/transport/TransportConnection;

    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    iput-object p1, p0, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->mContext:Landroid/content/Context;

    .line 668
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->mTransportClientRef:Ljava/lang/ref/WeakReference;

    .line 669
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;-><init>(Landroid/content/Context;Lcom/android/server/backup/transport/TransportConnection;)V

    return-void
.end method

.method private referenceLost(Ljava/lang/String;)V
    .registers 5
    .param p1, "caller"    # Ljava/lang/String;

    .line 707
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " called but TransportClient reference has been GC\'ed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, "TransportConnection"

    invoke-static {v1, v2, v0}, Lcom/android/server/backup/transport/TransportUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 712
    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "transportComponent"    # Landroid/content/ComponentName;

    .line 697
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->mTransportClientRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/transport/TransportConnection;

    .line 698
    .local v0, "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    if-nez v0, :cond_10

    .line 699
    const-string v1, "TransportConnection.onBindingDied()"

    invoke-direct {p0, v1}, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->referenceLost(Ljava/lang/String;)V

    .line 700
    return-void

    .line 702
    :cond_10
    invoke-static {v0}, Lcom/android/server/backup/transport/TransportConnection;->-$$Nest$monBindingDied(Lcom/android/server/backup/transport/TransportConnection;)V

    .line 703
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 673
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->mTransportClientRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/transport/TransportConnection;

    .line 674
    .local v0, "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    if-nez v0, :cond_10

    .line 675
    const-string v1, "TransportConnection.onServiceConnected()"

    invoke-direct {p0, v1}, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->referenceLost(Ljava/lang/String;)V

    .line 676
    return-void

    .line 681
    :cond_10
    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 682
    invoke-static {v0, p2}, Lcom/android/server/backup/transport/TransportConnection;->-$$Nest$monServiceConnected(Lcom/android/server/backup/transport/TransportConnection;Landroid/os/IBinder;)V

    .line 683
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "transportComponent"    # Landroid/content/ComponentName;

    .line 687
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->mTransportClientRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/transport/TransportConnection;

    .line 688
    .local v0, "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    if-nez v0, :cond_10

    .line 689
    const-string v1, "TransportConnection.onServiceDisconnected()"

    invoke-direct {p0, v1}, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->referenceLost(Ljava/lang/String;)V

    .line 690
    return-void

    .line 692
    :cond_10
    invoke-static {v0}, Lcom/android/server/backup/transport/TransportConnection;->-$$Nest$monServiceDisconnected(Lcom/android/server/backup/transport/TransportConnection;)V

    .line 693
    return-void
.end method
