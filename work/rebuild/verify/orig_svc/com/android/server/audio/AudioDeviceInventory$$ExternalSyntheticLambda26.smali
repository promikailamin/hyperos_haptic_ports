.class public final synthetic Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda26;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda26;->f$0:Ljava/util/List;

    check-cast p1, Landroid/media/AudioDeviceAttributes;

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->$r8$lambda$E0g1-pT5DNYen2w7htgvVnbqdiM(Ljava/util/List;Landroid/media/AudioDeviceAttributes;)Z

    move-result p0

    return p0
.end method
