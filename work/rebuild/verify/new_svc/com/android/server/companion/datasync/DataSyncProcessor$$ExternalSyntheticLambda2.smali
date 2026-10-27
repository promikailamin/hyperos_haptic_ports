.class public final synthetic Lcom/android/server/companion/datasync/DataSyncProcessor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/datasync/DataSyncProcessor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/datasync/DataSyncProcessor;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/datasync/DataSyncProcessor$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/datasync/DataSyncProcessor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/datasync/DataSyncProcessor$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/datasync/DataSyncProcessor;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/util/List;

    invoke-static {p0, p1, p2}, Lcom/android/server/companion/datasync/DataSyncProcessor;->$r8$lambda$u7RrHK4ak1H-Ju9dET--knr9MFE(Lcom/android/server/companion/datasync/DataSyncProcessor;ILjava/util/List;)V

    return-void
.end method
