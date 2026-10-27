.class public final Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppCompatOverridesService.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mIntentFilter:Landroid/content/IntentFilter;

.field public final synthetic this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;


# direct methods
.method public static bridge synthetic -$$Nest$mregister(Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->register()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/compat/overrides/AppCompatOverridesService;Landroid/content/Context;)V
    .registers 3

    .line 395
    iput-object p1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 396
    iput-object p2, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->mContext:Landroid/content/Context;

    .line 397
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 398
    const-string p0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    const-string p0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    const-string p0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    const-string/jumbo p0, "package"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/compat/overrides/AppCompatOverridesService;Landroid/content/Context;Lcom/android/server/compat/overrides/AppCompatOverridesService-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;-><init>(Lcom/android/server/compat/overrides/AppCompatOverridesService;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 411
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 412
    const-string v0, "AppCompatOverridesService"

    if-nez p1, :cond_e

    .line 413
    const-string p0, "Failed to get package name in package receiver"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 416
    :cond_e
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 417
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1e

    .line 419
    const-string p0, "Failed to get action in package receiver"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 422
    :cond_1e
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_76

    goto :goto_4a

    :sswitch_2a
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    goto :goto_4a

    :cond_33
    const/4 v2, 0x2

    goto :goto_4a

    :sswitch_35
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    goto :goto_4a

    :cond_3e
    const/4 v2, 0x1

    goto :goto_4a

    :sswitch_40
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    goto :goto_4a

    :cond_49
    const/4 v2, 0x0

    :goto_4a
    packed-switch v2, :pswitch_data_84

    .line 433
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unsupported action in package receiver: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 428
    :pswitch_62
    iget-object p2, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    invoke-static {p2, p1}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->-$$Nest$misInstalledForAnyUser(Lcom/android/server/compat/overrides/AppCompatOverridesService;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6f

    .line 429
    iget-object p0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    invoke-static {p0, p1}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->-$$Nest$mremoveAllPackageOverrides(Lcom/android/server/compat/overrides/AppCompatOverridesService;Ljava/lang/String;)V

    :cond_6f
    return-void

    .line 425
    :pswitch_70
    iget-object p0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    invoke-static {p0, p1}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->-$$Nest$maddAllPackageOverrides(Lcom/android/server/compat/overrides/AppCompatOverridesService;Ljava/lang/String;)V

    return-void

    :sswitch_data_76
    .sparse-switch
        0xa480416 -> :sswitch_40
        0x1f50b9c2 -> :sswitch_35
        0x5c1076e2 -> :sswitch_2a
    .end sparse-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_70
        :pswitch_62
        :pswitch_70
    .end packed-switch
.end method

.method public final register()V
    .registers 4

    .line 405
    iget-object v0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, v2}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
