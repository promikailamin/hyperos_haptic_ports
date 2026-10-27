.class public interface abstract Lcom/android/server/companion/association/AssociationStore$OnChangeListener;
.super Ljava/lang/Object;
.source "AssociationStore.java"


# virtual methods
.method public onAssociationAdded(Landroid/companion/AssociationInfo;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onAssociationChanged(ILandroid/companion/AssociationInfo;)V
    .registers 5

    if-eqz p1, :cond_19

    const/4 v0, 0x1

    if-eq p1, v0, :cond_15

    const/4 v1, 0x2

    if-eq p1, v1, :cond_11

    const/4 v0, 0x3

    if-eq p1, v0, :cond_c

    return-void

    :cond_c
    const/4 p1, 0x0

    .line 99
    invoke-interface {p0, p2, p1}, Lcom/android/server/companion/association/AssociationStore$OnChangeListener;->onAssociationUpdated(Landroid/companion/AssociationInfo;Z)V

    return-void

    .line 95
    :cond_11
    invoke-interface {p0, p2, v0}, Lcom/android/server/companion/association/AssociationStore$OnChangeListener;->onAssociationUpdated(Landroid/companion/AssociationInfo;Z)V

    return-void

    .line 91
    :cond_15
    invoke-interface {p0, p2}, Lcom/android/server/companion/association/AssociationStore$OnChangeListener;->onAssociationRemoved(Landroid/companion/AssociationInfo;)V

    return-void

    .line 87
    :cond_19
    invoke-interface {p0, p2}, Lcom/android/server/companion/association/AssociationStore$OnChangeListener;->onAssociationAdded(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method public onAssociationRemoved(Landroid/companion/AssociationInfo;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onAssociationUpdated(Landroid/companion/AssociationInfo;Z)V
    .registers 3

    .line 0
    return-void
.end method
