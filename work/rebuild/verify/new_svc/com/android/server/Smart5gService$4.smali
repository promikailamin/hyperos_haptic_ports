.class public Lcom/android/server/Smart5gService$4;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "Smart5gService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/Smart5gService;


# direct methods
.method public constructor <init>(Lcom/android/server/Smart5gService;)V
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/android/server/Smart5gService$4;->this$0:Lcom/android/server/Smart5gService;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .registers 9

    .line 159
    const-string/jumbo v0, "onSubscriptionsChanged"

    invoke-static {v0}, Lcom/android/server/Smart5gService;->-$$Nest$smdlog(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/android/server/Smart5gService$4;->this$0:Lcom/android/server/Smart5gService;

    invoke-static {v0}, Lcom/android/server/Smart5gService;->-$$Nest$fgetmSubManager(Lcom/android/server/Smart5gService;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/android/server/Smart5gService$4;->this$0:Lcom/android/server/Smart5gService;

    invoke-static {v1}, Lcom/android/server/Smart5gService;->-$$Nest$fgetmActiveSubIds(Lcom/android/server/Smart5gService;)[I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_d4

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "active subs changed, was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/Smart5gService$4;->this$0:Lcom/android/server/Smart5gService;

    invoke-static {v2}, Lcom/android/server/Smart5gService;->-$$Nest$fgetmActiveSubIds(Lcom/android/server/Smart5gService;)[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", now: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-static {v1}, Lcom/android/server/Smart5gService;->-$$Nest$smdlog(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/android/server/Smart5gService$4;->this$0:Lcom/android/server/Smart5gService;

    invoke-static {v1}, Lcom/android/server/Smart5gService;->-$$Nest$fgetmContext(Lcom/android/server/Smart5gService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/Smart5gService$4;->this$0:Lcom/android/server/Smart5gService;

    invoke-static {v2}, Lcom/android/server/Smart5gService;->-$$Nest$fgetmSettingObserver(Lcom/android/server/Smart5gService;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 166
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5c
    if-ge v3, v1, :cond_ca

    aget v4, v0, v3

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registering content observer for subId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/Smart5gService;->-$$Nest$smdlog(Ljava/lang/String;)V

    .line 168
    iget-object v5, p0, Lcom/android/server/Smart5gService$4;->this$0:Lcom/android/server/Smart5gService;

    invoke-static {v5}, Lcom/android/server/Smart5gService;->-$$Nest$fgetmContext(Lcom/android/server/Smart5gService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "smart_5g"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 169
    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/Smart5gService$4;->this$0:Lcom/android/server/Smart5gService;

    invoke-static {v7}, Lcom/android/server/Smart5gService;->-$$Nest$fgetmSettingObserver(Lcom/android/server/Smart5gService;)Landroid/database/ContentObserver;

    move-result-object v7

    .line 168
    invoke-virtual {v5, v6, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 170
    iget-object v5, p0, Lcom/android/server/Smart5gService$4;->this$0:Lcom/android/server/Smart5gService;

    invoke-static {v5}, Lcom/android/server/Smart5gService;->-$$Nest$fgetmContext(Lcom/android/server/Smart5gService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mobile_data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 171
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/Smart5gService$4;->this$0:Lcom/android/server/Smart5gService;

    invoke-static {v6}, Lcom/android/server/Smart5gService;->-$$Nest$fgetmSettingObserver(Lcom/android/server/Smart5gService;)Landroid/database/ContentObserver;

    move-result-object v6

    .line 170
    invoke-virtual {v5, v4, v2, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    .line 173
    :cond_ca
    iget-object v1, p0, Lcom/android/server/Smart5gService$4;->this$0:Lcom/android/server/Smart5gService;

    invoke-static {v1, v0}, Lcom/android/server/Smart5gService;->-$$Nest$fputmActiveSubIds(Lcom/android/server/Smart5gService;[I)V

    .line 174
    iget-object p0, p0, Lcom/android/server/Smart5gService$4;->this$0:Lcom/android/server/Smart5gService;

    invoke-static {p0}, Lcom/android/server/Smart5gService;->-$$Nest$mupdate(Lcom/android/server/Smart5gService;)V

    :cond_d4
    return-void
.end method
