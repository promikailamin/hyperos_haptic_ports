.class public Lcom/android/server/content/SyncManager$10;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Landroid/content/pm/RegisteredServicesCacheListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager;)V
    .registers 2

    .line 713
    iput-object p1, p0, Lcom/android/server/content/SyncManager$10;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceChanged(Landroid/content/SyncAdapterType;IZ)V
    .registers 15

    if-nez p3, :cond_15

    .line 717
    iget-object v0, p0, Lcom/android/server/content/SyncManager$10;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v4, p1, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 721
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x3

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/4 v7, 0x0

    .line 717
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V

    :cond_15
    return-void
.end method

.method public bridge synthetic onServiceChanged(Ljava/lang/Object;IZ)V
    .registers 4

    .line 713
    check-cast p1, Landroid/content/SyncAdapterType;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager$10;->onServiceChanged(Landroid/content/SyncAdapterType;IZ)V

    return-void
.end method
