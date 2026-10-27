.class public Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeTouchHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;
.source "PlatformRemoteComposeTouchHelper.java"


# instance fields
.field private final blacklist mApplier:Lcom/android/internal/widget/remotecompose/player/accessibility/SemanticNodeApplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/player/accessibility/SemanticNodeApplier<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHost:Landroid/view/View;

.field private final blacklist mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;


# direct methods
.method public constructor blacklist <init>(Landroid/view/View;Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;Lcom/android/internal/widget/remotecompose/player/accessibility/SemanticNodeApplier;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;",
            "Lcom/android/internal/widget/remotecompose/player/accessibility/SemanticNodeApplier<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 52
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;

    .line 53
    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeTouchHelper;->mApplier:Lcom/android/internal/widget/remotecompose/player/accessibility/SemanticNodeApplier;

    .line 54
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeTouchHelper;->mHost:Landroid/view/View;

    .line 55
    return-void
.end method

.method public static blacklist forRemoteComposePlayer(Landroid/view/View;Lcom/android/internal/widget/remotecompose/core/CoreDocument;)Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeTouchHelper;
    .registers 5

    .line 62
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeTouchHelper;

    new-instance v1, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;

    move-object v2, p0

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/RemoteContextActions;

    invoke-direct {v1, p1, v2}, Lcom/android/internal/widget/remotecompose/player/accessibility/CoreDocumentAccessibility;-><init>(Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/RemoteContextActions;)V

    new-instance p1, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/AndroidPlatformSemanticNodeApplier;

    invoke-direct {p1, p0}, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/AndroidPlatformSemanticNodeApplier;-><init>(Landroid/view/View;)V

    invoke-direct {v0, p0, v1, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeTouchHelper;-><init>(Landroid/view/View;Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;Lcom/android/internal/widget/remotecompose/player/accessibility/SemanticNodeApplier;)V

    return-object v0
.end method


# virtual methods
.method protected blacklist getVirtualViewAt(FF)I
    .registers 5

    .line 83
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;->getComponentIdAt(Landroid/graphics/PointF;)Ljava/lang/Integer;

    move-result-object p1

    .line 85
    if-nez p1, :cond_10

    .line 86
    const/high16 p1, -0x80000000

    return p1

    .line 89
    :cond_10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public blacklist getVisibleChildVirtualViews()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;->findComponentById(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_1e

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;

    .line 117
    invoke-interface {v2, v0}, Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;->semanticModifiersForComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_1e

    .line 121
    :cond_16
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;->semanticallyRelevantChildComponents(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Z)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 118
    :cond_1e
    :goto_1e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getVisibleVirtualViews(Landroid/util/IntArray;)V
    .registers 4

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeTouchHelper;->getVisibleChildVirtualViews()Ljava/util/List;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 105
    invoke-virtual {p1, v1}, Landroid/util/IntArray;->add(I)V

    .line 106
    goto :goto_8

    .line 107
    :cond_1c
    return-void
.end method

.method protected blacklist onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 5

    .line 162
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;->findComponentById(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object p1

    .line 164
    if-eqz p1, :cond_19

    .line 165
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;->performAction(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;ILandroid/os/Bundle;)Z

    move-result p1

    .line 167
    if-eqz p1, :cond_18

    .line 168
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 169
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeTouchHelper;->invalidateRoot()V

    .line 172
    :cond_18
    return p1

    .line 174
    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method protected blacklist onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 157
    return-void
.end method

.method public blacklist onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7

    .line 127
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;->findComponentById(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object p1

    .line 129
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;->mergeMode(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    move-result-object v0

    .line 132
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 134
    sget-object v2, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->MERGE:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    if-ne v0, v2, :cond_32

    .line 135
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;

    .line 136
    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;->semanticallyRelevantChildComponents(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Z)Ljava/util/List;

    move-result-object v1

    .line 138
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 139
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeTouchHelper;->onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 140
    goto :goto_1e

    .line 143
    :cond_32
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;

    .line 144
    invoke-interface {v1, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;->semanticModifiersForComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Ljava/util/List;

    move-result-object v1

    .line 145
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeTouchHelper;->mApplier:Lcom/android/internal/widget/remotecompose/player/accessibility/SemanticNodeApplier;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;

    invoke-interface {v2, v3, p2, p1, v1}, Lcom/android/internal/widget/remotecompose/player/accessibility/SemanticNodeApplier;->applyComponent(Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Ljava/util/List;)V

    .line 147
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->SET:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    if-ne v0, v1, :cond_4f

    .line 148
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;

    .line 149
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;->semanticallyRelevantChildComponents(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Z)Ljava/util/List;

    move-result-object p1

    .line 151
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/PlatformRemoteComposeTouchHelper;->mApplier:Lcom/android/internal/widget/remotecompose/player/accessibility/SemanticNodeApplier;

    invoke-interface {v0, p2, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/SemanticNodeApplier;->addChildren(Ljava/lang/Object;Ljava/util/List;)V

    .line 153
    :cond_4f
    return-void
.end method
