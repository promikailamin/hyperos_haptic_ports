.class Lmiui/view/MiuiSecurityPermissionHandler$6;
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

.field final synthetic blacklist val$parentView:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/View;)V
    .registers 3
    .param p1, "this$0"    # Lmiui/view/MiuiSecurityPermissionHandler;

    .line 450
    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$6;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    iput-object p2, p0, Lmiui/view/MiuiSecurityPermissionHandler$6;->val$parentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 453
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$6;->val$parentView:Landroid/view/View;

    if-eqz v0, :cond_18

    .line 454
    const v1, 0x110a0059

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x110f033c

    .line 455
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 456
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$6;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$menableWifiAndData(Lmiui/view/MiuiSecurityPermissionHandler;)V

    .line 458
    :cond_18
    return-void
.end method
