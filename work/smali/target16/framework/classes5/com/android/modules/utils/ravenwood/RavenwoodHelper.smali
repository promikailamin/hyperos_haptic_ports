.class public Lcom/android/modules/utils/ravenwood/RavenwoodHelper;
.super Ljava/lang/Object;
.source "RavenwoodHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/modules/utils/ravenwood/RavenwoodHelper$RavenwoodInternal;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static blacklist getRavenwoodAconfigStoragePath()Ljava/lang/String;
    .registers 2

    .line 68
    invoke-static {}, Lcom/android/modules/utils/ravenwood/RavenwoodHelper;->throwIfCalledOnDevice()V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/modules/utils/ravenwood/RavenwoodHelper;->getRavenwoodRuntimePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/aconfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getRavenwoodRuntimePath()Ljava/lang/String;
    .registers 2

    .line 56
    invoke-static {}, Lcom/android/modules/utils/ravenwood/RavenwoodHelper;->throwIfCalledOnDevice()V

    .line 57
    nop

    .line 58
    const-string v0, "android.ravenwood.runtime_path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string v1, "Ravenwood runtime path not set. (called outside of Ravenwood?)"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist isRunningOnRavenwood()Z
    .registers 1

    .line 47
    const-string v0, "android.ravenwood.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static blacklist throwIfCalledOnDevice()V
    .registers 2

    .line 29
    invoke-static {}, Lcom/android/modules/utils/ravenwood/RavenwoodHelper;->isRunningOnRavenwood()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 32
    return-void

    .line 30
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method can only be used on Ravenwood"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
