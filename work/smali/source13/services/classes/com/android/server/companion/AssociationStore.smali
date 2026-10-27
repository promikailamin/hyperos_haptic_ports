.class public interface abstract Lcom/android/server/companion/AssociationStore;
.super Ljava/lang/Object;
.source "AssociationStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/AssociationStore$OnChangeListener;,
        Lcom/android/server/companion/AssociationStore$ChangeType;
    }
.end annotation


# static fields
.field public static final CHANGE_TYPE_ADDED:I = 0x0

.field public static final CHANGE_TYPE_REMOVED:I = 0x1

.field public static final CHANGE_TYPE_UPDATED_ADDRESS_CHANGED:I = 0x2

.field public static final CHANGE_TYPE_UPDATED_ADDRESS_UNCHANGED:I = 0x3


# direct methods
.method public static changeTypeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "changeType"    # I

    .line 127
    packed-switch p0, :pswitch_data_2a

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 138
    :pswitch_1d
    const-string v0, "ASSOCIATION_UPDATED_ADDRESS_UNCHANGED"

    return-object v0

    .line 135
    :pswitch_20
    const-string v0, "ASSOCIATION_UPDATED"

    return-object v0

    .line 132
    :pswitch_23
    const-string v0, "ASSOCIATION_REMOVED"

    return-object v0

    .line 129
    :pswitch_26
    const-string v0, "ASSOCIATION_ADDED"

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public abstract getAssociationById(I)Landroid/companion/AssociationInfo;
.end method

.method public abstract getAssociations()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAssociationsForPackage(ILjava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAssociationsForPackageWithAddress(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;
.end method

.method public abstract getAssociationsForUser(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerListener(Lcom/android/server/companion/AssociationStore$OnChangeListener;)V
.end method

.method public abstract unregisterListener(Lcom/android/server/companion/AssociationStore$OnChangeListener;)V
.end method
