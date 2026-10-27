.class public abstract Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "DimensionInModifierOperation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;


# instance fields
.field blacklist mOpCode:I

.field blacklist mV1:F

.field blacklist mV2:F

.field blacklist mValue1:F

.field blacklist mValue2:F


# direct methods
.method public constructor blacklist <init>(IFF)V
    .registers 5

    .line 37
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mOpCode:I

    .line 38
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mOpCode:I

    .line 39
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mValue1:F

    .line 40
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mValue2:F

    .line 41
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mValue1:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_18

    .line 42
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mValue1:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mV1:F

    .line 44
    :cond_18
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mValue2:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_24

    .line 45
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mValue2:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mV2:F

    .line 47
    :cond_24
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 2

    .line 79
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getMax()F
    .registers 2

    .line 102
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mV2:F

    return v0
.end method

.method public blacklist getMin()F
    .registers 2

    .line 93
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mV1:F

    return v0
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 63
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mValue1:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 64
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mValue1:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 66
    :cond_11
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mValue2:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 67
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mValue2:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 69
    :cond_22
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 5

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DIMENSION = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->getMin()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->getMax()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 108
    return-void
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5

    .line 51
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mValue1:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mValue1:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_15

    :cond_13
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mValue1:F

    :goto_15
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mV1:F

    .line 52
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mValue2:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mValue2:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_2c

    :cond_2a
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mValue2:F

    :goto_2c
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mV2:F

    .line 53
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mV1:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3f

    .line 54
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mV1:F

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getDensity()F

    move-result v2

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mV1:F

    .line 56
    :cond_3f
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mV2:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4e

    .line 57
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mV2:F

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getDensity()F

    move-result p1

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionInModifierOperation;->mV2:F

    .line 59
    :cond_4e
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 2

    .line 74
    return-void
.end method
