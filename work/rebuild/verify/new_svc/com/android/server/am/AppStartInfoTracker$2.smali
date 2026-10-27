.class public Lcom/android/server/am/AppStartInfoTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "AppStartInfoTracker.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppStartInfoTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppStartInfoTracker;)V
    .registers 2

    .line 883
    iput-object p1, p0, Lcom/android/server/am/AppStartInfoTracker$2;->this$0:Lcom/android/server/am/AppStartInfoTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 886
    const-string p1, "android.intent.extra.REPLACING"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_a

    return-void

    .line 890
    :cond_a
    const-string p1, "android.intent.extra.UID"

    const/16 v1, -0x2710

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 891
    const-string v1, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    .line 892
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 893
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker$2;->this$0:Lcom/android/server/am/AppStartInfoTracker;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/am/AppStartInfoTracker;->onPackageRemoved(Ljava/lang/String;IZ)V

    return-void
.end method
