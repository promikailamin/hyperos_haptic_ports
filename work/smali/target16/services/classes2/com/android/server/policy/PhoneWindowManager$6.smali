.class public Lcom/android/server/policy/PhoneWindowManager$6;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field public final synthetic val$awakenFromDreams:Z

.field public final synthetic val$displayId:I


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;IZ)V
    .registers 4

    .line 4400
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$6;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$6;->val$displayId:I

    iput-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager$6;->val$awakenFromDreams:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardExitResult(Z)V
    .registers 6

    if-eqz p1, :cond_19

    .line 4404
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4406
    :try_start_6
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$6;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager$6;->val$displayId:I

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager$6;->val$awakenFromDreams:Z

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3, p0}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(IZZ)V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_14

    .line 4408
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4409
    throw p0

    :cond_19
    return-void
.end method
