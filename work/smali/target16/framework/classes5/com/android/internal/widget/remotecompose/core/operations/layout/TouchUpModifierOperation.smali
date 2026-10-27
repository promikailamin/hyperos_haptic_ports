.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchUpModifierOperation;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;
.source "TouchUpModifierOperation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;


# static fields
.field private static final blacklist OP_CODE:I = 0xdc


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 36
    const-string v0, "TOUCH_UP_MODIFIER"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 2

    .line 119
    const/16 v0, 0xdc

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 120
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 138
    const/16 v0, 0xdc

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchUpModifierOperation;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Modifier Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 139
    const-string v0, "Touch up modifier. This operation contains a list of action executed on Touch up"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 142
    return-void
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 110
    const-string v0, "TouchUpModifier"

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

    .line 129
    new-instance p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchUpModifierOperation;

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchUpModifierOperation;-><init>()V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 4

    .line 51
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    if-nez v0, :cond_7

    .line 52
    return-void

    .line 54
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getRootLayoutComponent()Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_15

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->setHasTouchListeners(Z)V

    .line 58
    :cond_15
    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 59
    return-void
.end method

.method public blacklist onTouchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 6

    .line 91
    return-void
.end method

.method public blacklist onTouchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 6

    .line 69
    return-void
.end method

.method public blacklist onTouchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 6

    .line 101
    return-void
.end method

.method public blacklist onTouchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FFFF)V
    .registers 8

    .line 80
    const/4 p7, 0x1

    move p6, p5

    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-virtual/range {p1 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchUpModifierOperation;->applyActions(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FFZ)Z

    .line 81
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 3

    .line 146
    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V

    .line 147
    const-string v0, "TouchUpModifierOperation"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 148
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 46
    const-string v0, "TouchUpModifier"

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 2

    .line 41
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchUpModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 42
    return-void
.end method
