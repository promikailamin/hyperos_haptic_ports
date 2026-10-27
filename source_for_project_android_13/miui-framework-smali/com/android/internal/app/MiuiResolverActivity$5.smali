.class Lcom/android/internal/app/MiuiResolverActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "MiuiResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/MiuiResolverActivity;->createWorkProfileStateReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/MiuiResolverActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/MiuiResolverActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/app/MiuiResolverActivity;

    .line 2375
    iput-object p1, p0, Lcom/android/internal/app/MiuiResolverActivity$5;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2378
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2379
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 2380
    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 2381
    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 2382
    return-void

    .line 2385
    :cond_1d
    const/4 v1, -0x1

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2387
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/internal/app/MiuiResolverActivity$5;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/MiuiResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-eq v1, v2, :cond_31

    .line 2388
    return-void

    .line 2391
    :cond_31
    iget-object v2, p0, Lcom/android/internal/app/MiuiResolverActivity$5;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    invoke-static {v2}, Lcom/android/internal/app/MiuiResolverActivity;->-$$Nest$misWorkProfileEnabled(Lcom/android/internal/app/MiuiResolverActivity;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_50

    .line 2392
    iget-object v2, p0, Lcom/android/internal/app/MiuiResolverActivity$5;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    invoke-static {v2}, Lcom/android/internal/app/MiuiResolverActivity;->-$$Nest$fgetmWorkProfileHasBeenEnabled(Lcom/android/internal/app/MiuiResolverActivity;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 2393
    return-void

    .line 2396
    :cond_43
    iget-object v2, p0, Lcom/android/internal/app/MiuiResolverActivity$5;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    invoke-static {v2, v3}, Lcom/android/internal/app/MiuiResolverActivity;->-$$Nest$fputmWorkProfileHasBeenEnabled(Lcom/android/internal/app/MiuiResolverActivity;Z)V

    .line 2397
    iget-object v2, p0, Lcom/android/internal/app/MiuiResolverActivity$5;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    iget-object v2, v2, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->markWorkProfileEnabledBroadcastReceived()V

    goto :goto_56

    .line 2400
    :cond_50
    iget-object v2, p0, Lcom/android/internal/app/MiuiResolverActivity$5;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/internal/app/MiuiResolverActivity;->-$$Nest$fputmWorkProfileHasBeenEnabled(Lcom/android/internal/app/MiuiResolverActivity;Z)V

    .line 2403
    :goto_56
    iget-object v2, p0, Lcom/android/internal/app/MiuiResolverActivity$5;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    iget-object v2, v2, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/app/MiuiResolverActivity$5;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    .line 2404
    invoke-virtual {v4}, Lcom/android/internal/app/MiuiResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 2405
    iget-object v2, p0, Lcom/android/internal/app/MiuiResolverActivity$5;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    iget-object v2, v2, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildActiveTab(Z)Z

    goto :goto_79

    .line 2407
    :cond_72
    iget-object v2, p0, Lcom/android/internal/app/MiuiResolverActivity$5;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    iget-object v2, v2, Lcom/android/internal/app/MiuiResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->clearInactiveProfileCache()V

    .line 2409
    :goto_79
    return-void
.end method
