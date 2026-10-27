.class Lcom/android/server/policy/PhoneWindowManager$14;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field final synthetic val$awakenFromDreams:Z

.field final synthetic val$displayId:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;IZ)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 3675
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$14;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$14;->val$displayId:I

    iput-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager$14;->val$awakenFromDreams:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardExitResult(Z)V
    .registers 8
    .param p1, "success"    # Z

    .line 3678
    if-eqz p1, :cond_19

    .line 3679
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3681
    .local v0, "origId":J
    :try_start_6
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$14;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager$14;->val$displayId:I

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager$14;->val$awakenFromDreams:Z

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(IZZ)V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_14

    .line 3683
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3684
    goto :goto_19

    .line 3683
    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3684
    throw v2

    .line 3686
    .end local v0    # "origId":J
    :cond_19
    :goto_19
    return-void
.end method
