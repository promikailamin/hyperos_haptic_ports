.class Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
.super Ljava/lang/Exception;
.source "SoundTriggerHw2Compat.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 549
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public throwAsRecoverableException()Lcom/android/server/soundtrigger_middleware/RecoverableException;
    .registers 3

    .line 559
    new-instance v0, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    const/4 v1, 0x2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(ILjava/lang/String;)V

    throw v0
.end method
