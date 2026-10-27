.class public Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck$1;
.super Landroid/content/ISyncAdapterUnsyncableAccountCallback$Stub;
.source "SyncManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V
    .registers 2

    .line 3033
    iput-object p1, p0, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck$1;->this$0:Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    invoke-direct {p0}, Landroid/content/ISyncAdapterUnsyncableAccountCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnsyncableAccountDone(Z)V
    .registers 2

    if-eqz p1, :cond_7

    .line 3037
    iget-object p0, p0, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck$1;->this$0:Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    invoke-static {p0}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->-$$Nest$monReady(Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V

    :cond_7
    return-void
.end method
