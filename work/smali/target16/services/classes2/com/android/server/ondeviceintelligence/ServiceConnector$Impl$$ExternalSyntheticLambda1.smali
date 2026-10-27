.class public final synthetic Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;

.field public final synthetic f$1:Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;

    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;

    invoke-static {v0, p0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->$r8$lambda$NuP-oIJOEmTDqI-HAQQcjEZHTtc(Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;)V

    return-void
.end method
