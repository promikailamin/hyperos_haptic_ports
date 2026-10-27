.class Lmiui/app/ToggleManager$4;
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

    .line 1148
    iput-object p1, p0, Lmiui/app/ToggleManager$4;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 1151
    iget-object v0, p0, Lmiui/app/ToggleManager$4;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v0}, Lmiui/app/ToggleManager;->-$$Nest$fgetmToggleOrderChangedListener(Lmiui/app/ToggleManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_26

    .line 1152
    iget-object v0, p0, Lmiui/app/ToggleManager$4;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v0}, Lmiui/app/ToggleManager;->-$$Nest$fgetmToggleOrderChangedListener(Lmiui/app/ToggleManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/ToggleManager$OnToggleOrderChangedListener;

    .line 1153
    .local v1, "toggleOrderChangedListener":Lmiui/app/ToggleManager$OnToggleOrderChangedListener;
    invoke-interface {v1}, Lmiui/app/ToggleManager$OnToggleOrderChangedListener;->OnToggleOrderChanged()V

    .line 1154
    .end local v1    # "toggleOrderChangedListener":Lmiui/app/ToggleManager$OnToggleOrderChangedListener;
    goto :goto_16

    .line 1156
    :cond_26
    return-void
.end method
