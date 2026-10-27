.class Lcom/android/server/pm/VerificationParams$1;
.super Landroid/content/BroadcastReceiver;
.source "VerificationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/VerificationParams;->sendIntegrityVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/VerificationParams;

.field final synthetic val$verificationId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/VerificationParams;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/pm/VerificationParams;

    .line 290
    iput-object p1, p0, Lcom/android/server/pm/VerificationParams$1;->this$0:Lcom/android/server/pm/VerificationParams;

    iput p2, p0, Lcom/android/server/pm/VerificationParams$1;->val$verificationId:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 293
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams$1;->this$0:Lcom/android/server/pm/VerificationParams;

    iget-object v0, v0, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 294
    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 295
    .local v0, "msg":Landroid/os/Message;
    iget v1, p0, Lcom/android/server/pm/VerificationParams$1;->val$verificationId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 296
    iget-object v1, p0, Lcom/android/server/pm/VerificationParams$1;->this$0:Lcom/android/server/pm/VerificationParams;

    iget-object v1, v1, Lcom/android/server/pm/VerificationParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/pm/VerificationParams$1;->this$0:Lcom/android/server/pm/VerificationParams;

    invoke-static {v2}, Lcom/android/server/pm/VerificationParams;->-$$Nest$mgetIntegrityVerificationTimeout(Lcom/android/server/pm/VerificationParams;)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 297
    return-void
.end method
