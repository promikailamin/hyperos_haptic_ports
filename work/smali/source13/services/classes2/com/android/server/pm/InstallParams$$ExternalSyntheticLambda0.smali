.class public final synthetic Lcom/android/server/pm/InstallParams$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/InstallParams;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstallParams;ZLjava/util/List;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallParams$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/InstallParams;

    iput-boolean p2, p0, Lcom/android/server/pm/InstallParams$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/android/server/pm/InstallParams$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/InstallParams$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/InstallParams;

    iget-boolean v1, p0, Lcom/android/server/pm/InstallParams$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, p0, Lcom/android/server/pm/InstallParams$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/InstallParams;->lambda$processInstallRequestsAsync$0$com-android-server-pm-InstallParams(ZLjava/util/List;)V

    return-void
.end method
