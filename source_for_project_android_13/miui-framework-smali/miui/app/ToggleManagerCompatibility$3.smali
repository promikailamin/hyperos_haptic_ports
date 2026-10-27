.class Lmiui/app/ToggleManagerCompatibility$3;
.super Landroid/database/ContentObserver;
.source "ToggleManagerCompatibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManagerCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/app/ToggleManagerCompatibility;


# direct methods
.method constructor blacklist <init>(Lmiui/app/ToggleManagerCompatibility;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lmiui/app/ToggleManagerCompatibility;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 681
    iput-object p1, p0, Lmiui/app/ToggleManagerCompatibility$3;->this$0:Lmiui/app/ToggleManagerCompatibility;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .registers 7
    .param p1, "selfChange"    # Z

    .line 684
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$sfgetmObjectLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 685
    :try_start_5
    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility$3;->this$0:Lmiui/app/ToggleManagerCompatibility;

    invoke-static {v1}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$fgetmContext(Lmiui/app/ToggleManagerCompatibility;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/ToggleManagerCompatibility;->getCustomToggleIds(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 686
    .local v1, "customIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$sfgetmCustomIds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_76

    .line 687
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$sfgetmCustomIds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    .line 688
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$sfgetmCustomToggleComponentNames()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$sfgetmCustomIds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$sfgetmCustomToggleLabelNames()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$sfgetmCustomIds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$sfgetmCustomToggleStatus()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$sfgetmCustomIds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$sfgetmCustomToggleImages()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$sfgetmCustomIds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$sfgetmCustomIds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$sfgetmCustomIds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 686
    :cond_73
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 695
    .end local v1    # "customIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "i":I
    :cond_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_5 .. :try_end_77} :catchall_b2

    .line 697
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility$3;->this$0:Lmiui/app/ToggleManagerCompatibility;

    invoke-static {v0}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$fgetmToggleOrderChangedListener(Lmiui/app/ToggleManagerCompatibility;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_81
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/ToggleManager$OnToggleOrderChangedListener;

    .line 698
    .local v1, "toggleOrderChangedListener":Lmiui/app/ToggleManager$OnToggleOrderChangedListener;
    invoke-interface {v1}, Lmiui/app/ToggleManager$OnToggleOrderChangedListener;->OnToggleOrderChanged()V

    .line 699
    .end local v1    # "toggleOrderChangedListener":Lmiui/app/ToggleManager$OnToggleOrderChangedListener;
    goto :goto_81

    .line 701
    :cond_91
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$sfgetmIsSystemUI()Z

    move-result v0

    if-nez v0, :cond_b1

    .line 702
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility$3;->this$0:Lmiui/app/ToggleManagerCompatibility;

    invoke-static {v0}, Lmiui/app/ToggleManagerCompatibility;->-$$Nest$fgetmCustomToggleChangedListeners(Lmiui/app/ToggleManagerCompatibility;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;

    .line 703
    .local v1, "onCustomToggleChangedListener":Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;
    invoke-interface {v1}, Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;->onCustomToggleChanged()V

    .line 704
    .end local v1    # "onCustomToggleChangedListener":Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;
    goto :goto_a1

    .line 706
    :cond_b1
    return-void

    .line 695
    :catchall_b2
    move-exception v1

    :try_start_b3
    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    throw v1
.end method
