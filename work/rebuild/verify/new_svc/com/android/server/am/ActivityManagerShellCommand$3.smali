.class public Lcom/android/server/am/ActivityManagerShellCommand$3;
.super Landroid/app/UserSwitchObserver;
.source "ActivityManagerShellCommand.java"


# instance fields
.field public final synthetic val$switchLatch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerShellCommand;ILjava/util/concurrent/CountDownLatch;)V
    .registers 4

    .line 2825
    iput p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$3;->val$userId:I

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerShellCommand$3;->val$switchLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .registers 3

    .line 2828
    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$3;->val$userId:I

    if-ne v0, p1, :cond_9

    .line 2829
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$3;->val$switchLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_9
    return-void
.end method
