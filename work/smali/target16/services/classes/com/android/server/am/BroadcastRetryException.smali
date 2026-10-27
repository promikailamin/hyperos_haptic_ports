.class public Lcom/android/server/am/BroadcastRetryException;
.super Lcom/android/server/am/BroadcastDeliveryFailedException;
.source "BroadcastRetryException.java"


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastDeliveryFailedException;-><init>(Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastDeliveryFailedException;-><init>(Ljava/lang/String;)V

    return-void
.end method
