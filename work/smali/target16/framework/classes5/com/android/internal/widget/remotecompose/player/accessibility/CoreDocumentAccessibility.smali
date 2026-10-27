.class public Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;
.super Ljava/lang/Object;
.source "CoreDocumentAccessibility.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;


# instance fields
.field private final blacklist mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

.field private final blacklist mRemoteContextActions:Lcom/android/internal/widget/remotecompose/core/RemoteContextActions;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/RemoteContextActions;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    .line 58
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;->mRemoteContextActions:Lcom/android/internal/widget/remotecompose/core/RemoteContextActions;

    .line 59
    return-void
.end method

.method static blacklist componentStream(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ")",
            "Ljava/util/stream/Stream<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ">;"
        }
    .end annotation

    .line 250
    nop

    .line 251
    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    .line 252
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda6;-><init>()V

    .line 253
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 250
    invoke-static {v0, p0}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist isClickAction(I)Z
    .registers 2

    .line 152
    const/16 v0, 0x10

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method static blacklist isContainerWithSemantics(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z
    .registers 2

    .line 285
    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    if-eqz v0, :cond_b

    .line 286
    check-cast p0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    invoke-interface {p0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;->isInterestingForSemantics()Z

    move-result p0

    return p0

    .line 289
    :cond_b
    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-nez v0, :cond_11

    .line 290
    const/4 p0, 0x0

    return p0

    .line 293
    :cond_11
    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 294
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getComponentModifiers()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda4;-><init>()V

    .line 295
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    .line 293
    return p0
.end method

.method static blacklist isInteresting(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z
    .registers 3

    .line 270
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 271
    return v1

    .line 274
    :cond_8
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;->isContainerWithSemantics(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 275
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;->modifiersStream(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda4;-><init>()V

    .line 276
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_1e

    :cond_1d
    const/4 v1, 0x1

    .line 274
    :cond_1e
    return v1
.end method

.method static blacklist isModifierWithSemantics(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;)Z
    .registers 2

    .line 280
    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    if-eqz v0, :cond_e

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    .line 281
    invoke-interface {p0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;->isInterestingForSemantics()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    .line 280
    :goto_f
    return p0
.end method

.method private static blacklist isScrollBackwardAction(I)Z
    .registers 2

    .line 140
    const/16 v0, 0x2000

    if-eq p0, v0, :cond_11

    const v0, 0x1020038

    if-eq p0, v0, :cond_11

    const v0, 0x1020039

    if-ne p0, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method private static blacklist isScrollForwardAction(I)Z
    .registers 2

    .line 146
    const/16 v0, 0x1000

    if-eq p0, v0, :cond_11

    const v0, 0x102003a

    if-eq p0, v0, :cond_11

    const v0, 0x102003b

    if-ne p0, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method private static blacklist isShowOnScreenAction(I)Z
    .registers 2

    .line 136
    const v0, 0x1020036

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method static synthetic blacklist lambda$componentStream$3(Lcom/android/internal/widget/remotecompose/core/Operation;)Ljava/util/stream/Stream;
    .registers 2

    .line 255
    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v0, :cond_b

    .line 256
    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;->componentStream(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    .line 258
    :cond_b
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$findComponentById$0(ILcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z
    .registers 2

    .line 76
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result p1

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method static synthetic blacklist lambda$modifiersStream$4(Lcom/android/internal/widget/remotecompose/core/Operation;)Z
    .registers 1

    .line 265
    instance-of p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    return p0
.end method

.method static synthetic blacklist lambda$modifiersStream$5(Lcom/android/internal/widget/remotecompose/core/Operation;)Ljava/util/stream/Stream;
    .registers 1

    .line 266
    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$semanticModifiersForComponent$1(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;)Z
    .registers 2

    .line 211
    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    if-eqz v0, :cond_e

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    .line 213
    invoke-interface {p0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;->isInterestingForSemantics()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    .line 211
    :goto_f
    return p0
.end method

.method static synthetic blacklist lambda$semanticModifiersForComponent$2(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;)Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;
    .registers 1

    .line 214
    check-cast p0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    return-object p0
.end method

.method static blacklist modifiersStream(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ")",
            "Ljava/util/stream/Stream<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;",
            ">;"
        }
    .end annotation

    .line 264
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda2;-><init>()V

    .line 265
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda3;-><init>()V

    .line 266
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 264
    return-object p0
.end method

.method private blacklist showOnScreen(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;->mRemoteContextActions:Lcom/android/internal/widget/remotecompose/core/RemoteContextActions;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContextActions;->showOnScreen(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public blacklist findComponentById(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .registers 4

    .line 69
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getRootLayoutComponent()Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_25

    const/4 v1, -0x1

    if-ne p1, v1, :cond_c

    goto :goto_25

    .line 75
    :cond_c
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;->componentStream(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda5;-><init>(I)V

    .line 76
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 77
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 75
    return-object p1

    .line 72
    :cond_25
    :goto_25
    return-object v0
.end method

.method public blacklist getComponentIdAt(Landroid/graphics/PointF;)Ljava/lang/Integer;
    .registers 2

    .line 64
    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeMode(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;
    .registers 6

    .line 83
    instance-of v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-nez v0, :cond_7

    .line 84
    sget-object p1, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->SET:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    return-object p1

    .line 87
    :cond_7
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->SET:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    .line 90
    check-cast p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getComponentModifiers()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 91
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;

    if-eqz v2, :cond_3b

    .line 92
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;

    .line 94
    invoke-interface {v1}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getMode()Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->ordinal()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->ordinal()I

    move-result v3

    if-le v2, v3, :cond_3b

    .line 95
    invoke-interface {v1}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getMode()Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    move-result-object v0

    .line 98
    :cond_3b
    goto :goto_17

    .line 100
    :cond_3c
    return-object v0
.end method

.method public blacklist performAction(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;ILandroid/os/Bundle;)Z
    .registers 4

    .line 113
    nop

    .line 116
    :try_start_1
    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;->isClickAction(I)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;->performClick(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z

    move-result p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_4e

    .line 129
    nop

    .line 130
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->needsRepaint()I

    .line 117
    return p1

    .line 118
    :cond_12
    :try_start_12
    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;->isScrollForwardAction(I)Z

    move-result p3

    if-eqz p3, :cond_25

    .line 119
    sget-object p2, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;->FORWARD:Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;->scrollDirection(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;)Z

    move-result p1
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_4e

    .line 129
    nop

    .line 130
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->needsRepaint()I

    .line 119
    return p1

    .line 120
    :cond_25
    :try_start_25
    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;->isScrollBackwardAction(I)Z

    move-result p3

    if-eqz p3, :cond_38

    .line 121
    sget-object p2, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;->BACKWARD:Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;->scrollDirection(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;)Z

    move-result p1
    :try_end_31
    .catchall {:try_start_25 .. :try_end_31} :catchall_4e

    .line 129
    nop

    .line 130
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->needsRepaint()I

    .line 121
    return p1

    .line 122
    :cond_38
    :try_start_38
    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;->isShowOnScreenAction(I)Z

    move-result p2

    if-eqz p2, :cond_49

    .line 123
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;->showOnScreen(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z

    move-result p1
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_4e

    .line 129
    nop

    .line 130
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->needsRepaint()I

    .line 123
    return p1

    .line 125
    :cond_49
    nop

    .line 126
    nop

    .line 129
    nop

    .line 126
    const/4 p1, 0x0

    return p1

    .line 129
    :catchall_4e
    move-exception p1

    .line 130
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->needsRepaint()I

    .line 132
    throw p1
.end method

.method public blacklist performClick(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z
    .registers 5

    .line 188
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;->mRemoteContextActions:Lcom/android/internal/widget/remotecompose/core/RemoteContextActions;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    const-string v2, ""

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContextActions;->performClick(Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public blacklist scrollByOffset(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;I)I
    .registers 4

    .line 167
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;->mRemoteContextActions:Lcom/android/internal/widget/remotecompose/core/RemoteContextActions;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContextActions;->scrollByOffset(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;I)I

    move-result p1

    return p1
.end method

.method public blacklist scrollDirection(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;)Z
    .registers 4

    .line 178
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;->mRemoteContextActions:Lcom/android/internal/widget/remotecompose/core/RemoteContextActions;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContextActions;->scrollDirection(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;)Z

    move-result p1

    return p1
.end method

.method public blacklist semanticModifiersForComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;",
            ">;"
        }
    .end annotation

    .line 201
    instance-of v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-nez v0, :cond_9

    .line 202
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 205
    :cond_9
    check-cast p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 206
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getComponentModifiers()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object p1

    .line 208
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda0;-><init>()V

    .line 209
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda1;-><init>()V

    .line 214
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 215
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 208
    return-object p1
.end method

.method public blacklist semanticallyRelevantChildComponents(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 222
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isVisible()Z

    move-result v0

    if-nez v0, :cond_b

    .line 223
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 226
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;->mergeMode(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    move-result-object v0

    .line 227
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->CLEAR_AND_SET:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    if-eq v0, v1, :cond_53

    if-nez p2, :cond_1a

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->MERGE:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    if-ne v0, v1, :cond_1a

    goto :goto_53

    .line 232
    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 235
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v2, :cond_51

    .line 236
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;->isInteresting(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 237
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 239
    :cond_49
    nop

    .line 240
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;->semanticallyRelevantChildComponents(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Z)Ljava/util/List;

    move-result-object v1

    .line 239
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 244
    :cond_51
    :goto_51
    goto :goto_25

    .line 246
    :cond_52
    return-object v0

    .line 229
    :cond_53
    :goto_53
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist stringValue(I)Ljava/lang/String;
    .registers 3

    .line 194
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getRemoteComposeState()Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object p1

    .line 196
    if-eqz p1, :cond_11

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return-object p1
.end method
