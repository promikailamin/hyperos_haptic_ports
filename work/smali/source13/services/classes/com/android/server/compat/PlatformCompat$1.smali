.class Lcom/android/server/compat/PlatformCompat$1;
.super Landroid/content/BroadcastReceiver;
.source "PlatformCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/compat/PlatformCompat;->registerPackageReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/compat/PlatformCompat;


# direct methods
.method constructor <init>(Lcom/android/server/compat/PlatformCompat;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/compat/PlatformCompat;

    .line 537
    iput-object p1, p0, Lcom/android/server/compat/PlatformCompat$1;->this$0:Lcom/android/server/compat/PlatformCompat;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 540
    if-nez p2, :cond_3

    .line 541
    return-void

    .line 543
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 544
    .local v0, "packageData":Landroid/net/Uri;
    if-nez v0, :cond_a

    .line 545
    return-void

    .line 547
    :cond_a
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, "packageName":Ljava/lang/String;
    if-nez v1, :cond_11

    .line 549
    return-void

    .line 551
    :cond_11
    iget-object v2, p0, Lcom/android/server/compat/PlatformCompat$1;->this$0:Lcom/android/server/compat/PlatformCompat;

    invoke-static {v2}, Lcom/android/server/compat/PlatformCompat;->-$$Nest$fgetmCompatConfig(Lcom/android/server/compat/PlatformCompat;)Lcom/android/server/compat/CompatConfig;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/compat/CompatConfig;->recheckOverrides(Ljava/lang/String;)V

    .line 552
    return-void
.end method
