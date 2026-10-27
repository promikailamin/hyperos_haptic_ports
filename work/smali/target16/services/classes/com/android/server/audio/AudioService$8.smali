.class public Lcom/android/server/audio/AudioService$8;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# instance fields
.field public final synthetic val$audioserverExecutor:Ljava/util/concurrent/Executor;

.field public final synthetic val$pmi:Landroid/content/pm/PackageManagerInternal;

.field public final synthetic val$provider:Lcom/android/server/audio/AudioServerPermissionProvider;


# direct methods
.method public static synthetic $r8$lambda$EM4JTpH4aKAL4DS-JUiYIGKVBnA(Lcom/android/server/audio/AudioServerPermissionProvider;ILandroid/content/pm/PackageManagerInternal;Ljava/lang/String;)V
    .registers 4

    .line 13731
    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->makePackageState(Lcom/android/server/pm/pkg/PackageState;)Lcom/android/media/permission/UidPackageState$PackageState;

    move-result-object p2

    const/4 p3, 0x0

    .line 13729
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioServerPermissionProvider;->onModifyPackageState(ILcom/android/media/permission/UidPackageState$PackageState;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/server/audio/AudioServerPermissionProvider;Landroid/content/pm/PackageManagerInternal;)V
    .registers 4

    .line 13716
    iput-object p1, p0, Lcom/android/server/audio/AudioService$8;->val$audioserverExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/server/audio/AudioService$8;->val$provider:Lcom/android/server/audio/AudioServerPermissionProvider;

    iput-object p3, p0, Lcom/android/server/audio/AudioService$8;->val$pmi:Landroid/content/pm/PackageManagerInternal;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 13719
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 13720
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 13721
    const-string v1, "android.intent.extra.UID"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 13722
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " replacing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13723
    const-string v3, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " archival: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.intent.extra.ARCHIVAL"

    .line 13724
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " for package "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " with uid "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 13722
    const-string v2, "AS.AudioService"

    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13726
    const-string p2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_69

    const-string p2, "android.intent.action.PACKAGE_REPLACED"

    .line 13727
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_68

    goto :goto_69

    :cond_68
    return-void

    .line 13728
    :cond_69
    :goto_69
    iget-object p1, p0, Lcom/android/server/audio/AudioService$8;->val$audioserverExecutor:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lcom/android/server/audio/AudioService$8;->val$provider:Lcom/android/server/audio/AudioServerPermissionProvider;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$8;->val$pmi:Landroid/content/pm/PackageManagerInternal;

    new-instance v2, Lcom/android/server/audio/AudioService$8$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, v1, p0, v0}, Lcom/android/server/audio/AudioService$8$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/AudioServerPermissionProvider;ILandroid/content/pm/PackageManagerInternal;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
