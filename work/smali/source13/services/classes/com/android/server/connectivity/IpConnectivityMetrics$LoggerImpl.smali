.class public Lcom/android/server/connectivity/IpConnectivityMetrics$LoggerImpl;
.super Ljava/lang/Object;
.source "IpConnectivityMetrics.java"

# interfaces
.implements Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/IpConnectivityMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoggerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/IpConnectivityMetrics;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/connectivity/IpConnectivityMetrics;

    .line 411
    iput-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$LoggerImpl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public defaultNetworkMetrics()Lcom/android/server/connectivity/DefaultNetworkMetrics;
    .registers 2

    .line 413
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$LoggerImpl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    iget-object v0, v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDefaultNetworkMetrics:Lcom/android/server/connectivity/DefaultNetworkMetrics;

    return-object v0
.end method
