.class public final synthetic Lcom/android/server/companion/datasync/LocalMetadataStore$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/datasync/LocalMetadataStore;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/datasync/LocalMetadataStore;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/datasync/LocalMetadataStore$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/datasync/LocalMetadataStore;

    iput p2, p0, Lcom/android/server/companion/datasync/LocalMetadataStore$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/server/companion/datasync/LocalMetadataStore$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/datasync/LocalMetadataStore;

    iget p0, p0, Lcom/android/server/companion/datasync/LocalMetadataStore$$ExternalSyntheticLambda2;->f$1:I

    invoke-static {v0, p0}, Lcom/android/server/companion/datasync/LocalMetadataStore;->$r8$lambda$rdo3U340m_KnKJaH3Hu415GosGk(Lcom/android/server/companion/datasync/LocalMetadataStore;I)Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method
