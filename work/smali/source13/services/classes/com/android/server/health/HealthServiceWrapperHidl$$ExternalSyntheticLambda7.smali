.class public final synthetic Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/health/HealthServiceWrapperHidl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/health/HealthServiceWrapperHidl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/health/HealthServiceWrapperHidl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/health/HealthServiceWrapperHidl;

    invoke-virtual {v0}, Lcom/android/server/health/HealthServiceWrapperHidl;->lambda$scheduleUpdate$6$com-android-server-health-HealthServiceWrapperHidl()V

    return-void
.end method
