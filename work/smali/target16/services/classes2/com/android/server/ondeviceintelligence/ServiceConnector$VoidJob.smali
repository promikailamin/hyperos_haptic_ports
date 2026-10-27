.class public interface abstract Lcom/android/server/ondeviceintelligence/ServiceConnector$VoidJob;
.super Ljava/lang/Object;
.source "ServiceConnector.java"

# interfaces
.implements Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 191
    invoke-interface {p0, p1}, Lcom/android/server/ondeviceintelligence/ServiceConnector$VoidJob;->run(Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public run(Ljava/lang/Object;)Ljava/lang/Void;
    .registers 2

    .line 199
    invoke-interface {p0, p1}, Lcom/android/server/ondeviceintelligence/ServiceConnector$VoidJob;->runNoResult(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract runNoResult(Ljava/lang/Object;)V
.end method
