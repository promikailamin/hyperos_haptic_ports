.class public Lcom/android/internal/widget/remotecompose/core/operations/WakeIn;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "WakeIn.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field public static final blacklist ANCHOR_MONOSPACE_MEASURE:I = 0x2

.field public static final blacklist ANCHOR_TEXT_RTL:I = 0x1

.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "WakeIn"

.field public static final blacklist MEASURE_EVERY_TIME:I = 0x4

.field private static final blacklist OP_CODE:I = 0xbf


# instance fields
.field blacklist mLastString:Ljava/lang/String;

.field blacklist mWake:F

.field blacklist mWakeOut:F


# direct methods
.method public constructor blacklist <init>(F)V
    .registers 2

    .line 48
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 49
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/WakeIn;->mWake:F

    .line 50
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/WakeIn;->mWakeOut:F

    .line 51
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;F)V
    .registers 3

    .line 114
    const/16 v0, 0xbf

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 116
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 124
    const/16 v0, 0xbf

    const-string v1, "WakeIn"

    const-string v2, "Draw Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 125
    const-string v0, "Wake up the render loop after a certain amount of time"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 126
    const/4 v0, 0x1

    const-string/jumbo v1, "wakeSec"

    const-string v2, "The time in seconds to wake up"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 127
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 104
    const/16 v0, 0xbf

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 95
    const-string v0, "WakeIn"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result p0

    .line 84
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/WakeIn;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/remotecompose/core/operations/WakeIn;-><init>(F)V

    .line 85
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 3

    .line 131
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/WakeIn;->mWakeOut:F

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->wakeIn(F)V

    .line 132
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 60
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/WakeIn;->mWake:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 61
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/WakeIn;->mWake:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 63
    :cond_11
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 136
    const-string v0, "WakeIn"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/WakeIn;->mWake:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "wake"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 137
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrawTextAnchored ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/WakeIn;->mWake:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/WakeIn;->mWakeOut:F

    invoke-static {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 55
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/WakeIn;->mWake:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/WakeIn;->mWake:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result p1

    goto :goto_15

    :cond_13
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/WakeIn;->mWake:F

    :goto_15
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/WakeIn;->mWakeOut:F

    .line 56
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 3

    .line 67
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/WakeIn;->mWake:F

    invoke-static {p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/WakeIn;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;F)V

    .line 68
    return-void
.end method
