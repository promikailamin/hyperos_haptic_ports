.class interface abstract Landroid/app/SystemServiceRegistryJuiStub;
.super Ljava/lang/Object;
.source "SystemServiceRegistryJuiStub.java"


# direct methods
.method public static blacklist getInstance()Landroid/app/SystemServiceRegistryJuiStub;
    .registers 1

    .line 11
    const-class v0, Landroid/app/SystemServiceRegistryJuiStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SystemServiceRegistryJuiStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist registerServices()V
.end method
