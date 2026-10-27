.class public abstract Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "ListActionsOperation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;


# instance fields
.field protected blacklist mHeight:F

.field public blacklist mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLocationInWindow:[F

.field blacklist mOperationName:Ljava/lang/String;

.field protected blacklist mWidth:F


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mWidth:F

    .line 38
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mHeight:F

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mLocationInWindow:[F

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mList:Ljava/util/ArrayList;

    .line 43
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mOperationName:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5

    .line 61
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 62
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/TextData;

    if-eqz v2, :cond_1c

    .line 63
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 64
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 66
    :cond_1c
    goto :goto_6

    .line 67
    :cond_1d
    return-void
.end method

.method public blacklist applyActions(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FFZ)Z
    .registers 10

    .line 117
    const/4 v0, 0x0

    if-nez p6, :cond_a

    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isVisible()Z

    move-result v1

    if-nez v1, :cond_a

    .line 118
    return v0

    .line 120
    :cond_a
    if-nez p6, :cond_13

    invoke-virtual {p3, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->contains(FF)Z

    move-result p6

    if-nez p6, :cond_13

    .line 121
    return v0

    .line 123
    :cond_13
    iget-object p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mLocationInWindow:[F

    const/4 v1, 0x0

    aput v1, p6, v0

    .line 124
    iget-object p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mLocationInWindow:[F

    const/4 v0, 0x1

    aput v1, p6, v0

    .line 125
    iget-object p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mLocationInWindow:[F

    invoke-virtual {p3, p6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getLocationInWindow([F)V

    .line 126
    iget-object p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {p6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_28
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 127
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;

    if-eqz v2, :cond_3e

    .line 128
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;

    move-object p0, v1

    invoke-interface/range {p0 .. p5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;->runAction(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    .line 130
    :cond_3e
    goto :goto_28

    .line 131
    :cond_3f
    return v0
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_8

    goto :goto_a

    :cond_8
    const-string p1, ""

    :goto_a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 5

    .line 84
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mWidth:F

    .line 85
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mHeight:F

    .line 86
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 2

    .line 76
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 137
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const-string v1, "actions"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 138
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 6

    .line 90
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mOperationName:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 92
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;

    if-eqz v2, :cond_22

    .line 93
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v1, v2, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ActionOperation;->serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V

    .line 95
    :cond_22
    goto :goto_b

    .line 96
    :cond_23
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->mOperationName:Ljava/lang/String;

    return-object v0
.end method
