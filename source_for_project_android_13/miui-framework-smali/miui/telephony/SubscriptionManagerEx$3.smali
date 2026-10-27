.class Lmiui/telephony/SubscriptionManagerEx$3;
.super Ljava/lang/Object;
.source "SubscriptionManagerEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/SubscriptionManagerEx;->addOnSubscriptionsChangedListenerInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/telephony/SubscriptionManagerEx;


# direct methods
.method constructor blacklist <init>(Lmiui/telephony/SubscriptionManagerEx;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/telephony/SubscriptionManagerEx;

    .line 166
    iput-object p1, p0, Lmiui/telephony/SubscriptionManagerEx$3;->this$0:Lmiui/telephony/SubscriptionManagerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initSubscriptionListener in main Thread for pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmiui/telephony/SubscriptionManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubMgr"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx$3;->this$0:Lmiui/telephony/SubscriptionManagerEx;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/telephony/SubscriptionManagerEx;->-$$Nest$minitSubscriptionListener(Lmiui/telephony/SubscriptionManagerEx;Z)V

    .line 171
    return-void
.end method
