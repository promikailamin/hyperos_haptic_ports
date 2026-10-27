.class public final Lorg/apache/miui/commons/lang3/tuple/ImmutablePair;
.super Lorg/apache/miui/commons/lang3/tuple/Pair;
.source "ImmutablePair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/miui/commons/lang3/tuple/Pair<",
        "T",
        "L;",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x44c3687a6deaffd1L


# instance fields
.field public final blacklist left:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field public final blacklist right:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "TR;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Lorg/apache/miui/commons/lang3/tuple/ImmutablePair;, "Lorg/apache/miui/commons/lang3/tuple/ImmutablePair<TL;TR;>;"
    .local p1, "left":Ljava/lang/Object;, "TL;"
    .local p2, "right":Ljava/lang/Object;, "TR;"
    invoke-direct {p0}, Lorg/apache/miui/commons/lang3/tuple/Pair;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/apache/miui/commons/lang3/tuple/ImmutablePair;->left:Ljava/lang/Object;

    .line 71
    iput-object p2, p0, Lorg/apache/miui/commons/lang3/tuple/ImmutablePair;->right:Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public static blacklist of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/ImmutablePair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "TR;)",
            "Lorg/apache/miui/commons/lang3/tuple/ImmutablePair<",
            "T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 59
    .local p0, "left":Ljava/lang/Object;, "TL;"
    .local p1, "right":Ljava/lang/Object;, "TR;"
    new-instance v0, Lorg/apache/miui/commons/lang3/tuple/ImmutablePair;

    invoke-direct {v0, p0, p1}, Lorg/apache/miui/commons/lang3/tuple/ImmutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getLeft()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .line 80
    .local p0, "this":Lorg/apache/miui/commons/lang3/tuple/ImmutablePair;, "Lorg/apache/miui/commons/lang3/tuple/ImmutablePair<TL;TR;>;"
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/tuple/ImmutablePair;->left:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist getRight()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lorg/apache/miui/commons/lang3/tuple/ImmutablePair;, "Lorg/apache/miui/commons/lang3/tuple/ImmutablePair<TL;TR;>;"
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/tuple/ImmutablePair;->right:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TR;"
        }
    .end annotation

    .line 101
    .local p0, "this":Lorg/apache/miui/commons/lang3/tuple/ImmutablePair;, "Lorg/apache/miui/commons/lang3/tuple/ImmutablePair<TL;TR;>;"
    .local p1, "value":Ljava/lang/Object;, "TR;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
