.class public final synthetic Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;->f$1:Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;->f$1:Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->lambda$sendOnUnsyncableAccount$12(Landroid/content/Context;Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V

    return-void
.end method
