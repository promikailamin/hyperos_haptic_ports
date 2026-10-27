.class Lmiui/app/ToggleManager$6;
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

    .line 1166
    iput-object p1, p0, Lmiui/app/ToggleManager$6;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 1169
    iget-object v0, p0, Lmiui/app/ToggleManager$6;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v0}, Lmiui/app/ToggleManager;->-$$Nest$fgetmMobileDataUtils(Lmiui/app/ToggleManager;)Landroid/app/MobileDataUtils;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/ToggleManager$6;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v1}, Lmiui/app/ToggleManager;->-$$Nest$fgetmContext(Lmiui/app/ToggleManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/MobileDataUtils;->onMobileDataChange(Landroid/content/Context;)V

    .line 1170
    iget-object v0, p0, Lmiui/app/ToggleManager$6;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v0}, Lmiui/app/ToggleManager;->-$$Nest$mpostUpdateDataToggleAsync(Lmiui/app/ToggleManager;)V

    .line 1171
    return-void
.end method
