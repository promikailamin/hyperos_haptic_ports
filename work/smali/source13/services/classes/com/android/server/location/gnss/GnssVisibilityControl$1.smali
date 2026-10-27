.class Lcom/android/server/location/gnss/GnssVisibilityControl$1;
.super Landroid/content/BroadcastReceiver;
.source "GnssVisibilityControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/gnss/GnssVisibilityControl;->listenForProxyAppsPackageUpdates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssVisibilityControl;


# direct methods
.method constructor <init>(Lcom/android/server/location/gnss/GnssVisibilityControl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/gnss/GnssVisibilityControl;

    .line 166
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$1;->this$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 169
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 171
    return-void

    .line 174
    :cond_7
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_4a

    :cond_f
    goto :goto_37

    :sswitch_10
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x0

    goto :goto_37

    :sswitch_1a
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x1

    goto :goto_37

    :sswitch_24
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x3

    goto :goto_37

    :sswitch_2e
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x2

    :goto_37
    packed-switch v1, :pswitch_data_5c

    goto :goto_48

    .line 179
    :pswitch_3b
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$1;->this$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

    invoke-static {v2, v1, v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->-$$Nest$mhandleProxyAppPackageUpdate(Lcom/android/server/location/gnss/GnssVisibilityControl;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .end local v1    # "pkgName":Ljava/lang/String;
    :goto_48
    return-void

    nop

    :sswitch_data_4a
    .sparse-switch
        -0x304ed112 -> :sswitch_2e
        0xa480416 -> :sswitch_24
        0x1f50b9c2 -> :sswitch_1a
        0x5c1076e2 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
    .end packed-switch
.end method
