.class public final synthetic Lcom/android/server/supervision/SupervisionService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ILjava/util/ArrayList;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/supervision/SupervisionService$$ExternalSyntheticLambda2;->f$0:I

    iput-object p2, p0, Lcom/android/server/supervision/SupervisionService$$ExternalSyntheticLambda2;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget v0, p0, Lcom/android/server/supervision/SupervisionService$$ExternalSyntheticLambda2;->f$0:I

    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$$ExternalSyntheticLambda2;->f$1:Ljava/util/ArrayList;

    check-cast p1, Landroid/os/IBinder;

    check-cast p2, Lcom/android/server/supervision/SupervisionService$SupervisionListenerRecord;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/supervision/SupervisionService;->$r8$lambda$Bol8tNHAkK_fvTEVLHxaWHt8Tzw(ILjava/util/ArrayList;Landroid/os/IBinder;Lcom/android/server/supervision/SupervisionService$SupervisionListenerRecord;)V

    return-void
.end method
