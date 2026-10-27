.class public Lmiui/freedrag/MiuiFreeDragFilter;
.super Ljava/lang/Object;
.source "MiuiFreeDragFilter.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MiuiFreeDragFilter"

.field private static blacklist rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/freedrag/FilterRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lmiui/freedrag/MiuiFreeDragFilter;->rules:Ljava/util/List;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist allowDrag(Landroid/view/View;)Z
    .registers 10
    .param p0, "view"    # Landroid/view/View;

    .line 37
    const/4 v0, 0x0

    const-string v1, "Can\'t drag because "

    const-string v2, "MiuiFreeDragFilter"

    if-eqz p0, :cond_5f

    sget-object v3, Lmiui/freedrag/MiuiFreeDragFilter;->rules:Ljava/util/List;

    if-nez v3, :cond_c

    goto :goto_5f

    .line 41
    :cond_c
    invoke-static {}, Lmiui/freedrag/MiuiFreeDragFilter;->init()V

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getAttachedActivityInstance()Landroid/app/Activity;

    move-result-object v3

    .line 43
    .local v3, "activity":Landroid/app/Activity;
    const/4 v4, 0x0

    if-nez v3, :cond_18

    move-object v5, v4

    goto :goto_20

    :cond_18
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 44
    .local v5, "activityClass":Ljava/lang/String;
    :goto_20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_27

    goto :goto_2f

    :cond_27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "packageName":Ljava/lang/String;
    :goto_2f
    sget-object v6, Lmiui/freedrag/MiuiFreeDragFilter;->rules:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_35
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/freedrag/FilterRule;

    .line 47
    .local v7, "rule":Lmiui/freedrag/FilterRule;
    invoke-virtual {v7, p0, v5, v4}, Lmiui/freedrag/FilterRule;->check(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 48
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return v0

    .line 51
    .end local v7    # "rule":Lmiui/freedrag/FilterRule;
    :cond_5c
    goto :goto_35

    .line 52
    :cond_5d
    const/4 v0, 0x1

    return v0

    .line 38
    .end local v3    # "activity":Landroid/app/Activity;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "activityClass":Ljava/lang/String;
    :cond_5f
    :goto_5f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p0, :cond_6d

    const-string v3, "view"

    goto :goto_6f

    :cond_6d
    const-string v3, "rules"

    :goto_6f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is null"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return v0
.end method

.method public static blacklist init()V
    .registers 3

    .line 25
    const-string v0, "MiuiFreeDragFilter"

    :try_start_2
    const-string v1, "MiuiFreeDragService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lmiui/freedrag/IMiuiFreeDragService$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/freedrag/IMiuiFreeDragService;

    move-result-object v1

    .line 26
    .local v1, "miuiFreeDragService":Lmiui/freedrag/IMiuiFreeDragService;
    if-nez v1, :cond_14

    .line 27
    const-string v2, "Can\'t get MiuiFreeDragService"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 29
    :cond_14
    invoke-interface {v1}, Lmiui/freedrag/IMiuiFreeDragService;->getFilterRules()Ljava/util/List;

    move-result-object v2

    sput-object v2, Lmiui/freedrag/MiuiFreeDragFilter;->rules:Ljava/util/List;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1a} :catch_1b

    .line 33
    .end local v1    # "miuiFreeDragService":Lmiui/freedrag/IMiuiFreeDragService;
    :goto_1a
    goto :goto_21

    .line 31
    :catch_1b
    move-exception v1

    .line 32
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Exception happened when getting FilterRules"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_21
    return-void
.end method
