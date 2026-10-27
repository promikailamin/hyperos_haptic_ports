.class public final synthetic Lcom/android/server/companion/SystemDataTransferRequestDataStore$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/SystemDataTransferRequestDataStore;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/SystemDataTransferRequestDataStore;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/SystemDataTransferRequestDataStore$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/SystemDataTransferRequestDataStore;

    iput-object p2, p0, Lcom/android/server/companion/SystemDataTransferRequestDataStore$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/companion/SystemDataTransferRequestDataStore$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/SystemDataTransferRequestDataStore;

    iget-object v1, p0, Lcom/android/server/companion/SystemDataTransferRequestDataStore$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    check-cast p1, Ljava/io/FileOutputStream;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/companion/SystemDataTransferRequestDataStore;->lambda$writeRequestsForUser$0$com-android-server-companion-SystemDataTransferRequestDataStore(Ljava/util/List;Ljava/io/FileOutputStream;)V

    return-void
.end method
