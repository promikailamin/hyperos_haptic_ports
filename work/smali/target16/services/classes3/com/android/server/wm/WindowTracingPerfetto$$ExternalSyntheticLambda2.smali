.class public final synthetic Lcom/android/server/wm/WindowTracingPerfetto$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/tracing/perfetto/TraceFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowTracingPerfetto;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowTracingPerfetto;ZLjava/util/ArrayList;ZLjava/lang/String;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowTracingPerfetto$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/WindowTracingPerfetto;

    iput-boolean p2, p0, Lcom/android/server/wm/WindowTracingPerfetto$$ExternalSyntheticLambda2;->f$1:Z

    iput-object p3, p0, Lcom/android/server/wm/WindowTracingPerfetto$$ExternalSyntheticLambda2;->f$2:Ljava/util/ArrayList;

    iput-boolean p4, p0, Lcom/android/server/wm/WindowTracingPerfetto$$ExternalSyntheticLambda2;->f$3:Z

    iput-object p5, p0, Lcom/android/server/wm/WindowTracingPerfetto$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final trace(Landroid/tracing/perfetto/TracingContext;)V
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/WindowTracingPerfetto$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/WindowTracingPerfetto;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowTracingPerfetto$$ExternalSyntheticLambda2;->f$1:Z

    iget-object v2, p0, Lcom/android/server/wm/WindowTracingPerfetto$$ExternalSyntheticLambda2;->f$2:Ljava/util/ArrayList;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowTracingPerfetto$$ExternalSyntheticLambda2;->f$3:Z

    iget-object v4, p0, Lcom/android/server/wm/WindowTracingPerfetto$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/WindowTracingPerfetto;->$r8$lambda$hUckbCMkSumpvgl54TwyKSZQA-g(Lcom/android/server/wm/WindowTracingPerfetto;ZLjava/util/ArrayList;ZLjava/lang/String;Landroid/tracing/perfetto/TracingContext;)V

    return-void
.end method
