.class Lmiui/telephony/SubscriptionManager$1;
.super Landroid/os/AsyncTask;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/SubscriptionManager;->onSubscriptionInfoChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/telephony/SubscriptionManager;


# direct methods
.method constructor blacklist <init>(Lmiui/telephony/SubscriptionManager;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/telephony/SubscriptionManager;

    .line 269
    iput-object p1, p0, Lmiui/telephony/SubscriptionManager$1;->this$0:Lmiui/telephony/SubscriptionManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 269
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/telephony/SubscriptionManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .param p1, "params"    # [Ljava/lang/Void;

    .line 272
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager$1;->this$0:Lmiui/telephony/SubscriptionManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/telephony/SubscriptionManager;->-$$Nest$mensureSubscriptionInfoCache(Lmiui/telephony/SubscriptionManager;Z)V

    .line 273
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 269
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/telephony/SubscriptionManager$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected blacklist onPostExecute(Ljava/lang/Void;)V
    .registers 3
    .param p1, "result"    # Ljava/lang/Void;

    .line 278
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager$1;->this$0:Lmiui/telephony/SubscriptionManager;

    invoke-static {v0}, Lmiui/telephony/SubscriptionManager;->-$$Nest$mnotifyOnSubscriptionsChangedListeners(Lmiui/telephony/SubscriptionManager;)V

    .line 279
    return-void
.end method
