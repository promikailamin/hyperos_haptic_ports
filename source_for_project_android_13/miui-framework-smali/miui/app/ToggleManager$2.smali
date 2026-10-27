.class Lmiui/app/ToggleManager$2;
.super Landroid/content/BroadcastReceiver;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/app/ToggleManager;


# direct methods
.method constructor blacklist <init>(Lmiui/app/ToggleManager;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/app/ToggleManager;

    .line 1103
    iput-object p1, p0, Lmiui/app/ToggleManager$2;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1107
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "com.xiaomi.midrop"

    if-eqz v1, :cond_27

    .line 1108
    invoke-static {}, Lmiui/app/ToggleManager;->-$$Nest$sfgetsHasMiDrop()Z

    move-result v1

    if-nez v1, :cond_47

    .line 1109
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 1110
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1111
    const/4 v2, 0x1

    invoke-static {v2}, Lmiui/app/ToggleManager;->-$$Nest$sfputsHasMiDrop(Z)V

    .line 1113
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_26
    goto :goto_47

    .line 1114
    :cond_27
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1115
    invoke-static {}, Lmiui/app/ToggleManager;->-$$Nest$sfgetsHasMiDrop()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1116
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 1117
    .restart local v1    # "packageName":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1118
    const/4 v2, 0x0

    invoke-static {v2}, Lmiui/app/ToggleManager;->-$$Nest$sfputsHasMiDrop(Z)V

    .line 1122
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_47
    :goto_47
    return-void
.end method
