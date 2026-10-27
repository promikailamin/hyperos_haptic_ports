.class public final synthetic Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/os/IResultReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/os/IResultReceiver;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/os/IResultReceiver;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/os/IResultReceiver;

    check-cast p1, Landroid/service/autofill/IAutoFillService;

    invoke-static {v0, p1}, Lcom/android/server/autofill/RemoteFillService;->lambda$onSavedPasswordCountRequest$6(Lcom/android/internal/os/IResultReceiver;Landroid/service/autofill/IAutoFillService;)V

    return-void
.end method
