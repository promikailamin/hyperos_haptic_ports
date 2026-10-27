.class public Lcom/android/server/devicepolicy/RemoteBugreportManager$1;
.super Landroid/content/BroadcastReceiver;
.source "RemoteBugreportManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/RemoteBugreportManager;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/RemoteBugreportManager;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager$1;->this$0:Lcom/android/server/devicepolicy/RemoteBugreportManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 102
    const-string p1, "android.intent.action.REMOTE_BUGREPORT_DISPATCH"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager$1;->this$0:Lcom/android/server/devicepolicy/RemoteBugreportManager;

    invoke-static {p1}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->-$$Nest$fgetmRemoteBugreportServiceIsActive(Lcom/android/server/devicepolicy/RemoteBugreportManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 104
    iget-object p0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager$1;->this$0:Lcom/android/server/devicepolicy/RemoteBugreportManager;

    invoke-static {p0, p2}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->-$$Nest$monBugreportFinished(Lcom/android/server/devicepolicy/RemoteBugreportManager;Landroid/content/Intent;)V

    :cond_1d
    return-void
.end method
