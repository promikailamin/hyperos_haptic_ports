.class Lmiui/view/MiuiSecurityPermissionHandler$4;
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

.field final synthetic blacklist val$action:Landroid/widget/Button;


# direct methods
.method constructor blacklist <init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/widget/Button;)V
    .registers 3
    .param p1, "this$0"    # Lmiui/view/MiuiSecurityPermissionHandler;

    .line 296
    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$4;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    iput-object p2, p0, Lmiui/view/MiuiSecurityPermissionHandler$4;->val$action:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 299
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$4;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$mloadAccountId(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/accounts/Account;

    move-result-object v0

    .line 300
    .local v0, "account":Landroid/accounts/Account;
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$4;->val$action:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 301
    new-instance v1, Lmiui/view/MiuiSecurityPermissionHandler$4$1;

    invoke-direct {v1, p0, v0}, Lmiui/view/MiuiSecurityPermissionHandler$4$1;-><init>(Lmiui/view/MiuiSecurityPermissionHandler$4;Landroid/accounts/Account;)V

    .line 321
    invoke-virtual {v1}, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->start()V

    .line 322
    return-void
.end method
