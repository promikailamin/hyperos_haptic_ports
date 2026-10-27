.class public final synthetic Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;

    iput-object p2, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;

    iget-object v1, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;->lambda$onReceive$0$com-android-server-integrity-AppIntegrityManagerServiceImpl$1(Landroid/content/Intent;)V

    return-void
.end method
