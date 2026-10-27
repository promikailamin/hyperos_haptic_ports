.class public Landroid/graphics/MiuiForceDarkConfigManagerStub;
.super Ljava/lang/Object;
.source "MiuiForceDarkConfigManagerStub.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MiuiForceDarkConfigManagerStub"

.field private static volatile blacklist sInstance:Landroid/graphics/MiuiForceDarkConfigManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 21
    const-string/jumbo v0, "static initializer: getInstance failed"

    const-string v1, "MiuiForceDarkConfigManagerStub"

    :try_start_5
    const-string v2, "android.graphics.MiuiForceDarkConfigManagerImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 22
    .local v2, "implClass":Ljava/lang/Class;
    if-eqz v2, :cond_23

    .line 23
    const-string v3, "getInstance"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 24
    .local v3, "getInstanceMethod":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_23

    .line 25
    const/4 v5, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/MiuiForceDarkConfigManager;

    sput-object v4, Landroid/graphics/MiuiForceDarkConfigManagerStub;->sInstance:Landroid/graphics/MiuiForceDarkConfigManager;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_23} :catch_31
    .catchall {:try_start_5 .. :try_end_23} :catchall_28

    .line 31
    .end local v2    # "implClass":Ljava/lang/Class;
    .end local v3    # "getInstanceMethod":Ljava/lang/reflect/Method;
    :cond_23
    sget-object v2, Landroid/graphics/MiuiForceDarkConfigManagerStub;->sInstance:Landroid/graphics/MiuiForceDarkConfigManager;

    if-nez v2, :cond_39

    .line 32
    goto :goto_36

    .line 31
    :catchall_28
    move-exception v2

    sget-object v3, Landroid/graphics/MiuiForceDarkConfigManagerStub;->sInstance:Landroid/graphics/MiuiForceDarkConfigManager;

    if-nez v3, :cond_30

    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_30
    throw v2

    .line 28
    :catch_31
    move-exception v2

    .line 31
    sget-object v2, Landroid/graphics/MiuiForceDarkConfigManagerStub;->sInstance:Landroid/graphics/MiuiForceDarkConfigManager;

    if-nez v2, :cond_39

    .line 32
    :goto_36
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_39
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static blacklist getMainRule()I
    .registers 1

    .line 46
    sget-object v0, Landroid/graphics/MiuiForceDarkConfigManagerStub;->sInstance:Landroid/graphics/MiuiForceDarkConfigManager;

    if-eqz v0, :cond_b

    .line 47
    sget-object v0, Landroid/graphics/MiuiForceDarkConfigManagerStub;->sInstance:Landroid/graphics/MiuiForceDarkConfigManager;

    invoke-interface {v0}, Landroid/graphics/MiuiForceDarkConfigManager;->getMainRule()I

    move-result v0

    return v0

    .line 49
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getSecondaryRule()I
    .registers 1

    .line 53
    sget-object v0, Landroid/graphics/MiuiForceDarkConfigManagerStub;->sInstance:Landroid/graphics/MiuiForceDarkConfigManager;

    if-eqz v0, :cond_b

    .line 54
    sget-object v0, Landroid/graphics/MiuiForceDarkConfigManagerStub;->sInstance:Landroid/graphics/MiuiForceDarkConfigManager;

    invoke-interface {v0}, Landroid/graphics/MiuiForceDarkConfigManager;->getSecondaryRule()I

    move-result v0

    return v0

    .line 56
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getTertiaryRule()I
    .registers 1

    .line 60
    sget-object v0, Landroid/graphics/MiuiForceDarkConfigManagerStub;->sInstance:Landroid/graphics/MiuiForceDarkConfigManager;

    if-eqz v0, :cond_b

    .line 61
    sget-object v0, Landroid/graphics/MiuiForceDarkConfigManagerStub;->sInstance:Landroid/graphics/MiuiForceDarkConfigManager;

    invoke-interface {v0}, Landroid/graphics/MiuiForceDarkConfigManager;->getTertiaryRule()I

    move-result v0

    return v0

    .line 63
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist setConfig(FIII)V
    .registers 6
    .param p0, "density"    # F
    .param p1, "mainRule"    # I
    .param p2, "secondaryRule"    # I
    .param p3, "tertiaryRule"    # I

    .line 38
    sget-object v0, Landroid/graphics/MiuiForceDarkConfigManagerStub;->sInstance:Landroid/graphics/MiuiForceDarkConfigManager;

    if-eqz v0, :cond_a

    .line 39
    sget-object v0, Landroid/graphics/MiuiForceDarkConfigManagerStub;->sInstance:Landroid/graphics/MiuiForceDarkConfigManager;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/graphics/MiuiForceDarkConfigManager;->setConfig(FIII)V

    goto :goto_11

    .line 41
    :cond_a
    const-string v0, "MiuiForceDarkConfigManagerStub"

    const-string v1, "can not find MiuiForceDarkConfigManager instance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :goto_11
    return-void
.end method
