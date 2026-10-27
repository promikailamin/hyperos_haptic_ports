.class Landroid/content/pm/verify/developer/DeveloperVerifierService$1;
.super Landroid/content/pm/verify/developer/IDeveloperVerifierService$Stub;
.source "DeveloperVerifierService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/verify/developer/DeveloperVerifierService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/content/pm/verify/developer/DeveloperVerifierService;


# direct methods
.method constructor blacklist <init>(Landroid/content/pm/verify/developer/DeveloperVerifierService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 103
    iput-object p1, p0, Landroid/content/pm/verify/developer/DeveloperVerifierService$1;->this$0:Landroid/content/pm/verify/developer/DeveloperVerifierService;

    invoke-direct {p0}, Landroid/content/pm/verify/developer/IDeveloperVerifierService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onPackageNameAvailable(Ljava/lang/String;)V
    .registers 3

    .line 106
    iget-object v0, p0, Landroid/content/pm/verify/developer/DeveloperVerifierService$1;->this$0:Landroid/content/pm/verify/developer/DeveloperVerifierService;

    invoke-virtual {v0, p1}, Landroid/content/pm/verify/developer/DeveloperVerifierService;->onPackageNameAvailable(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public blacklist onVerificationCancelled(Ljava/lang/String;)V
    .registers 3

    .line 111
    iget-object v0, p0, Landroid/content/pm/verify/developer/DeveloperVerifierService$1;->this$0:Landroid/content/pm/verify/developer/DeveloperVerifierService;

    invoke-virtual {v0, p1}, Landroid/content/pm/verify/developer/DeveloperVerifierService;->onVerificationCancelled(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public blacklist onVerificationRequired(Landroid/content/pm/verify/developer/DeveloperVerificationSession;)V
    .registers 3

    .line 116
    iget-object v0, p0, Landroid/content/pm/verify/developer/DeveloperVerifierService$1;->this$0:Landroid/content/pm/verify/developer/DeveloperVerifierService;

    invoke-virtual {v0, p1}, Landroid/content/pm/verify/developer/DeveloperVerifierService;->onVerificationRequired(Landroid/content/pm/verify/developer/DeveloperVerificationSession;)V

    .line 117
    return-void
.end method

.method public blacklist onVerificationRetry(Landroid/content/pm/verify/developer/DeveloperVerificationSession;)V
    .registers 3

    .line 121
    iget-object v0, p0, Landroid/content/pm/verify/developer/DeveloperVerifierService$1;->this$0:Landroid/content/pm/verify/developer/DeveloperVerifierService;

    invoke-virtual {v0, p1}, Landroid/content/pm/verify/developer/DeveloperVerifierService;->onVerificationRetry(Landroid/content/pm/verify/developer/DeveloperVerificationSession;)V

    .line 122
    return-void
.end method

.method public blacklist onVerificationTimeout(I)V
    .registers 3

    .line 126
    iget-object v0, p0, Landroid/content/pm/verify/developer/DeveloperVerifierService$1;->this$0:Landroid/content/pm/verify/developer/DeveloperVerifierService;

    invoke-virtual {v0, p1}, Landroid/content/pm/verify/developer/DeveloperVerifierService;->onVerificationTimeout(I)V

    .line 127
    return-void
.end method
