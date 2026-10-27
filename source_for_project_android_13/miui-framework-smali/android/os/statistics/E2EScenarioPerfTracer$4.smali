.class Landroid/os/statistics/E2EScenarioPerfTracer$4;
.super Ljava/lang/Object;
.source "E2EScenarioPerfTracer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/statistics/E2EScenarioPerfTracer;->finishScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$payload:Landroid/os/statistics/E2EScenarioPayload;

.field final synthetic blacklist val$perfShielder:Lcom/android/internal/app/IPerfShielder;

.field final synthetic blacklist val$scenario:Landroid/os/statistics/E2EScenario;

.field final synthetic blacklist val$tag:Ljava/lang/String;

.field final synthetic blacklist val$tid:I

.field final synthetic blacklist val$uptimeMs:J


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/IPerfShielder;Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;IJ)V
    .registers 8

    .line 168
    iput-object p1, p0, Landroid/os/statistics/E2EScenarioPerfTracer$4;->val$perfShielder:Lcom/android/internal/app/IPerfShielder;

    iput-object p2, p0, Landroid/os/statistics/E2EScenarioPerfTracer$4;->val$scenario:Landroid/os/statistics/E2EScenario;

    iput-object p3, p0, Landroid/os/statistics/E2EScenarioPerfTracer$4;->val$tag:Ljava/lang/String;

    iput-object p4, p0, Landroid/os/statistics/E2EScenarioPerfTracer$4;->val$payload:Landroid/os/statistics/E2EScenarioPayload;

    iput p5, p0, Landroid/os/statistics/E2EScenarioPerfTracer$4;->val$tid:I

    iput-wide p6, p0, Landroid/os/statistics/E2EScenarioPerfTracer$4;->val$uptimeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 8

    .line 172
    :try_start_0
    iget-object v0, p0, Landroid/os/statistics/E2EScenarioPerfTracer$4;->val$perfShielder:Lcom/android/internal/app/IPerfShielder;

    iget-object v1, p0, Landroid/os/statistics/E2EScenarioPerfTracer$4;->val$scenario:Landroid/os/statistics/E2EScenario;

    iget-object v2, p0, Landroid/os/statistics/E2EScenarioPerfTracer$4;->val$tag:Ljava/lang/String;

    iget-object v3, p0, Landroid/os/statistics/E2EScenarioPerfTracer$4;->val$payload:Landroid/os/statistics/E2EScenarioPayload;

    iget v4, p0, Landroid/os/statistics/E2EScenarioPerfTracer$4;->val$tid:I

    iget-wide v5, p0, Landroid/os/statistics/E2EScenarioPerfTracer$4;->val$uptimeMs:J

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IPerfShielder;->finishMatchingScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;IJ)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 174
    goto :goto_11

    .line 173
    :catch_10
    move-exception v0

    .line 175
    :goto_11
    return-void
.end method
