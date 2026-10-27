.class public Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;
.super Landroid/content/BroadcastReceiver;
.source "OneTimePermissionUserManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;


# direct methods
.method public static synthetic $r8$lambda$6x3791Vpzm9EvFzqEU_YcvejCYI(Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;->lambda$onReceive$0(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onReceive$0(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V
    .registers 2

    .line 90
    iget-object p0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {p0, p1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$mlogOneTimeSessionEvent(Lcom/android/server/pm/permission/OneTimePermissionUserManager;Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 80
    const-string p1, "android.intent.action.UID_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 81
    const-string p1, "android.intent.extra.UID"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 82
    iget-object p2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {p2}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$fgetmLock(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 83
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$fgetmListeners(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;

    if-eqz v0, :cond_45

    .line 88
    invoke-static {v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->-$$Nest$mcancel(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V

    .line 89
    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$fgetmListeners(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 90
    iget-object p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {p1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$fgetmHandler(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/android/server/pm/permission/OneTimePermissionUserManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_45

    :catchall_43
    move-exception p0

    goto :goto_47

    .line 92
    :cond_45
    :goto_45
    monitor-exit p2

    return-void

    :goto_47
    monitor-exit p2
    :try_end_48
    .catchall {:try_start_1a .. :try_end_48} :catchall_43

    throw p0

    :cond_49
    return-void
.end method
