.class public final synthetic Lcom/android/server/tare/Scribe$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/util/SparseArrayMap$TriConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/tare/Scribe;

.field public final synthetic f$1:Landroid/util/IndentingPrintWriter;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/tare/Scribe;Landroid/util/IndentingPrintWriter;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/tare/Scribe$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/tare/Scribe;

    iput-object p2, p0, Lcom/android/server/tare/Scribe$$ExternalSyntheticLambda2;->f$1:Landroid/util/IndentingPrintWriter;

    iput-boolean p3, p0, Lcom/android/server/tare/Scribe$$ExternalSyntheticLambda2;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/tare/Scribe$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/tare/Scribe;

    iget-object v1, p0, Lcom/android/server/tare/Scribe$$ExternalSyntheticLambda2;->f$1:Landroid/util/IndentingPrintWriter;

    iget-boolean v2, p0, Lcom/android/server/tare/Scribe$$ExternalSyntheticLambda2;->f$2:Z

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    move-object v5, p3

    check-cast v5, Lcom/android/server/tare/Ledger;

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Scribe;->lambda$dumpLocked$0$com-android-server-tare-Scribe(Landroid/util/IndentingPrintWriter;ZILjava/lang/String;Lcom/android/server/tare/Ledger;)V

    return-void
.end method
