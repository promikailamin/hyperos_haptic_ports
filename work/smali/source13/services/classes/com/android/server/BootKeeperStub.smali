.class public interface abstract Lcom/android/server/BootKeeperStub;
.super Ljava/lang/Object;
.source "BootKeeperStub.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BootKeeperStub"


# direct methods
.method public static getInstance()Lcom/android/server/BootKeeperStub;
    .registers 1

    .line 13
    const-class v0, Lcom/android/server/BootKeeperStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/BootKeeperStub;

    return-object v0
.end method


# virtual methods
.method public abstract afterBoot(Landroid/content/Context;)V
.end method

.method public abstract beforeBoot()V
.end method

.method public init()V
    .registers 3

    .line 17
    const-string v0, "BootKeeperStub"

    const-string v1, "Can\'t find BootKeeperStubImpl"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method
