.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsiblePriority;
.super Ljava/lang/Object;
.source "CollapsiblePriority.java"


# static fields
.field public static final blacklist HORIZONTAL:I = 0x0

.field public static final blacklist VERTICAL:I = 0x1


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getPriority(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;I)F
    .registers 3

    .line 39
    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v0, :cond_1b

    .line 40
    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 41
    const-class v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->selfOrModifier(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;

    .line 43
    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;->getOrientation()I

    move-result v0

    if-ne v0, p1, :cond_1b

    .line 44
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;->getPriority()F

    move-result p0

    return p0

    .line 47
    :cond_1b
    const p0, 0x7f7fffff    # Float.MAX_VALUE

    return p0
.end method

.method static synthetic blacklist lambda$sortWithPriorities$0(ILcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)I
    .registers 3

    .line 61
    invoke-static {p1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsiblePriority;->getPriority(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;I)F

    move-result p1

    .line 62
    invoke-static {p2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsiblePriority;->getPriority(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;I)F

    move-result p0

    .line 63
    sub-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method static blacklist sortWithPriorities(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ">;I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 59
    new-instance p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsiblePriority$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsiblePriority$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 65
    return-object v0
.end method
