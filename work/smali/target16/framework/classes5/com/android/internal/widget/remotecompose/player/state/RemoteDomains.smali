.class public final enum Lcom/android/internal/widget/remotecompose/player/state/RemoteDomains;
.super Ljava/lang/Enum;
.source "RemoteDomains.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/widget/remotecompose/player/state/RemoteDomains;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/widget/remotecompose/player/state/RemoteDomains;

.field public static final enum blacklist SYSTEM:Lcom/android/internal/widget/remotecompose/player/state/RemoteDomains;

.field public static final enum blacklist USER:Lcom/android/internal/widget/remotecompose/player/state/RemoteDomains;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/widget/remotecompose/player/state/RemoteDomains;
    .registers 2

    .line 19
    sget-object v0, Lcom/android/internal/widget/remotecompose/player/state/RemoteDomains;->USER:Lcom/android/internal/widget/remotecompose/player/state/RemoteDomains;

    sget-object v1, Lcom/android/internal/widget/remotecompose/player/state/RemoteDomains;->SYSTEM:Lcom/android/internal/widget/remotecompose/player/state/RemoteDomains;

    filled-new-array {v0, v1}, [Lcom/android/internal/widget/remotecompose/player/state/RemoteDomains;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 20
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/state/RemoteDomains;

    const-string v1, "USER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/player/state/RemoteDomains;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/player/state/RemoteDomains;->USER:Lcom/android/internal/widget/remotecompose/player/state/RemoteDomains;

    .line 21
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/state/RemoteDomains;

    const-string v1, "SYSTEM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/player/state/RemoteDomains;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/player/state/RemoteDomains;->SYSTEM:Lcom/android/internal/widget/remotecompose/player/state/RemoteDomains;

    .line 19
    invoke-static {}, Lcom/android/internal/widget/remotecompose/player/state/RemoteDomains;->$values()[Lcom/android/internal/widget/remotecompose/player/state/RemoteDomains;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/remotecompose/player/state/RemoteDomains;->$VALUES:[Lcom/android/internal/widget/remotecompose/player/state/RemoteDomains;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/player/state/RemoteDomains;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 19
    const-class v0, Lcom/android/internal/widget/remotecompose/player/state/RemoteDomains;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/player/state/RemoteDomains;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/widget/remotecompose/player/state/RemoteDomains;
    .registers 1

    .line 19
    sget-object v0, Lcom/android/internal/widget/remotecompose/player/state/RemoteDomains;->$VALUES:[Lcom/android/internal/widget/remotecompose/player/state/RemoteDomains;

    invoke-virtual {v0}, [Lcom/android/internal/widget/remotecompose/player/state/RemoteDomains;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/widget/remotecompose/player/state/RemoteDomains;

    return-object v0
.end method
