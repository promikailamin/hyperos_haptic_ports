.class public final synthetic Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/server/content/SyncOperation;

    check-cast p2, Lcom/android/server/content/SyncOperation;

    invoke-static {p1, p2}, Lcom/android/server/content/SyncManager;->lambda$static$6(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncOperation;)I

    move-result p1

    return p1
.end method
