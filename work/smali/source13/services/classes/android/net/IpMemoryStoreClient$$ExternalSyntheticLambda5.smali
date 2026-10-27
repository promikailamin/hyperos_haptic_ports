.class public final synthetic Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/IpMemoryStoreClient$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/net/ipmemorystore/OnL2KeyResponseListener;


# direct methods
.method public synthetic constructor <init>(Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda5;->f$0:Landroid/net/ipmemorystore/OnL2KeyResponseListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda5;->f$0:Landroid/net/ipmemorystore/OnL2KeyResponseListener;

    invoke-static {v0}, Landroid/net/IpMemoryStoreClient;->lambda$findL2Key$8(Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V

    return-void
.end method
