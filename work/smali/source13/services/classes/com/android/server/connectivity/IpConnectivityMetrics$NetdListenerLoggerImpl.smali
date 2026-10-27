.class public Lcom/android/server/connectivity/IpConnectivityMetrics$NetdListenerLoggerImpl;
.super Ljava/lang/Object;
.source "IpConnectivityMetrics.java"

# interfaces
.implements Lcom/android/server/connectivity/IpConnectivityMetrics$NetdListenerLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/IpConnectivityMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetdListenerLoggerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/IpConnectivityMetrics;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/connectivity/IpConnectivityMetrics;

    .line 424
    iput-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$NetdListenerLoggerImpl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public netdEventListenerService()Lcom/android/server/connectivity/NetdEventListenerService;
    .registers 2

    .line 426
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$NetdListenerLoggerImpl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    iget-object v0, v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    return-object v0
.end method
