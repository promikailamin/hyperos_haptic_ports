.class public interface abstract Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;
.super Ljava/lang/Object;
.source "FingerprintServiceStub.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FingerprintServiceStub"


# direct methods
.method public static getInstance()Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;
    .registers 1

    .line 19
    const-class v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;

    return-object v0
.end method


# virtual methods
.method public abstract clearSavedAuthenResult()V
.end method

.method public getIdentifier()Landroid/hardware/fingerprint/Fingerprint;
    .registers 2

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMiuiGroupId(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getOpId()J
    .registers 3

    .line 33
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getOpPackageName()Ljava/lang/String;
    .registers 2

    .line 37
    const-string v0, ""

    return-object v0
.end method

.method public getToken()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public init()V
    .registers 3

    .line 23
    const-string v0, "FingerprintServiceStub"

    const-string v1, "Init FingerprintServiceStub"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void
.end method

.method public isFingerDataSharer(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 53
    const-string v0, "FingerprintServiceStub"

    const-string v1, "Oops!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public isScreenOn(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public abstract saveAuthenResultLocal(Landroid/hardware/fingerprint/Fingerprint;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/fingerprint/Fingerprint;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract saveAuthenticateConfig(JLjava/lang/String;)V
.end method
