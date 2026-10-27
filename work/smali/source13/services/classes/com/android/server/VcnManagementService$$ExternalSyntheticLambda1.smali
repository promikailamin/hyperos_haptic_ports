.class public final synthetic Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/VcnManagementService;

.field public final synthetic f$1:Lcom/android/internal/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/VcnManagementService;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/VcnManagementService;

    iput-object p2, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/VcnManagementService;

    iget-object v1, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v0, v1}, Lcom/android/server/VcnManagementService;->lambda$dump$9$com-android-server-VcnManagementService(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method
