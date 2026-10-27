.class Lcom/android/server/pm/PackageManagerShellCommand$5;
.super Ljava/lang/Object;
.source "PackageManagerShellCommand.java"

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerShellCommand;->removeUserAndWait(Landroid/os/IUserManager;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerShellCommand;

.field final synthetic val$userId:I

.field final synthetic val$waitLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerShellCommand;ILjava/util/concurrent/CountDownLatch;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerShellCommand;

    .line 2955
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand$5;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    iput p2, p0, Lcom/android/server/pm/PackageManagerShellCommand$5;->val$userId:I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerShellCommand$5;->val$waitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserRemoved(Landroid/content/pm/UserInfo;)V
    .registers 4
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .line 2958
    iget v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$5;->val$userId:I

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne v0, v1, :cond_b

    .line 2959
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$5;->val$waitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2961
    :cond_b
    return-void
.end method
