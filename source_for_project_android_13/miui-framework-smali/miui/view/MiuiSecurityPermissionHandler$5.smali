.class Lmiui/view/MiuiSecurityPermissionHandler$5;
.super Ljava/lang/Object;
.source "MiuiSecurityPermissionHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/MiuiSecurityPermissionHandler;->createPermissionView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/view/MiuiSecurityPermissionHandler;

.field final synthetic blacklist val$wm:Landroid/view/WindowManager;


# direct methods
.method constructor blacklist <init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/WindowManager;)V
    .registers 3
    .param p1, "this$0"    # Lmiui/view/MiuiSecurityPermissionHandler;

    .line 325
    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$5;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    iput-object p2, p0, Lmiui/view/MiuiSecurityPermissionHandler$5;->val$wm:Landroid/view/WindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 329
    :try_start_0
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$5;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmPermissionView(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 331
    invoke-static {}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi OnClick remove View!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$5;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmPermissionViewCallback(Lmiui/view/MiuiSecurityPermissionHandler;)Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onListenAccount(I)V

    .line 334
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$5;->val$wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$5;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmPermissionView(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 335
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$5;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fputmPermissionView(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/View;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 339
    :cond_2c
    goto :goto_48

    .line 337
    :catch_2d
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifi OnClick  removeView ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_48
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$5;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$monOpenWifiSettingsButtonClicked(Lmiui/view/MiuiSecurityPermissionHandler;)V

    .line 341
    return-void
.end method
