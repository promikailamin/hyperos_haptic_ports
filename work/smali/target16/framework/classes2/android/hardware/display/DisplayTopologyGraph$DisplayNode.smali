.class public Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;
.super Ljava/lang/Object;
.source "DisplayTopologyGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayTopologyGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayNode"
.end annotation


# instance fields
.field private blacklist mAdjacentEdges:[Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;

.field private final blacklist mBoundsInGlobalDp:Landroid/graphics/RectF;

.field private final blacklist mDensity:I

.field private final blacklist mDisplayId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;)I
    .registers 1

    iget p0, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->mDisplayId:I

    return p0
.end method

.method public constructor blacklist <init>(IILandroid/graphics/RectF;)V
    .registers 4

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput p1, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->mDisplayId:I

    .line 105
    iput p2, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->mDensity:I

    .line 106
    iput-object p3, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->mBoundsInGlobalDp:Landroid/graphics/RectF;

    .line 107
    return-void
.end method


# virtual methods
.method public blacklist dump(Landroid/util/IndentingPrintWriter;)V
    .registers 6

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayNode{displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->mDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->mBoundsInGlobalDp:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->mAdjacentEdges:[Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;

    if-eqz v0, :cond_4e

    .line 147
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 148
    iget-object v0, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->mAdjacentEdges:[Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_41
    if-ge v2, v1, :cond_4b

    aget-object v3, v0, v2

    .line 149
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 151
    :cond_4b
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 153
    :cond_4e
    return-void
.end method

.method public blacklist getAdjacentEdges()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->mAdjacentEdges:[Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBoundsInGlobalDp()Landroid/graphics/RectF;
    .registers 2

    .line 123
    iget-object v0, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->mBoundsInGlobalDp:Landroid/graphics/RectF;

    return-object v0
.end method

.method public blacklist getDensity()I
    .registers 2

    .line 118
    iget v0, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->mDensity:I

    return v0
.end method

.method public blacklist getDisplayId()I
    .registers 2

    .line 113
    iget v0, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->mDisplayId:I

    return v0
.end method

.method blacklist setAdjacentEdges([Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;)V
    .registers 2

    .line 128
    iput-object p1, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->mAdjacentEdges:[Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;

    .line 129
    return-void
.end method
