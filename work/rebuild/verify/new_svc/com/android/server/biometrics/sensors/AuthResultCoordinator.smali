.class public Lcom/android/server/biometrics/sensors/AuthResultCoordinator;
.super Ljava/lang/Object;
.source "AuthResultCoordinator.java"


# instance fields
.field public final mAuthenticatorState:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$F4O_7Sg0xc2d3wWJcis0olsGlTg(I)Ljava/lang/Integer;
    .registers 1

    or-int/lit8 p0, p0, 0x4

    .line 84
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hhYhR-XEk11dcd5V2TvKvgQkU1E(I)Ljava/lang/Integer;
    .registers 1

    or-int/lit8 p0, p0, 0x1

    .line 92
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$l-YKceN9ZZ9AYmtDelUOK9ELgro(I)Ljava/lang/Integer;
    .registers 1

    or-int/lit8 p0, p0, 0x2

    .line 99
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;->mAuthenticatorState:Ljava/util/Map;

    const/16 p0, 0xf

    .line 56
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0xff

    .line 57
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0xfff

    .line 58
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public authenticatedFor(I)V
    .registers 3

    const/16 v0, 0xf

    if-ne p1, v0, :cond_c

    .line 84
    new-instance v0, Lcom/android/server/biometrics/sensors/AuthResultCoordinator$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/AuthResultCoordinator$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;->updateState(ILjava/util/function/IntFunction;)V

    :cond_c
    return-void
.end method

.method public final getResult()Ljava/util/Map;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;->mAuthenticatorState:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public lockOutTimed(I)V
    .registers 3

    .line 99
    new-instance v0, Lcom/android/server/biometrics/sensors/AuthResultCoordinator$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/AuthResultCoordinator$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;->updateState(ILjava/util/function/IntFunction;)V

    return-void
.end method

.method public lockedOutFor(I)V
    .registers 3

    .line 92
    new-instance v0, Lcom/android/server/biometrics/sensors/AuthResultCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/AuthResultCoordinator$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;->updateState(ILjava/util/function/IntFunction;)V

    return-void
.end method

.method public final updateState(ILjava/util/function/IntFunction;)V
    .registers 9

    const/16 v0, 0xfff

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xf

    .line 64
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eq p1, v4, :cond_19

    if-eq p1, v2, :cond_30

    if-eq p1, v0, :cond_47

    return-void

    :cond_19
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;->mAuthenticatorState:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;->mAuthenticatorState:Ljava/util/Map;

    .line 65
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 64
    invoke-interface {p1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_30
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;->mAuthenticatorState:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;->mAuthenticatorState:Ljava/util/Map;

    .line 69
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 68
    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_47
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;->mAuthenticatorState:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;->mAuthenticatorState:Ljava/util/Map;

    .line 74
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 73
    invoke-interface {p2, p0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 72
    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
