.class public final synthetic Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/om/OverlayManagerService;->lambda$broadcastActionOverlayChanged$4(ILjava/lang/String;)V

    return-void
.end method
