.class Lcom/android/server/pm/VerificationParams$2;
.super Landroid/content/BroadcastReceiver;
.source "VerificationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/VerificationParams;->sendPackageVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/VerificationParams;

.field final synthetic val$response:Lcom/android/server/pm/PackageVerificationResponse;

.field final synthetic val$streaming:Z

.field final synthetic val$verificationId:I

.field final synthetic val$verificationTimeout:J


# direct methods
.method constructor <init>(Lcom/android/server/pm/VerificationParams;ZILcom/android/server/pm/PackageVerificationResponse;J)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/pm/VerificationParams;

    .line 538
    iput-object p1, p0, Lcom/android/server/pm/VerificationParams$2;->this$0:Lcom/android/server/pm/VerificationParams;

    iput-boolean p2, p0, Lcom/android/server/pm/VerificationParams$2;->val$streaming:Z

    iput p3, p0, Lcom/android/server/pm/VerificationParams$2;->val$verificationId:I

    iput-object p4, p0, Lcom/android/server/pm/VerificationParams$2;->val$response:Lcom/android/server/pm/PackageVerificationResponse;

    iput-wide p5, p0, Lcom/android/server/pm/VerificationParams$2;->val$verificationTimeout:J

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 541
    iget-boolean v2, p0, Lcom/android/server/pm/VerificationParams$2;->val$streaming:Z

    if-nez v2, :cond_f

    .line 544
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams$2;->this$0:Lcom/android/server/pm/VerificationParams;

    iget v1, p0, Lcom/android/server/pm/VerificationParams$2;->val$verificationId:I

    iget-object v3, p0, Lcom/android/server/pm/VerificationParams$2;->val$response:Lcom/android/server/pm/PackageVerificationResponse;

    iget-wide v4, p0, Lcom/android/server/pm/VerificationParams$2;->val$verificationTimeout:J

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/VerificationParams;->-$$Nest$mstartVerificationTimeoutCountdown(Lcom/android/server/pm/VerificationParams;IZLcom/android/server/pm/PackageVerificationResponse;J)V

    .line 547
    :cond_f
    return-void
.end method
