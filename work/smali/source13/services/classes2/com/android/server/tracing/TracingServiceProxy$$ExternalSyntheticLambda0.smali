.class public final synthetic Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Landroid/tracing/TraceReportParams;


# direct methods
.method public synthetic constructor <init>(Landroid/tracing/TraceReportParams;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda0;->f$0:Landroid/tracing/TraceReportParams;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda0;->f$0:Landroid/tracing/TraceReportParams;

    check-cast p1, Landroid/os/IMessenger;

    invoke-static {v0, p1}, Lcom/android/server/tracing/TracingServiceProxy;->lambda$reportTrace$0(Landroid/tracing/TraceReportParams;Landroid/os/IMessenger;)V

    return-void
.end method
