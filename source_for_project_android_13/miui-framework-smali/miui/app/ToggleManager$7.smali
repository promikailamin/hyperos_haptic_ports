.class Lmiui/app/ToggleManager$7;
.super Landroid/database/ContentObserver;
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
.method constructor blacklist <init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lmiui/app/ToggleManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1174
    iput-object p1, p0, Lmiui/app/ToggleManager$7;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .registers 7
    .param p1, "selfChange"    # Z

    .line 1177
    iget-object v0, p0, Lmiui/app/ToggleManager$7;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v0}, Lmiui/app/ToggleManager;->-$$Nest$fgetmResolver(Lmiui/app/ToggleManager;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lmiui/app/ToggleManager;->-$$Nest$sfgetsCurrentUserId()I

    move-result v2

    const-string v3, "mobile_policy"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_14

    goto :goto_15

    :cond_14
    const/4 v4, 0x0

    :goto_15
    invoke-static {v0, v4}, Lmiui/app/ToggleManager;->-$$Nest$fputmMobilePolicyEnable(Lmiui/app/ToggleManager;Z)V

    .line 1179
    iget-object v0, p0, Lmiui/app/ToggleManager$7;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v0}, Lmiui/app/ToggleManager;->-$$Nest$mpostUpdateDataToggleAsync(Lmiui/app/ToggleManager;)V

    .line 1180
    return-void
.end method
