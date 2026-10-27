.class public final Lmiui/log/AndroidTags;
.super Ljava/lang/Object;
.source "AndroidTags.java"


# static fields
.field static final blacklist TAG_AM_DEBUG_BROADCAST:Ljava/lang/String; = "com.android.server.am.ActivityManagerService.DEBUG_BROADCAST"

.field private static final blacklist androidTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/log/AndroidTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/log/AndroidTags;->androidTagMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized blacklist add(Ljava/lang/Class;Ljava/lang/String;Z)Lmiui/log/AndroidTag;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "defaultOn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)",
            "Lmiui/log/AndroidTag;"
        }
    .end annotation

    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lmiui/log/AndroidTags;

    monitor-enter v0

    .line 22
    :try_start_3
    sget-object v1, Lmiui/log/AndroidTags;->androidTagMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Lmiui/log/AndroidTag;->buildFieldFullPath(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/log/AndroidTag;

    .line 23
    .local v2, "tag":Lmiui/log/AndroidTag;
    if-nez v2, :cond_1c

    .line 24
    new-instance v3, Lmiui/log/AndroidTag;

    invoke-direct {v3, p0, p1, p2}, Lmiui/log/AndroidTag;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    move-object v2, v3

    .line 25
    iget-object v3, v2, Lmiui/log/AndroidTag;->fieldFullPath:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    .line 27
    :cond_1c
    monitor-exit v0

    return-object v2

    .line 21
    .end local v2    # "tag":Lmiui/log/AndroidTag;
    .end local p0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p1    # "fieldName":Ljava/lang/String;
    .end local p2    # "defaultOn":Z
    :catchall_1e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static blacklist create(Ljava/lang/String;)Lmiui/log/AndroidTag;
    .registers 8
    .param p0, "fieldFullPath"    # Ljava/lang/String;

    .line 62
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 63
    .local v0, "sepIndex":I
    const/4 v1, 0x0

    if-gez v0, :cond_a

    .line 64
    return-object v1

    .line 66
    :cond_a
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "className":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "fieldName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_57

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2e

    goto :goto_57

    .line 71
    :cond_2e
    sget-object v5, Lmiui/log/AndroidTag;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    invoke-static {v3, v5}, Lmiui/util/ReflectionUtils;->tryFindClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 72
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v5, :cond_37

    .line 73
    return-object v1

    .line 75
    :cond_37
    const-class v1, Ljava/lang/Boolean;

    invoke-static {v5, v4, v1}, Lmiui/util/ReflectionUtils;->tryGetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;

    move-result-object v1

    .line 76
    .local v1, "defaultValue":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Boolean;>;"
    if-nez v1, :cond_40

    :goto_3f
    goto :goto_51

    :cond_40
    invoke-virtual {v1}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_47

    goto :goto_3f

    :cond_47
    invoke-virtual {v1}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 77
    .local v2, "defaultOn":Z
    :goto_51
    new-instance v6, Lmiui/log/AndroidTag;

    invoke-direct {v6, v5, v4, v2}, Lmiui/log/AndroidTag;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    return-object v6

    .line 69
    .end local v1    # "defaultValue":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Boolean;>;"
    .end local v2    # "defaultOn":Z
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_57
    :goto_57
    return-object v1
.end method

.method public static declared-synchronized blacklist get(Ljava/lang/String;)Lmiui/log/AndroidTag;
    .registers 4
    .param p0, "fieldFullPath"    # Ljava/lang/String;

    const-class v0, Lmiui/log/AndroidTags;

    monitor-enter v0

    .line 31
    :try_start_3
    sget-object v1, Lmiui/log/AndroidTags;->androidTagMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 32
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/log/AndroidTag;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1c

    monitor-exit v0

    return-object v1

    .line 34
    :cond_13
    :try_start_13
    invoke-static {p0}, Lmiui/log/AndroidTags;->create(Ljava/lang/String;)Lmiui/log/AndroidTag;

    move-result-object v2

    .line 35
    .local v2, "tag":Lmiui/log/AndroidTag;
    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1c

    .line 36
    monitor-exit v0

    return-object v2

    .line 30
    .end local v2    # "tag":Lmiui/log/AndroidTag;
    .end local p0    # "fieldFullPath":Ljava/lang/String;
    :catchall_1c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized blacklist isOn(Ljava/lang/String;)Z
    .registers 4
    .param p0, "fieldFullPath"    # Ljava/lang/String;

    const-class v0, Lmiui/log/AndroidTags;

    monitor-enter v0

    .line 40
    :try_start_3
    invoke-static {p0}, Lmiui/log/AndroidTags;->get(Ljava/lang/String;)Lmiui/log/AndroidTag;

    move-result-object v1

    .line 41
    .local v1, "tag":Lmiui/log/AndroidTag;
    if-eqz v1, :cond_f

    .line 42
    invoke-virtual {v1}, Lmiui/log/AndroidTag;->isOn()Z

    move-result v2
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_12

    monitor-exit v0

    return v2

    .line 44
    :cond_f
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 39
    .end local v1    # "tag":Lmiui/log/AndroidTag;
    .end local p0    # "fieldFullPath":Ljava/lang/String;
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized blacklist switchOff(Ljava/lang/String;)V
    .registers 3
    .param p0, "fieldFullPath"    # Ljava/lang/String;

    const-class v0, Lmiui/log/AndroidTags;

    monitor-enter v0

    .line 55
    :try_start_3
    invoke-static {p0}, Lmiui/log/AndroidTags;->get(Ljava/lang/String;)Lmiui/log/AndroidTag;

    move-result-object v1

    .line 56
    .local v1, "tag":Lmiui/log/AndroidTag;
    if-eqz v1, :cond_c

    .line 57
    invoke-virtual {v1}, Lmiui/log/AndroidTag;->switchOff()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 59
    :cond_c
    monitor-exit v0

    return-void

    .line 54
    .end local v1    # "tag":Lmiui/log/AndroidTag;
    .end local p0    # "fieldFullPath":Ljava/lang/String;
    :catchall_e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized blacklist switchOn(Ljava/lang/String;)V
    .registers 3
    .param p0, "fieldFullPath"    # Ljava/lang/String;

    const-class v0, Lmiui/log/AndroidTags;

    monitor-enter v0

    .line 48
    :try_start_3
    invoke-static {p0}, Lmiui/log/AndroidTags;->get(Ljava/lang/String;)Lmiui/log/AndroidTag;

    move-result-object v1

    .line 49
    .local v1, "tag":Lmiui/log/AndroidTag;
    if-eqz v1, :cond_c

    .line 50
    invoke-virtual {v1}, Lmiui/log/AndroidTag;->switchOn()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 52
    :cond_c
    monitor-exit v0

    return-void

    .line 47
    .end local v1    # "tag":Lmiui/log/AndroidTag;
    .end local p0    # "fieldFullPath":Ljava/lang/String;
    :catchall_e
    move-exception p0

    monitor-exit v0

    throw p0
.end method
