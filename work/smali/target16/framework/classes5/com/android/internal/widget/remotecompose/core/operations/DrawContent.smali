.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawContent;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawContent.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DrawContent"

.field private static final blacklist OP_CODE:I = 0x8b


# instance fields
.field private blacklist mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 2

    .line 95
    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 96
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 104
    const/16 v0, 0x8b

    const-string v1, "DrawContent"

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 105
    const-string v0, "Draw the component content"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 106
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 86
    const/16 v0, 0x8b

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 77
    const-string v0, "DrawContent"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 66
    new-instance p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawContent;

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawContent;-><init>()V

    .line 67
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 3

    .line 110
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawContent;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v0, :cond_9

    .line 111
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawContent;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->drawContent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 113
    :cond_9
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 3

    .line 117
    const-string v0, "DrawContent"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 118
    return-void
.end method

.method public blacklist setComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawContent;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 51
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 56
    const-string v0, "DrawContent;"

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 2

    .line 41
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawContent;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 42
    return-void
.end method
