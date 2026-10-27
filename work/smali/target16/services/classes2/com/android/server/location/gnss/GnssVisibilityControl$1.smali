.class public Lcom/android/server/location/gnss/GnssVisibilityControl$1;
.super Landroid/content/BroadcastReceiver;
.source "GnssVisibilityControl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssVisibilityControl;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssVisibilityControl;)V
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$1;->this$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 167
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_41

    .line 172
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_50

    goto :goto_3e

    :sswitch_13
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_3e

    :cond_1c
    const/4 v1, 0x3

    goto :goto_3e

    :sswitch_1e
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_3e

    :cond_27
    const/4 v1, 0x2

    goto :goto_3e

    :sswitch_29
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto :goto_3e

    :cond_32
    const/4 v1, 0x1

    goto :goto_3e

    :sswitch_34
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x0

    :goto_3e
    packed-switch v1, :pswitch_data_62

    :goto_41
    return-void

    .line 177
    :pswitch_42
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    .line 178
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$1;->this$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

    invoke-static {p0, p2, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->-$$Nest$mhandleProxyAppPackageUpdate(Lcom/android/server/location/gnss/GnssVisibilityControl;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_data_50
    .sparse-switch
        -0x304ed112 -> :sswitch_34
        0xa480416 -> :sswitch_29
        0x1f50b9c2 -> :sswitch_1e
        0x5c1076e2 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
    .end packed-switch
.end method
