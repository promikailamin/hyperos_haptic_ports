.class public abstract Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawBase3.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3$Maker;
    }
.end annotation


# instance fields
.field protected blacklist mName:Ljava/lang/String;

.field blacklist mV1:F

.field blacklist mV2:F

.field blacklist mV3:F

.field blacklist mValue1:F

.field blacklist mValue2:F

.field blacklist mValue3:F


# direct methods
.method public constructor blacklist <init>(FFF)V
    .registers 5

    .line 44
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 36
    const-string v0, "DrawRectBase"

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mName:Ljava/lang/String;

    .line 45
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue1:F

    .line 46
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue2:F

    .line 47
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue3:F

    .line 49
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV1:F

    .line 50
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV2:F

    .line 51
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV3:F

    .line 52
    return-void
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3$Maker;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;",
            "Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3$Maker;",
            ")V"
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v0

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v1

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result p0

    .line 118
    invoke-interface {p2, v0, v1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3$Maker;->create(FFF)Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;

    move-result-object p0

    .line 119
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method


# virtual methods
.method public blacklist construct(FFF)Lcom/android/internal/widget/remotecompose/core/Operation;
    .registers 4

    .line 132
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 63
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue1:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->isVariable(F)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 64
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue1:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 66
    :cond_11
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue2:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->isVariable(F)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 67
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue2:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 69
    :cond_22
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue3:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->isVariable(F)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 70
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue3:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 72
    :cond_33
    return-void
.end method

.method protected blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
    .registers 7

    .line 140
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue1:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV1:F

    .line 141
    invoke-interface {p1, p2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue2:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV2:F

    .line 142
    invoke-interface {p1, p3, p2, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue3:F

    iget p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV3:F

    .line 143
    invoke-interface {p1, p4, p2, p3}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    .line 140
    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV1:F

    .line 99
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV2:F

    .line 101
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV3:F

    .line 103
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 56
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue1:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->isVariable(F)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue1:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_15

    :cond_13
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue1:F

    :goto_15
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV1:F

    .line 57
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue2:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->isVariable(F)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue2:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_2c

    :cond_2a
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue2:F

    :goto_2c
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV2:F

    .line 58
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue3:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->isVariable(F)Z

    move-result v0

    if-eqz v0, :cond_41

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue3:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result p1

    goto :goto_43

    :cond_41
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue3:F

    :goto_43
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV3:F

    .line 59
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 5

    .line 76
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV1:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV2:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV3:F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFF)V

    .line 77
    return-void
.end method

.method protected abstract blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFF)V
.end method
