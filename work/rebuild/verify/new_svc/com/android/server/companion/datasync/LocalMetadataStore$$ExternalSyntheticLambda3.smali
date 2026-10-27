.class public final synthetic Lcom/android/server/companion/datasync/LocalMetadataStore$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Landroid/os/PersistableBundle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/PersistableBundle;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/datasync/LocalMetadataStore$$ExternalSyntheticLambda3;->f$0:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/datasync/LocalMetadataStore$$ExternalSyntheticLambda3;->f$0:Landroid/os/PersistableBundle;

    check-cast p1, Ljava/io/FileOutputStream;

    invoke-static {p0, p1}, Lcom/android/server/companion/datasync/LocalMetadataStore;->$r8$lambda$a0nTJXWanmYa_q4MfJOqfh_KDXA(Landroid/os/PersistableBundle;Ljava/io/FileOutputStream;)V

    return-void
.end method
