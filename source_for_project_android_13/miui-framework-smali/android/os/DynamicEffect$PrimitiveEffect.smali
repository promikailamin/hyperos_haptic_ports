.class public Landroid/os/DynamicEffect$PrimitiveEffect;
.super Ljava/lang/Object;
.source "DynamicEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DynamicEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrimitiveEffect"
.end annotation


# instance fields
.field public whitelist mCurves:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/DynamicEffect$Curve;",
            ">;"
        }
    .end annotation
.end field

.field public whitelist mDuration:I

.field public whitelist mIntensity:I

.field public whitelist mRelativeTime:I

.field public whitelist mSharpness:I

.field public whitelist mType:I


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/DynamicEffect$PrimitiveEffect;->mCurves:Ljava/util/List;

    .line 105
    return-void
.end method

.method constructor blacklist <init>(IIIII)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "relativeTime"    # I
    .param p3, "intensity"    # I
    .param p4, "sharpness"    # I
    .param p5, "duration"    # I

    .line 108
    invoke-direct {p0}, Landroid/os/DynamicEffect$PrimitiveEffect;-><init>()V

    .line 109
    iput p1, p0, Landroid/os/DynamicEffect$PrimitiveEffect;->mType:I

    .line 110
    iput p2, p0, Landroid/os/DynamicEffect$PrimitiveEffect;->mRelativeTime:I

    .line 111
    iput p3, p0, Landroid/os/DynamicEffect$PrimitiveEffect;->mIntensity:I

    .line 112
    iput p4, p0, Landroid/os/DynamicEffect$PrimitiveEffect;->mSharpness:I

    .line 113
    iput p5, p0, Landroid/os/DynamicEffect$PrimitiveEffect;->mDuration:I

    .line 114
    return-void
.end method


# virtual methods
.method public whitelist addParameter(Landroid/os/DynamicEffect$Parameter;)Landroid/os/DynamicEffect$PrimitiveEffect;
    .registers 4
    .param p1, "param"    # Landroid/os/DynamicEffect$Parameter;

    .line 117
    iget-object v0, p0, Landroid/os/DynamicEffect$PrimitiveEffect;->mCurves:Ljava/util/List;

    iget-object v1, p1, Landroid/os/DynamicEffect$Parameter;->mCurve:Landroid/os/DynamicEffect$Curve;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    return-object p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 123
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 124
    return v0

    .line 126
    :cond_4
    move-object v1, p1

    check-cast v1, Landroid/os/DynamicEffect$PrimitiveEffect;

    .line 127
    .local v1, "other":Landroid/os/DynamicEffect$PrimitiveEffect;
    iget v2, p0, Landroid/os/DynamicEffect$PrimitiveEffect;->mIntensity:I

    iget v3, v1, Landroid/os/DynamicEffect$PrimitiveEffect;->mIntensity:I

    if-ne v2, v3, :cond_24

    iget v2, p0, Landroid/os/DynamicEffect$PrimitiveEffect;->mSharpness:I

    iget v3, v1, Landroid/os/DynamicEffect$PrimitiveEffect;->mSharpness:I

    if-ne v2, v3, :cond_24

    iget v2, p0, Landroid/os/DynamicEffect$PrimitiveEffect;->mDuration:I

    iget v3, v1, Landroid/os/DynamicEffect$PrimitiveEffect;->mDuration:I

    if-ne v2, v3, :cond_24

    iget-object v2, p0, Landroid/os/DynamicEffect$PrimitiveEffect;->mCurves:Ljava/util/List;

    iget-object v3, v1, Landroid/os/DynamicEffect$PrimitiveEffect;->mCurves:Ljava/util/List;

    .line 130
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    .line 127
    :goto_25
    return v0
.end method
