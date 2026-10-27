.class Lmiui/view/MiuiSecurityPermissionHandler$2$1;
.super Landroid/database/ContentObserver;
.source "MiuiSecurityPermissionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/MiuiSecurityPermissionHandler$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;


# direct methods
.method constructor blacklist <init>(Lmiui/view/MiuiSecurityPermissionHandler$2;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$1"    # Lmiui/view/MiuiSecurityPermissionHandler$2;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 181
    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 184
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 185
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;

    iget-object v0, v0, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmHandler(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmiui/view/MiuiSecurityPermissionHandler$2$1$1;

    invoke-direct {v1, p0}, Lmiui/view/MiuiSecurityPermissionHandler$2$1$1;-><init>(Lmiui/view/MiuiSecurityPermissionHandler$2$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    return-void
.end method
