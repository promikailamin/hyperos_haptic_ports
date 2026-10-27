.class Lcom/android/server/os/NativeTombstoneManager$1;
.super Landroid/content/BroadcastReceiver;
.source "NativeTombstoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/os/NativeTombstoneManager;->registerForPackageRemoval()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/os/NativeTombstoneManager;


# direct methods
.method constructor <init>(Lcom/android/server/os/NativeTombstoneManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/os/NativeTombstoneManager;

    .line 216
    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager$1;->this$0:Lcom/android/server/os/NativeTombstoneManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 219
    const-string v0, "android.intent.extra.UID"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 220
    .local v0, "uid":I
    if-ne v0, v1, :cond_b

    return-void

    .line 222
    :cond_b
    const/4 v1, 0x0

    const-string v2, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 225
    .local v1, "allUsers":Z
    iget-object v2, p0, Lcom/android/server/os/NativeTombstoneManager$1;->this$0:Lcom/android/server/os/NativeTombstoneManager;

    invoke-static {v2, v0, v1}, Lcom/android/server/os/NativeTombstoneManager;->-$$Nest$mpurgePackage(Lcom/android/server/os/NativeTombstoneManager;IZ)V

    .line 226
    return-void
.end method
