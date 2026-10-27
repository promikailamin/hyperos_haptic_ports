.class public final synthetic Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {p0, p1, p2}, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor;->$r8$lambda$MIfMqIIUNsj5GpLM5Ku1ntzQhyU(Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
