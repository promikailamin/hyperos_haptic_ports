.class public final synthetic Lcom/android/server/companion/SystemDataTransferRequestDataStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/companion/SystemDataTransferRequestDataStore$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/android/server/companion/SystemDataTransferRequestDataStore$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/android/server/companion/SystemDataTransferRequestDataStore;->lambda$getStorageFileForUser$1(ILjava/lang/Integer;)Landroid/util/AtomicFile;

    move-result-object p1

    return-object p1
.end method
