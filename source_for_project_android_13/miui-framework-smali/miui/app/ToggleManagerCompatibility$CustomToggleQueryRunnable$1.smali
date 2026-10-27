.class Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable$1;
.super Ljava/lang/Object;
.source "ToggleManagerCompatibility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;


# direct methods
.method constructor blacklist <init>(Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;)V
    .registers 2
    .param p1, "this$1"    # Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;

    .line 787
    iput-object p1, p0, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable$1;->this$1:Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 789
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable$1;->this$1:Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;

    iget-object v0, v0, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;->this$0:Lmiui/app/ToggleManagerCompatibility;

    invoke-static {v0}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$fgetmCustomToggleChangedListeners(Lmiui/app/ToggleManagerCompatibility;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;

    .line 790
    .local v1, "onCustomToggleChangedListener":Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;
    invoke-interface {v1}, Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;->onCustomToggleChanged()V

    .line 791
    .end local v1    # "onCustomToggleChangedListener":Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;
    goto :goto_c

    .line 792
    :cond_1c
    return-void
.end method
