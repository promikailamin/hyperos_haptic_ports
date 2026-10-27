.class public abstract Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;
.super Ljava/lang/Object;
.source "BaseSemanticNodeApplier.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/player/accessibility/SemanticNodeApplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/internal/widget/remotecompose/player/accessibility/SemanticNodeApplier<",
        "TN;>;"
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "RemoteCompose"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist appendNullable(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 4

    .line 201
    if-nez p1, :cond_3

    .line 202
    return-object p2

    .line 203
    :cond_3
    if-nez p2, :cond_6

    .line 204
    return-object p1

    .line 206
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public blacklist applyComponent(Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;",
            "TN;",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;",
            ">;)V"
        }
    .end annotation

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 54
    invoke-virtual {p3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getLocationInWindow([F)V

    .line 55
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    float-to-int v3, v3

    const/4 v4, 0x1

    aget v5, v0, v4

    float-to-int v5, v5

    aget v2, v0, v2

    .line 59
    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v6

    add-float/2addr v2, v6

    float-to-int v2, v2

    aget v0, v0, v4

    .line 60
    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v4

    add-float/2addr v0, v4

    float-to-int v0, v0

    invoke-direct {v1, v3, v5, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 61
    invoke-virtual {p0, p2, v1}, Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;->setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 63
    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;->setUniqueId(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    instance-of v0, p3, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;

    if-eqz v0, :cond_4e

    .line 66
    move-object v0, p3

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;

    .line 67
    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getContentDescriptionId()Ljava/lang/Integer;

    move-result-object v1

    .line 66
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;->applyContentDescription(Ljava/lang/Integer;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;)V

    .line 71
    nop

    .line 72
    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getTextId()Ljava/lang/Integer;

    move-result-object v1

    .line 71
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;->applyText(Ljava/lang/Integer;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;)V

    .line 76
    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getRole()Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;->applyRole(Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;Ljava/lang/Object;)V

    .line 79
    :cond_4e
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;->applySemantics(Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;Ljava/lang/Object;Ljava/util/List;)V

    .line 81
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;->getText(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_62

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;->getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_62

    .line 82
    const-string p1, ""

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;->setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 85
    :cond_62
    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object p1

    instance-of p1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz p1, :cond_81

    .line 86
    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 87
    const-class p3, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->selfOrModifier(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    .line 89
    if-eqz p3, :cond_81

    .line 90
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getComponentId()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;->applyListItem(Ljava/lang/Object;I)V

    .line 93
    :cond_81
    return-void
.end method

.method protected blacklist applyContentDescription(Ljava/lang/Integer;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "TN;",
            "Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;",
            ")V"
        }
    .end annotation

    .line 191
    if-eqz p1, :cond_16

    .line 192
    nop

    .line 195
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;->getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 196
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p3, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;->stringValue(I)Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;->appendNullable(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 192
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;->setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 198
    :cond_16
    return-void
.end method

.method protected blacklist applyCoreSemantics(Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;",
            "TN;",
            "Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;",
            ")V"
        }
    .end annotation

    .line 143
    nop

    .line 144
    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->getContentDescriptionId()Ljava/lang/Integer;

    move-result-object v0

    .line 143
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;->applyContentDescription(Ljava/lang/Integer;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;)V

    .line 146
    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->getRole()Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;->applyRole(Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;Ljava/lang/Object;)V

    .line 148
    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->getTextId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;->applyText(Ljava/lang/Integer;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;)V

    .line 150
    nop

    .line 151
    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->getStateDescriptionId()Ljava/lang/Integer;

    move-result-object v0

    .line 150
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;->applyStateDescription(Ljava/lang/Integer;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;)V

    .line 153
    iget-boolean p1, p3, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mEnabled:Z

    if-nez p1, :cond_26

    .line 154
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;->setEnabled(Ljava/lang/Object;Z)V

    .line 156
    :cond_26
    return-void
.end method

.method protected abstract blacklist applyListItem(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;I)V"
        }
    .end annotation
.end method

.method protected blacklist applyRole(Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;",
            "TN;)V"
        }
    .end annotation

    .line 172
    if-eqz p1, :cond_9

    .line 173
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;->setRoleDescription(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    :cond_9
    return-void
.end method

.method protected abstract blacklist applyScrollable(Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;",
            "I)V"
        }
    .end annotation
.end method

.method protected blacklist applySemantics(Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;Ljava/lang/Object;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;",
            "TN;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    .line 100
    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;->isInterestingForSemantics()Z

    move-result v1

    if-eqz v1, :cond_84

    .line 101
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;

    if-eqz v1, :cond_20

    .line 102
    check-cast v0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;

    .line 103
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;->applyCoreSemantics(Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;)V

    .line 104
    goto :goto_84

    :cond_20
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;

    if-eqz v1, :cond_54

    .line 105
    check-cast v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;

    .line 106
    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 107
    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1}, Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;->setClickable(Ljava/lang/Object;Z)V

    .line 110
    :cond_30
    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getContentDescriptionId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 111
    nop

    .line 112
    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getContentDescriptionId()Ljava/lang/Integer;

    move-result-object v1

    .line 111
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;->applyContentDescription(Ljava/lang/Integer;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;)V

    .line 117
    :cond_3e
    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getTextId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 118
    nop

    .line 119
    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getTextId()Ljava/lang/Integer;

    move-result-object v1

    .line 118
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;->applyText(Ljava/lang/Integer;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;)V

    .line 124
    :cond_4c
    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getRole()Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;->applyRole(Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;Ljava/lang/Object;)V

    .line 125
    goto :goto_84

    :cond_54
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    if-eqz v1, :cond_6c

    .line 126
    check-cast v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    .line 128
    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;->supportsScrollByOffset()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 129
    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;->getScrollAxisRange()Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;

    move-result-object v1

    .line 130
    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;->scrollDirection()I

    move-result v0

    invoke-virtual {p0, p2, v1, v0}, Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;->applyScrollable(Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;I)V

    .line 132
    :cond_6b
    goto :goto_84

    .line 133
    :cond_6c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown semantic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteCompose"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_84
    :goto_84
    goto/16 :goto_4

    .line 137
    :cond_86
    return-void
.end method

.method protected blacklist applyStateDescription(Ljava/lang/Integer;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "TN;",
            "Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;",
            ")V"
        }
    .end annotation

    .line 162
    if-eqz p1, :cond_16

    .line 163
    nop

    .line 166
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;->getStateDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 167
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p3, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;->stringValue(I)Ljava/lang/String;

    move-result-object p1

    .line 165
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;->appendNullable(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 163
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;->setStateDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 169
    :cond_16
    return-void
.end method

.method protected blacklist applyText(Ljava/lang/Integer;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "TN;",
            "Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;",
            ")V"
        }
    .end annotation

    .line 181
    if-eqz p1, :cond_15

    .line 182
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p3, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeDocumentAccessibility;->stringValue(I)Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;->getText(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-direct {p0, p3, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;->appendNullable(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/BaseSemanticNodeApplier;->setText(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 185
    :cond_15
    return-void
.end method

.method protected abstract blacklist getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation
.end method

.method protected abstract blacklist getStateDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation
.end method

.method protected abstract blacklist getText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation
.end method

.method protected abstract blacklist setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract blacklist setClickable(Ljava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;Z)V"
        }
    .end annotation
.end method

.method protected abstract blacklist setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract blacklist setEnabled(Ljava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;Z)V"
        }
    .end annotation
.end method

.method protected abstract blacklist setRoleDescription(Ljava/lang/Object;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract blacklist setStateDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract blacklist setText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract blacklist setUniqueId(Ljava/lang/Object;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
