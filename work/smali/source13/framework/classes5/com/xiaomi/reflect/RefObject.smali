.class public Lcom/xiaomi/reflect/RefObject;
.super Lcom/xiaomi/reflect/RefBase;
.source "RefObject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/reflect/RefBase;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 18
    const-string v0, "Java_Reflection"

    sput-object v0, Lcom/xiaomi/reflect/RefObject;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .registers 5
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 33
    .local p0, "this":Lcom/xiaomi/reflect/RefObject;, "Lcom/xiaomi/reflect/RefObject<TT;>;"
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/xiaomi/reflect/RefBase;-><init>()V

    .line 34
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/reflect/RefObject;->mField:Ljava/lang/reflect/Field;

    .line 35
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 36
    return-void
.end method


# virtual methods
.method public blacklist get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lcom/xiaomi/reflect/RefObject;, "Lcom/xiaomi/reflect/RefObject<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/reflect/RefObject;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 71
    :catch_7
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/xiaomi/reflect/RefObject;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/xiaomi/reflect/RefObject;, "Lcom/xiaomi/reflect/RefObject<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/reflect/RefObject;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 54
    goto :goto_10

    .line 52
    :catch_6
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/xiaomi/reflect/RefObject;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_10
    return-void
.end method
