.class public Lcom/miui/autoui/DefaultAutoUIPath;
.super Ljava/lang/Object;
.source "DefaultAutoUIPath.java"

# interfaces
.implements Lcom/miui/autoui/IAutoUIPath;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs blacklist addOp(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 9
    return-void
.end method

.method public blacklist clear()V
    .registers 1

    .line 14
    return-void
.end method

.method public blacklist clonePath(Landroid/graphics/Path;)Landroid/graphics/Path;
    .registers 2
    .param p1, "path"    # Landroid/graphics/Path;

    .line 18
    return-object p1
.end method
