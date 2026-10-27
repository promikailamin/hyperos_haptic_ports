.class public Lcom/android/server/am/UserController$2;
.super Landroid/content/IIntentReceiver$Stub;
.source "UserController.java"


# instance fields
.field public final synthetic val$receiver:Landroid/content/IIntentReceiver;

.field public final synthetic val$remainingPackages:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/android/server/am/UserController;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/content/IIntentReceiver;)V
    .registers 4

    .line 853
    iput-object p2, p0, Lcom/android/server/am/UserController$2;->val$remainingPackages:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/android/server/am/UserController$2;->val$receiver:Landroid/content/IIntentReceiver;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 9

    .line 858
    iget-object v0, p0, Lcom/android/server/am/UserController$2;->val$remainingPackages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/am/UserController$2;->val$receiver:Landroid/content/IIntentReceiver;

    if-eqz v0, :cond_11

    .line 859
    iget-object p0, p0, Lcom/android/server/am/UserController$2;->val$receiver:Landroid/content/IIntentReceiver;

    invoke-interface/range {p0 .. p7}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    :cond_11
    return-void
.end method
