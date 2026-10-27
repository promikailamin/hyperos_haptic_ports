.class public Landroid/animation/IntArrayEvaluator;
.super Ljava/lang/Object;
.source "IntArrayEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "[I>;"
    }
.end annotation


# instance fields
.field private greylist-max-o mArray:[I


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor whitelist <init>([I)V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/animation/IntArrayEvaluator;->mArray:[I

    .line 49
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 25
    check-cast p2, [I

    check-cast p3, [I

    invoke-virtual {p0, p1, p2, p3}, Landroid/animation/IntArrayEvaluator;->evaluate(F[I[I)[I

    move-result-object p1

    return-object p1
.end method

.method public whitelist evaluate(F[I[I)[I
    .registers 9

    .line 64
    iget-object v0, p0, Landroid/animation/IntArrayEvaluator;->mArray:[I

    .line 65
    if-nez v0, :cond_7

    .line 66
    array-length v0, p2

    new-array v0, v0, [I

    .line 68
    :cond_7
    const/4 v1, 0x0

    :goto_8
    array-length v2, v0

    if-ge v1, v2, :cond_1a

    .line 69
    aget v2, p2, v1

    .line 70
    aget v3, p3, v1

    .line 71
    int-to-float v4, v2

    sub-int/2addr v3, v2

    int-to-float v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v4, v2

    float-to-int v2, v4

    aput v2, v0, v1

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 73
    :cond_1a
    return-object v0
.end method
