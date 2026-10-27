.class public final Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;
.super Ljava/lang/Object;
.source "DisplayTopologyGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayTopologyGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdjacentEdge"
.end annotation


# instance fields
.field private final blacklist mDisplayNode:Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

.field private final blacklist mOffsetDp:F

.field private final blacklist mPosition:I


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;IF)V
    .registers 4

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;->mDisplayNode:Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

    .line 176
    iput p2, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;->mPosition:I

    .line 177
    iput p3, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;->mOffsetDp:F

    .line 178
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 202
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 203
    return v0

    .line 205
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_33

    .line 208
    :cond_12
    check-cast p1, Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;

    .line 209
    iget-object v2, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;->mDisplayNode:Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

    invoke-static {v2}, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;)I

    move-result v2

    iget-object v3, p1, Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;->mDisplayNode:Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

    invoke-static {v3}, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;)I

    move-result v3

    if-ne v2, v3, :cond_31

    iget v2, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;->mPosition:I

    iget v3, p1, Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;->mPosition:I

    if-ne v2, v3, :cond_31

    iget v2, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;->mOffsetDp:F

    iget p1, p1, Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;->mOffsetDp:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_31

    goto :goto_32

    :cond_31
    move v0, v1

    :goto_32
    return v0

    .line 206
    :cond_33
    :goto_33
    return v1
.end method

.method public blacklist getDisplayNode()Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;
    .registers 2

    .line 184
    iget-object v0, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;->mDisplayNode:Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

    return-object v0
.end method

.method public blacklist getOffsetDp()F
    .registers 2

    .line 197
    iget v0, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;->mOffsetDp:F

    return v0
.end method

.method public blacklist getPosition()I
    .registers 2

    .line 192
    iget v0, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;->mPosition:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 215
    iget-object v0, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;->mDisplayNode:Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

    invoke-static {v0}, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;->mPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;->mOffsetDp:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdjacentEdge{displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;->mDisplayNode:Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

    invoke-static {v1}, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;->mPosition:I

    .line 221
    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->positionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offsetDp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;->mOffsetDp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    return-object v0
.end method
