.class interface abstract Landroid/app/SystemServiceRegistryStub;
.super Ljava/lang/Object;
.source "SystemServiceRegistryStub.java"


# direct methods
.method public static blacklist get()Landroid/app/SystemServiceRegistryStub;
    .registers 1

    .line 11
    const-class v0, Landroid/app/SystemServiceRegistryStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SystemServiceRegistryStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist registerMiuiServices()V
.end method
