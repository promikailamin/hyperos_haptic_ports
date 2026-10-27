.class public final Lcom/android/server/supervision/SupervisionService$SupervisionListenerRecord;
.super Ljava/lang/Object;
.source "SupervisionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final listener:Landroid/app/supervision/ISupervisionListener;

.field public final synthetic this$0:Lcom/android/server/supervision/SupervisionService;

.field public final userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/supervision/SupervisionService;Landroid/app/supervision/ISupervisionListener;I)V
    .registers 4

    .line 978
    iput-object p1, p0, Lcom/android/server/supervision/SupervisionService$SupervisionListenerRecord;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 979
    iput-object p2, p0, Lcom/android/server/supervision/SupervisionService$SupervisionListenerRecord;->listener:Landroid/app/supervision/ISupervisionListener;

    .line 980
    iput p3, p0, Lcom/android/server/supervision/SupervisionService$SupervisionListenerRecord;->userId:I

    .line 981
    invoke-interface {p2}, Landroid/app/supervision/ISupervisionListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 990
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$SupervisionListenerRecord;->this$0:Lcom/android/server/supervision/SupervisionService;

    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$SupervisionListenerRecord;->listener:Landroid/app/supervision/ISupervisionListener;

    invoke-virtual {v0, p0}, Lcom/android/server/supervision/SupervisionService;->unregisterSupervisionListener(Landroid/app/supervision/ISupervisionListener;)V

    return-void
.end method

.method public unlinkToDeath()V
    .registers 3

    .line 985
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$SupervisionListenerRecord;->listener:Landroid/app/supervision/ISupervisionListener;

    invoke-interface {v0}, Landroid/app/supervision/ISupervisionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
