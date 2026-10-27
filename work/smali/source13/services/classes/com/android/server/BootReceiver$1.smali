.class Lcom/android/server/BootReceiver$1;
.super Ljava/lang/Thread;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BootReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BootReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/BootReceiver;

    .line 135
    iput-object p1, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    iput-object p2, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 139
    const-string v0, "BootReceiver"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    iget-object v2, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/server/BootReceiver;->-$$Nest$mlogBootEvents(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_a

    .line 142
    goto :goto_10

    .line 140
    :catch_a
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Can\'t log boot events"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_10
    const/4 v1, 0x0

    .line 146
    .local v1, "onlyCore":Z
    :try_start_11
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 147
    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z

    move-result v2
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_20} :catch_24
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_20} :catch_22

    move v1, v2

    .line 149
    goto :goto_25

    .line 153
    .end local v1    # "onlyCore":Z
    :catch_22
    move-exception v1

    goto :goto_2f

    .line 148
    .restart local v1    # "onlyCore":Z
    :catch_24
    move-exception v2

    .line 150
    :goto_25
    if-nez v1, :cond_35

    .line 151
    :try_start_27
    iget-object v2, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    iget-object v3, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/server/BootReceiver;->-$$Nest$mremoveOldUpdatePackages(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2e} :catch_22

    goto :goto_35

    .line 154
    .local v1, "e":Ljava/lang/Exception;
    :goto_2f
    const-string v2, "Can\'t remove old update packages"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36

    .line 155
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_35
    :goto_35
    nop

    .line 157
    :goto_36
    return-void
.end method
