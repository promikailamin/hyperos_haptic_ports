.class public final synthetic Lcom/android/server/companion/PersistentDataStore$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Collection;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Collection;Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/PersistentDataStore$$ExternalSyntheticLambda2;->f$0:Ljava/util/Collection;

    iput-object p2, p0, Lcom/android/server/companion/PersistentDataStore$$ExternalSyntheticLambda2;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/companion/PersistentDataStore$$ExternalSyntheticLambda2;->f$0:Ljava/util/Collection;

    iget-object v1, p0, Lcom/android/server/companion/PersistentDataStore$$ExternalSyntheticLambda2;->f$1:Ljava/util/Map;

    check-cast p1, Ljava/io/FileOutputStream;

    invoke-static {v0, v1, p1}, Lcom/android/server/companion/PersistentDataStore;->lambda$persistStateToFileLocked$0(Ljava/util/Collection;Ljava/util/Map;Ljava/io/FileOutputStream;)V

    return-void
.end method
