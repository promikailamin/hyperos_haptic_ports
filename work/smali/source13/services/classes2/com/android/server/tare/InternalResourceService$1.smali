.class Lcom/android/server/tare/InternalResourceService$1;
.super Landroid/content/BroadcastReceiver;
.source "InternalResourceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/InternalResourceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tare/InternalResourceService;


# direct methods
.method constructor <init>(Lcom/android/server/tare/InternalResourceService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/tare/InternalResourceService;

    .line 159
    iput-object p1, p0, Lcom/android/server/tare/InternalResourceService$1;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 162
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 163
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 168
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_b4

    :cond_d
    goto :goto_54

    :sswitch_e
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_55

    :sswitch_18
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    goto :goto_55

    :sswitch_22
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x4

    goto :goto_55

    :sswitch_2c
    const-string v1, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x6

    goto :goto_55

    :sswitch_36
    const-string v1, "android.intent.action.BATTERY_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_55

    :sswitch_40
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x3

    goto :goto_55

    :sswitch_4a
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x5

    goto :goto_55

    :goto_54
    move v0, v3

    :goto_55
    const-string v1, "android.intent.extra.user_handle"

    const-string v4, "android.intent.extra.UID"

    packed-switch v0, :pswitch_data_d2

    goto :goto_b3

    .line 204
    :pswitch_5d
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$1;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->onExemptionListChanged()V

    goto :goto_b3

    .line 199
    :pswitch_63
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 200
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService$1;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1, v0}, Lcom/android/server/tare/InternalResourceService;->onUserRemoved(I)V

    .line 202
    .end local v0    # "userId":I
    goto :goto_b3

    .line 194
    :pswitch_6d
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 195
    .restart local v0    # "userId":I
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService$1;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1, v0}, Lcom/android/server/tare/InternalResourceService;->onUserAdded(I)V

    .line 197
    .end local v0    # "userId":I
    goto :goto_b3

    .line 187
    :pswitch_77
    invoke-direct {p0, p2}, Lcom/android/server/tare/InternalResourceService$1;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "pkgName":Ljava/lang/String;
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 189
    .local v1, "pkgUid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 190
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService$1;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/tare/InternalResourceService;->onPackageForceStopped(ILjava/lang/String;)V

    .line 192
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "pkgUid":I
    .end local v2    # "userId":I
    goto :goto_b3

    .line 179
    :pswitch_89
    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_b3

    .line 180
    invoke-direct {p0, p2}, Lcom/android/server/tare/InternalResourceService$1;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .restart local v0    # "pkgName":Ljava/lang/String;
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 182
    .restart local v1    # "pkgUid":I
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService$1;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/tare/InternalResourceService;->onPackageAdded(ILjava/lang/String;)V

    .line 183
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "pkgUid":I
    goto :goto_b3

    .line 173
    :pswitch_9f
    invoke-direct {p0, p2}, Lcom/android/server/tare/InternalResourceService$1;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .restart local v0    # "pkgName":Ljava/lang/String;
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 175
    .restart local v1    # "pkgUid":I
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService$1;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/tare/InternalResourceService;->onPackageRemoved(ILjava/lang/String;)V

    .line 177
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "pkgUid":I
    goto :goto_b3

    .line 170
    :pswitch_ad
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$1;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->onBatteryLevelChanged()V

    .line 171
    nop

    .line 207
    :cond_b3
    :goto_b3
    return-void

    :sswitch_data_b4
    .sparse-switch
        -0x7ad942ef -> :sswitch_4a
        -0x2d2ad030 -> :sswitch_40
        -0x2545adbe -> :sswitch_36
        -0x3e97d1f -> :sswitch_2c
        0x42dd01f1 -> :sswitch_22
        0x5c1076e2 -> :sswitch_18
        0x5e33a4ad -> :sswitch_e
    .end sparse-switch

    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_ad
        :pswitch_9f
        :pswitch_89
        :pswitch_77
        :pswitch_6d
        :pswitch_63
        :pswitch_5d
    .end packed-switch
.end method
