.class Lmiui/view/MiuiSecurityPermissionHandler$7;
.super Ljava/lang/Object;
.source "MiuiSecurityPermissionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationRequest(Landroid/view/View;Landroid/widget/Button;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/view/MiuiSecurityPermissionHandler;

.field final synthetic blacklist val$btn:Landroid/widget/Button;

.field final synthetic blacklist val$parentView:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/widget/Button;Landroid/view/View;)V
    .registers 4
    .param p1, "this$0"    # Lmiui/view/MiuiSecurityPermissionHandler;

    .line 462
    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    iput-object p2, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->val$btn:Landroid/widget/Button;

    iput-object p3, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->val$parentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 7

    .line 465
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->val$btn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 466
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$mloadAccountId(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/accounts/Account;

    move-result-object v0

    .line 467
    .local v0, "account":Landroid/accounts/Account;
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->val$parentView:Landroid/view/View;

    if-eqz v1, :cond_65

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmRetPermission(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v1

    if-gtz v1, :cond_1a

    if-nez v0, :cond_65

    .line 468
    :cond_1a
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->val$parentView:Landroid/view/View;

    .line 469
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 472
    .local v1, "wm":Landroid/view/WindowManager;
    :try_start_28
    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmPermissionView(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_48

    .line 474
    invoke-static {}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "verify button OnClick  removeView!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmPermissionView(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 477
    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fputmPermissionView(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/View;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_48} :catch_49

    .line 481
    :cond_48
    goto :goto_64

    .line 479
    :catch_49
    move-exception v2

    .line 480
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "verify button OnClick  removeView ex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    .end local v1    # "wm":Landroid/view/WindowManager;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_64
    goto :goto_88

    :cond_65
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmRetPermission(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_77

    .line 483
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->val$btn:Landroid/widget/Button;

    const v2, 0x110f0337

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_88

    .line 484
    :cond_77
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmRetPermission(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_88

    .line 485
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->val$btn:Landroid/widget/Button;

    const v2, 0x110f0339

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 487
    :cond_88
    :goto_88
    return-void
.end method
