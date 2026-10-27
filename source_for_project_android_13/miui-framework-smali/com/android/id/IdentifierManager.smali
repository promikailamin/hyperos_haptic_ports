.class public Lcom/android/id/IdentifierManager;
.super Ljava/lang/Object;
.source "IdentifierManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "IdentifierManager"

.field private static blacklist sClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static blacklist sGetAAID:Ljava/lang/reflect/Method;

.field private static blacklist sGetOAID:Ljava/lang/reflect/Method;

.field private static blacklist sGetUDID:Ljava/lang/reflect/Method;

.field private static blacklist sGetVAID:Ljava/lang/reflect/Method;

.field private static blacklist sIdProivderImpl:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/android/id/IdentifierManager;->sGetUDID:Ljava/lang/reflect/Method;

    .line 17
    sput-object v0, Lcom/android/id/IdentifierManager;->sGetOAID:Ljava/lang/reflect/Method;

    .line 18
    sput-object v0, Lcom/android/id/IdentifierManager;->sGetVAID:Ljava/lang/reflect/Method;

    .line 19
    sput-object v0, Lcom/android/id/IdentifierManager;->sGetAAID:Ljava/lang/reflect/Method;

    .line 22
    :try_start_9
    const-string v0, "com.android.id.impl.IdProviderImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/id/IdentifierManager;->sClass:Ljava/lang/Class;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/android/id/IdentifierManager;->sIdProivderImpl:Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/android/id/IdentifierManager;->sClass:Ljava/lang/Class;

    const-string v1, "getUDID"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/id/IdentifierManager;->sGetUDID:Ljava/lang/reflect/Method;

    .line 25
    sget-object v0, Lcom/android/id/IdentifierManager;->sClass:Ljava/lang/Class;

    const-string v1, "getOAID"

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/id/IdentifierManager;->sGetOAID:Ljava/lang/reflect/Method;

    .line 26
    sget-object v0, Lcom/android/id/IdentifierManager;->sClass:Ljava/lang/Class;

    const-string v1, "getVAID"

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/id/IdentifierManager;->sGetVAID:Ljava/lang/reflect/Method;

    .line 27
    sget-object v0, Lcom/android/id/IdentifierManager;->sClass:Ljava/lang/Class;

    const-string v1, "getAAID"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/id/IdentifierManager;->sGetAAID:Ljava/lang/reflect/Method;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_59} :catch_5a

    .line 30
    goto :goto_62

    .line 28
    :catch_5a
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IdentifierManager"

    const-string v2, "reflect exception!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_62
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getAAID(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 79
    sget-object v0, Lcom/android/id/IdentifierManager;->sGetAAID:Ljava/lang/reflect/Method;

    invoke-static {p0, v0}, Lcom/android/id/IdentifierManager;->invokeMethod(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getOAID(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 59
    sget-object v0, Lcom/android/id/IdentifierManager;->sGetOAID:Ljava/lang/reflect/Method;

    invoke-static {p0, v0}, Lcom/android/id/IdentifierManager;->invokeMethod(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getUDID(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 49
    sget-object v0, Lcom/android/id/IdentifierManager;->sGetUDID:Ljava/lang/reflect/Method;

    invoke-static {p0, v0}, Lcom/android/id/IdentifierManager;->invokeMethod(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getVAID(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 69
    sget-object v0, Lcom/android/id/IdentifierManager;->sGetVAID:Ljava/lang/reflect/Method;

    invoke-static {p0, v0}, Lcom/android/id/IdentifierManager;->invokeMethod(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist invokeMethod(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 83
    sget-object v0, Lcom/android/id/IdentifierManager;->sIdProivderImpl:Ljava/lang/Object;

    if-eqz v0, :cond_1f

    if-eqz p1, :cond_1f

    .line 85
    const/4 v1, 0x1

    :try_start_7
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    .local v0, "result":Ljava/lang/Object;
    if-eqz v0, :cond_16

    .line 87
    move-object v1, v0

    check-cast v1, Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_17

    return-object v1

    .line 91
    .end local v0    # "result":Ljava/lang/Object;
    :cond_16
    goto :goto_1f

    .line 89
    :catch_17
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IdentifierManager"

    const-string v2, "invoke exception!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist isSupported()Z
    .registers 1

    .line 39
    sget-object v0, Lcom/android/id/IdentifierManager;->sClass:Ljava/lang/Class;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/id/IdentifierManager;->sIdProivderImpl:Ljava/lang/Object;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
