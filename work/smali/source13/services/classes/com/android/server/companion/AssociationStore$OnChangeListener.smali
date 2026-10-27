.class public interface abstract Lcom/android/server/companion/AssociationStore$OnChangeListener;
.super Ljava/lang/Object;
.source "AssociationStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/AssociationStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnChangeListener"
.end annotation


# virtual methods
.method public onAssociationAdded(Landroid/companion/AssociationInfo;)V
    .registers 2
    .param p1, "association"    # Landroid/companion/AssociationInfo;

    .line 72
    return-void
.end method

.method public onAssociationChanged(ILandroid/companion/AssociationInfo;)V
    .registers 4
    .param p1, "changeType"    # I
    .param p2, "association"    # Landroid/companion/AssociationInfo;

    .line 53
    packed-switch p1, :pswitch_data_18

    goto :goto_16

    .line 67
    :pswitch_4
    const/4 v0, 0x0

    invoke-interface {p0, p2, v0}, Lcom/android/server/companion/AssociationStore$OnChangeListener;->onAssociationUpdated(Landroid/companion/AssociationInfo;Z)V

    goto :goto_16

    .line 63
    :pswitch_9
    const/4 v0, 0x1

    invoke-interface {p0, p2, v0}, Lcom/android/server/companion/AssociationStore$OnChangeListener;->onAssociationUpdated(Landroid/companion/AssociationInfo;Z)V

    .line 64
    goto :goto_16

    .line 59
    :pswitch_e
    invoke-interface {p0, p2}, Lcom/android/server/companion/AssociationStore$OnChangeListener;->onAssociationRemoved(Landroid/companion/AssociationInfo;)V

    .line 60
    goto :goto_16

    .line 55
    :pswitch_12
    invoke-interface {p0, p2}, Lcom/android/server/companion/AssociationStore$OnChangeListener;->onAssociationAdded(Landroid/companion/AssociationInfo;)V

    .line 56
    nop

    .line 70
    :goto_16
    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_12
        :pswitch_e
        :pswitch_9
        :pswitch_4
    .end packed-switch
.end method

.method public onAssociationRemoved(Landroid/companion/AssociationInfo;)V
    .registers 2
    .param p1, "association"    # Landroid/companion/AssociationInfo;

    .line 74
    return-void
.end method

.method public onAssociationUpdated(Landroid/companion/AssociationInfo;Z)V
    .registers 3
    .param p1, "association"    # Landroid/companion/AssociationInfo;
    .param p2, "addressChanged"    # Z

    .line 76
    return-void
.end method
