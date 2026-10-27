.class public Lcom/xiaomi/multiwin/MiuiMultiWinReflectImpl;
.super Ljava/lang/Object;
.source "MiuiMultiWinReflectImpl.java"

# interfaces
.implements Lcom/xiaomi/multiwin/MiuiMultiWinReflectStub;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs blacklist invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/Object;

    .line 14
    invoke-static {p1, p2, p3}, Landroid/util/MiuiMultiWindowUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
