.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
.source "LayoutComponentContent.java"


# direct methods
.method public constructor blacklist <init>(IFFFFLcom/android/internal/widget/remotecompose/core/operations/layout/Component;I)V
    .registers 16

    .line 41
    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v1, p6

    move v3, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    .line 42
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V
    .registers 3

    .line 76
    const/16 v0, 0xc9

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 78
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 97
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;->id()I

    move-result v0

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 98
    const/4 v0, 0x0

    const-string v1, "COMPONENT_ID"

    const-string/jumbo v2, "unique id for this component"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 99
    const-string v0, "Container for components. BoxLayout, RowLayout and ColumnLayout expects a LayoutComponentContent as a child, encapsulating the components that needs to be laid out."

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 103
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 60
    const/16 v0, 0xc9

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 51
    const-string v0, "LayoutContent"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 88
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;-><init>(IFFFFLcom/android/internal/widget/remotecompose/core/operations/layout/Component;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method


# virtual methods
.method protected blacklist getSerializedName()Ljava/lang/String;
    .registers 2

    .line 66
    const-string v0, "CONTENT"

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 3

    .line 107
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;->mComponentId:I

    invoke-static {p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 108
    return-void
.end method
