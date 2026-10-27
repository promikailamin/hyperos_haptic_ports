.class public Lcom/miui/hybrid/hook/IntentHook;
.super Ljava/lang/Object;
.source "IntentHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/hybrid/hook/IntentHook$RedirectRule;
    }
.end annotation


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "IntentHook"

.field private static volatile blacklist sInstance:Lcom/miui/hybrid/hook/IntentHook;


# instance fields
.field private blacklist ruleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/hybrid/hook/IntentHook$RedirectRule;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/hybrid/hook/IntentHook;->ruleMap:Ljava/util/Map;

    .line 45
    return-void
.end method

.method public static blacklist getInstance()Lcom/miui/hybrid/hook/IntentHook;
    .registers 2

    .line 24
    sget-object v0, Lcom/miui/hybrid/hook/IntentHook;->sInstance:Lcom/miui/hybrid/hook/IntentHook;

    if-nez v0, :cond_17

    .line 25
    const-class v0, Lcom/miui/hybrid/hook/IntentHook;

    monitor-enter v0

    .line 26
    :try_start_7
    sget-object v1, Lcom/miui/hybrid/hook/IntentHook;->sInstance:Lcom/miui/hybrid/hook/IntentHook;

    if-nez v1, :cond_12

    .line 27
    new-instance v1, Lcom/miui/hybrid/hook/IntentHook;

    invoke-direct {v1}, Lcom/miui/hybrid/hook/IntentHook;-><init>()V

    sput-object v1, Lcom/miui/hybrid/hook/IntentHook;->sInstance:Lcom/miui/hybrid/hook/IntentHook;

    .line 29
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 32
    :cond_17
    :goto_17
    sget-object v0, Lcom/miui/hybrid/hook/IntentHook;->sInstance:Lcom/miui/hybrid/hook/IntentHook;

    return-object v0
.end method

.method private blacklist getRedirectRule(Landroid/content/Intent;Ljava/lang/String;)Lcom/miui/hybrid/hook/IntentHook$RedirectRule;
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 129
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 130
    return-object v0

    .line 133
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 134
    return-object v0

    .line 137
    :cond_b
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 138
    .local v1, "componentName":Landroid/content/ComponentName;
    if-nez v1, :cond_12

    .line 139
    return-object v0

    .line 142
    :cond_12
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 143
    return-object v0

    .line 147
    :cond_1d
    iget-object v2, p0, Lcom/miui/hybrid/hook/IntentHook;->ruleMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 149
    .local v2, "rules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/miui/hybrid/hook/IntentHook$RedirectRule;>;"
    if-nez v2, :cond_28

    .line 150
    return-object v0

    .line 154
    :cond_28
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "pkgName":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/hybrid/hook/IntentHook$RedirectRule;

    return-object v3
.end method


# virtual methods
.method public blacklist delete(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "destPkg"    # Ljava/lang/String;

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "IntentHook"

    const/4 v2, 0x0

    if-nez v0, :cond_46

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_46

    .line 83
    :cond_10
    iget-object v0, p0, Lcom/miui/hybrid/hook/IntentHook;->ruleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 84
    .local v0, "rules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/miui/hybrid/hook/IntentHook$RedirectRule;>;"
    if-eqz v0, :cond_45

    .line 85
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/hybrid/hook/IntentHook$RedirectRule;

    .line 86
    .local v3, "redirectRule":Lcom/miui/hybrid/hook/IntentHook$RedirectRule;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " redirectRule:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    if-eqz v3, :cond_44

    iget-object v2, v3, Lcom/miui/hybrid/hook/IntentHook$RedirectRule;->redirectPkg:Ljava/lang/String;

    :cond_44
    return-object v2

    .line 89
    .end local v3    # "redirectRule":Lcom/miui/hybrid/hook/IntentHook$RedirectRule;
    :cond_45
    return-object v2

    .line 79
    .end local v0    # "rules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/miui/hybrid/hook/IntentHook$RedirectRule;>;"
    :cond_46
    :goto_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IntentHook.delete("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") failed."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-object v2
.end method

.method public blacklist insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 10
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "destPkg"    # Ljava/lang/String;
    .param p3, "redirectPkg"    # Ljava/lang/String;
    .param p4, "clsNameMap"    # Landroid/os/Bundle;

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "IntentHook"

    if-nez v0, :cond_67

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_67

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_67

    .line 58
    :cond_15
    new-instance v0, Lcom/miui/hybrid/hook/IntentHook$RedirectRule;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/miui/hybrid/hook/IntentHook$RedirectRule;-><init>(Lcom/miui/hybrid/hook/IntentHook$RedirectRule-IA;)V

    .line 59
    .local v0, "rule":Lcom/miui/hybrid/hook/IntentHook$RedirectRule;
    iput-object p1, v0, Lcom/miui/hybrid/hook/IntentHook$RedirectRule;->callingPkg:Ljava/lang/String;

    .line 60
    iput-object p2, v0, Lcom/miui/hybrid/hook/IntentHook$RedirectRule;->originDestPkg:Ljava/lang/String;

    .line 61
    iput-object p3, v0, Lcom/miui/hybrid/hook/IntentHook$RedirectRule;->redirectPkg:Ljava/lang/String;

    .line 62
    iput-object p4, v0, Lcom/miui/hybrid/hook/IntentHook$RedirectRule;->clsNameMap:Landroid/os/Bundle;

    .line 65
    iget-object v2, p0, Lcom/miui/hybrid/hook/IntentHook;->ruleMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 66
    .local v2, "rules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/miui/hybrid/hook/IntentHook$RedirectRule;>;"
    if-nez v2, :cond_38

    .line 67
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v2, v3

    .line 68
    iget-object v3, p0, Lcom/miui/hybrid/hook/IntentHook;->ruleMap:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_38
    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert rule "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v1, 0x1

    return v1

    .line 49
    .end local v0    # "rule":Lcom/miui/hybrid/hook/IntentHook$RedirectRule;
    .end local v2    # "rules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/miui/hybrid/hook/IntentHook$RedirectRule;>;"
    :cond_67
    :goto_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntentHook.insert("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") failed."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist redirect(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .registers 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callingPkg"    # Ljava/lang/String;

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/miui/hybrid/hook/IntentHook;->getRedirectRule(Landroid/content/Intent;Ljava/lang/String;)Lcom/miui/hybrid/hook/IntentHook$RedirectRule;

    move-result-object v0

    .line 94
    .local v0, "rule":Lcom/miui/hybrid/hook/IntentHook$RedirectRule;
    if-nez v0, :cond_7

    .line 95
    return-object p1

    .line 98
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 99
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "clsName":Ljava/lang/String;
    iget-object v4, v0, Lcom/miui/hybrid/hook/IntentHook$RedirectRule;->redirectPkg:Ljava/lang/String;

    .line 104
    .local v4, "redirectPkg":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "redirect intent: package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "IntentHook"

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    move-object v5, v3

    .line 108
    .local v5, "redirectCls":Ljava/lang/String;
    iget-object v8, v0, Lcom/miui/hybrid/hook/IntentHook$RedirectRule;->clsNameMap:Landroid/os/Bundle;

    if-eqz v8, :cond_85

    .line 109
    iget-object v8, v0, Lcom/miui/hybrid/hook/IntentHook$RedirectRule;->clsNameMap:Landroid/os/Bundle;

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, "mapClass":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_68

    .line 111
    move-object v5, v8

    .line 112
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "redirect intent: class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    .line 114
    :cond_68
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ignore class part, "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " is not a valid className."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v8    # "mapClass":Ljava/lang/String;
    :goto_84
    goto :goto_8a

    .line 117
    :cond_85
    const-string v6, "ignore class part, rule.clsMapper is null."

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_8a
    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .local v6, "redirectComponent":Landroid/content/ComponentName;
    invoke-virtual {p1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 124
    return-object p1
.end method
