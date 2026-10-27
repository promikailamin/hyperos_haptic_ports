.class public Landroid/hardware/display/DisplayTopologyGraph;
.super Ljava/lang/Object;
.source "DisplayTopologyGraph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;,
        Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;
    }
.end annotation


# instance fields
.field private final blacklist mDisplayNodes:[Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

.field private final blacklist mPrimaryDisplayId:I


# direct methods
.method public constructor blacklist <init>(I[Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Landroid/hardware/display/DisplayTopologyGraph;->mPrimaryDisplayId:I

    .line 53
    iput-object p2, p0, Landroid/hardware/display/DisplayTopologyGraph;->mDisplayNodes:[Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

    .line 54
    return-void
.end method


# virtual methods
.method public blacklist dump(Landroid/util/IndentingPrintWriter;)V
    .registers 6

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayTopologyGraph{mPrimaryDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayTopologyGraph;->mPrimaryDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 81
    iget-object v0, p0, Landroid/hardware/display/DisplayTopologyGraph;->mDisplayNodes:[Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_25
    if-ge v2, v1, :cond_2f

    aget-object v3, v0, v2

    .line 82
    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 84
    :cond_2f
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 85
    return-void
.end method

.method public blacklist getDisplayNodes()Landroid/util/SparseArray;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    iget-object v1, p0, Landroid/hardware/display/DisplayTopologyGraph;->mDisplayNodes:[Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 67
    iget-object v1, p0, Landroid/hardware/display/DisplayTopologyGraph;->mDisplayNodes:[Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1a

    aget-object v4, v1, v3

    .line 68
    invoke-static {v4}, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;)I

    move-result v5

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 70
    :cond_1a
    return-object v0
.end method

.method public blacklist getPrimaryDisplayId()I
    .registers 2

    .line 58
    iget v0, p0, Landroid/hardware/display/DisplayTopologyGraph;->mPrimaryDisplayId:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 89
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 90
    new-instance v1, Landroid/util/IndentingPrintWriter;

    invoke-direct {v1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Landroid/hardware/display/DisplayTopologyGraph;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
