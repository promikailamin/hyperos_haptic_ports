.class final Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppCompatOverridesService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/compat/overrides/AppCompatOverridesService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PackageReceiver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field final synthetic this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;


# direct methods
.method static bridge synthetic -$$Nest$mregister(Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->register()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregister(Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->unregister()V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/compat/overrides/AppCompatOverridesService;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;

    .line 414
    iput-object p1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 415
    iput-object p2, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->mContext:Landroid/content/Context;

    .line 416
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 417
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 418
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 419
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 420
    const-string/jumbo v0, "package"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/compat/overrides/AppCompatOverridesService;Landroid/content/Context;Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;-><init>(Lcom/android/server/compat/overrides/AppCompatOverridesService;Landroid/content/Context;)V

    return-void
.end method

.method private register()V
    .registers 4

    .line 424
    iget-object v0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, v2}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 426
    return-void
.end method

.method private unregister()V
    .registers 2

    .line 429
    iget-object v0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 430
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 434
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 435
    .local v0, "data":Landroid/net/Uri;
    const-string v1, "AppCompatOverridesService"

    if-nez v0, :cond_e

    .line 436
    const-string v2, "Failed to get package name in package receiver"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-void

    .line 439
    :cond_e
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 441
    .local v3, "action":Ljava/lang/String;
    if-nez v3, :cond_1e

    .line 442
    const-string v4, "Failed to get action in package receiver"

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-void

    .line 445
    :cond_1e
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_74

    :cond_26
    goto :goto_44

    :sswitch_27
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v4, 0x0

    goto :goto_44

    :sswitch_31
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v4, 0x2

    goto :goto_44

    :sswitch_3b
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v4, 0x1

    :goto_44
    packed-switch v4, :pswitch_data_82

    .line 456
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported action in package receiver: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 451
    :pswitch_5e
    iget-object v1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    invoke-static {v1, v2}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->-$$Nest$misInstalledForAnyUser(Lcom/android/server/compat/overrides/AppCompatOverridesService;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_72

    .line 452
    iget-object v1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    invoke-static {v1, v2}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->-$$Nest$mremoveAllPackageOverrides(Lcom/android/server/compat/overrides/AppCompatOverridesService;Ljava/lang/String;)V

    goto :goto_72

    .line 448
    :pswitch_6c
    iget-object v1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    invoke-static {v1, v2}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->-$$Nest$maddAllPackageOverrides(Lcom/android/server/compat/overrides/AppCompatOverridesService;Ljava/lang/String;)V

    .line 449
    nop

    .line 459
    :cond_72
    :goto_72
    return-void

    nop

    :sswitch_data_74
    .sparse-switch
        0xa480416 -> :sswitch_3b
        0x1f50b9c2 -> :sswitch_31
        0x5c1076e2 -> :sswitch_27
    .end sparse-switch

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_6c
        :pswitch_5e
    .end packed-switch
.end method
